# SPDX-FileCopyrightText: 2023-2024 Chris Montgomery <chmont@proton.me>
# SPDX-License-Identifier: GPL-3.0-or-later

###: <https://just.systems/man/en/>

owner := 'Chris Montgomery <chmont@proton.me>'
prj-root := justfile_directory()

default:
  @just --choose

src-dir := join(prj-root, "src")
manifest := join(src-dir, "addons.json")
manifest-tmp := manifest + ".tmp"
target-file := join(src-dir, "addons.generated.nix")

_devshell-cmd COMMAND:
  nix develop -c {{ quote(COMMAND) }}

fmt:
  fd -t f -e nix --exclude '*.generated.*' -X nixfmt
  biome format --write

alias add := add-addon
add-addon slug pname='': && update-addons
  cp {{manifest}} {{manifest-tmp}}
  cat {{manifest}} \
  | jq --arg slug {{quote(slug)}} --arg pname {{quote(pname)}} \
    '. + [({slug: $slug} + if ($pname != "") then {pname: $pname} else {} end)] | sort_by(.slug)' \
  > {{manifest-tmp}}
  mv {{manifest-tmp}} {{manifest}}

alias remove := remove-addon
remove-addon slug: && update-addons
  cp {{manifest}} {{manifest-tmp}}
  cat {{manifest}} \
  | jq --arg slug {{quote(slug)}} \
    'map(select(.slug != $slug))' \
    {{manifest}} \
  > {{manifest-tmp}}
  mv {{manifest-tmp}} {{manifest}}

update: && update-addons
  git pull
  nix flake update

update-addons:
  mozilla-addons-to-nix {{manifest}} {{target-file}}

slug-from-url url:
  trurl --json {{url}} \
  | jq -r '.[0].parts.path | split("/") | .[-2]'

###: LICENSING =====================================================================================

# [reuse]:		Annotate all plaintext note files with the documentation license
l-docs:
  fd --glob '**/*.{md,mdx,markdown,org}' -X \
    just l-cc {}

_annotate license +FILES:
  reuse annotate -l '{{license}}' -c '{{owner}}' \
    --template=compact --skip-existing {{FILES}}

# [reuse]:		License the specified files as GPL
l-gpl +FILES: (_annotate 'GPL-3.0-or-later' FILES)

# [reuse]:		License the specified files as GPL/MIT
# FIXME: colicensor should not be required
# l-dual colicensor +FILES: (_annotate 'GPL-3.0-or-later OR MIT' ('-c ' + quote(colicensor) + ' ' + FILES))

# [reuse]:		License the specified files as non-commercial docs
l-cc +FILES: (_annotate  'CC-BY-NC-SA-4.0' FILES)

# [reuse]:		Release the specified files to public domain
l-public-domain +FILES: (_annotate  'CC0-1.0' FILES)
