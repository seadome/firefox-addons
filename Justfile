# SPDX-FileCopyrightText: 2023 Chris Montgomery <chris@cdom.io>
# SPDX-License-Identifier: GPL-3.0-or-later

###: <https://just.systems/man/en/>
###: <https://github.com/casey/just/blob/master/GRAMMAR.md>

# Load environment variables from the local `.env`
# set dotenv-load

owner := 'Chris Montgomery <chris@cdom.io>'
prj-root := justfile_directory()
# today := `date --iso-8601`

# default:
#   @just --unstable --list --unsorted --color=always | rg -v "    default"

# <https://just.systems/man/en/chapter_52.html?highlight=choose#selecting-recipes-to-run-with-an-interactive-chooser>
default:
  @just --choose

##: logging/feedback
icon-ok := '✔'
msg-ok := icon-ok + " OK"
msg-done := icon-ok + " Done"

###: GENERAL =====================================================================================

@update: _flake-update (_devshell-cmd "update-addons")

_flake-update:
  nix flake update

_devshell-cmd COMMAND:
  nix develop -c {{ quote(COMMAND) }}

# [fmt]:		Format files with treefmt
# fmt *FILES=prj-root:
#   treefmt --no-cache {{FILES}}


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
