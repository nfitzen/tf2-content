<!-- SPDX-License-Identifier: MIT -->
<!-- Copyright (C) 2018-2021 Nathaniel Fitzenrider <https://github.com/nfitzen> -->


# nfitzen's Custom Scripts

These are some
[custom scripts](https://github.com/nfitzen/tf2-content/releases/latest) made
by me, while borrowing some concepts from GameBanana.
[Website](https://nathaniel.fitzenrider.com/tf2-content).

[Usage](#usage)

## Build info

Requires a [custom 7zSFX module](https://github.com/OlegScherbakov/7zSFX)
(for making SFX).

You need [7-Zip](https://www.7-zip.org/).
(The compiler script downloads a cmd-only version automatically if not in path.)

That's it!


## Usage

If you want to (hopefully) decrease your client-server latency
(less facestabs yay), you may run
`exec apply_enhancements` in console.
*Use ONLY with good internet!*

Edit keybinds in `tf/custom/ncustomcontent/default_keybinds.cfg`.

### Keybinds used

|        Key         |             Description              |  Default Keybind  |
| :----------------- | :----------------------------------- | ----------------: |
| `<toggleScript>`   | toggles various functions in script. | <kbd>SHIFT</kbd>  |
| `<attack>`         | button to attack                     | <kbd>MOUSE1</kbd> |
| `<attack2>`        | button for secondary attack          | <kbd>MOUSE2</kbd> |
| `<sentry replace>` | button for rebuilding a Sentry       | <kbd>MOUSE2</kbd> |
| `<teleport>`       | Eureka Effect teleport               |   <kbd>B</kbd>    |

### All Classes

1. Press <kbd>Q</kbd> to zoom in (if you don't like that and want the default again head to default_keybinds.cfg)

### Spy

#### Stabsap Script
 - **HIGHLY BUGGY!**

1. Hold `<toggleScript>` and `<attack>` to stab (hopefully an Engineer) and immediately pull out your sapper.

2. Hold `<attack>` and `<toggleScript>` to keep sapping. Let go of `<attack>` to stop and then let go of `<toggleScript>`

### Engineer

#### Replace Sentry:

1. Hold `<toggleScript>` and `<sentry replace>` to destroy your current sentry and rebuild another
    * If you wish to change `<sentry replace>` from <kbd>MOUSE2</kbd>, you may use the individual ones in default_keybinds.cfg
    * If you want the cmds here they are:
        * `bind KEY sentryDestroyAndBuild` (non-togglable (`<toggleScript>` isn't used to toggle it.))
        * `bind KEY +sentryReBuild` (togglable)

#### Eureka Effect Script:

1. Press `<teleport>` to teleport to spawn

   * Hold `<toggleScript>` key and press `<teleport>` to teleport to your tele exit

### Soldier

#### Rocket Jump Script:

1. `<toggleScript>` + `<attack>` = rocket jump

## Copyright

Copyright &copy; 2018-2021 [Nathaniel Fitzenrider](https://github.com/nfitzen)

Scripts are licensed under the [Expat/MIT License](LICENSE).
Some trivial files are licensed under [CC0 1.0].
See the license file for a proper copyright notice if viewing in plaintext.

[tr_walkway](https://gamebanana.com/mods/74812)
&copy; 2009 by Washipato and Wiseguy149, licensed under [CC BY-NC-ND 4.0].

This project is [REUSE](https://reuse.software/) compliant:
see individual files or their corresponding `.license` files for more copyright
information, and see the [`LICENSES`](LICENSES/) folder for full license texts.

[CC BY-NC-ND 4.0]: https://creativecommons.org/licenses/by-nc-nd/4.0/ "Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International"
[CC0 1.0]: https://creativecommons.org/publicdomain/zero/1.0/
