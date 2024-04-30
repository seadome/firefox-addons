# SPDX-FileCopyrightText: 2023-2024 Chris Montgomery <chmont@proton.me>
# SPDX-License-Identifier: GPL-3.0-or-later

###: <https://just.systems/man/en/>

owner := 'Chris Montgomery <chmont@proton.me>'
prj-root := justfile_directory()

default:
  @just --choose

src-dir := join(prj-root, "src")
idx-file := join(src-dir, "addons.json")
idx-tmp := idx-file + ".tmp"
target-file := join(src-dir, "addons.generated.nix")

_devshell-cmd COMMAND:
  nix develop -c {{ quote(COMMAND) }}

update:
  mozilla-addons-to-nix {{idx-file}} {{target-file}}

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
