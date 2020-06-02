# nfitzen's Custom Scripts

These are some [custom scripts](https://github.com/nfitzen/tf2-content/releases/latest) made by @nfitzen, while borrowing some concepts from GameBanana.
[Website](https://nathaniel.fitzenrider.com/tf2-content)

[Usage](#usage)

## Build info

Requires a [custom 7zSFX module](https://github.com/OlegScherbakov/7zSFX) (for making SFX)

You need [7-Zip](https://www.7-zip.org/) (the compiler script downloads a cmd-only ver. automatically if not in path)

That's it!


## Usage

If you want to (hopefully) decrease your client-server latency
(less facestabs yay), you may run
`exec apply_enhancements` in console.
*Use ONLY with good internet!*

Edit keybinds in `tf/custom/ncustomcontent/default_keybinds.cfg`.

### Keybinds used

|        Key         |             Description              |  Default Keybind |
| :----------------- | :----------------------------------- | ---------------: |
| \<toggleScript\>   | toggles various functions in script. |        SHIFT     |
| \<attack\>         | button to attack                     |        MOUSE1    |
| \<attack2\>        | button for secondary attack          |        MOUSE2    |
| \<sentry replace\> | button for rebuilding a Sentry       |        MOUSE2    |
| \<teleport\>       | Eureka Effect teleport               |        B         |

### All Classes

1. Press Q to zoom in (if you don't like that and want the default again head to default_keybinds.cfg)

### Spy

#### Stabsap Script
 - **HIGHLY BUGGY!**

1. Hold <toggleScript> and <attack> to stab (hopefully an Engineer) and immediately pull out your sapper.

2. Hold <attack> and <toggleScript> to keep sapping. Let go of <attack> to stop and then let go of <toggleScript>

### Engineer

#### Replace Sentry:

1. Hold <toggleScript> and <sentry replace> to destroy your current sentry and rebuild another
    * If you wish to change <sentry replace> from MOUSE2, you may use the individual ones in default_keybinds.cfg
    * If you want the cmds here they are:
        * `bind KEY sentryDestroyAndBuild` (non-togglable (<toggleScript> isn't used to toggle it.))
        * `bind KEY +sentryReBuild` (togglable)

#### Eureka Effect Script:

1. Press <teleport> to teleport to spawn

   * Hold <toggleScript> key and press <teleport> to teleport to your tele exit

### Soldier

#### Rocket Jump Script:

1. <toggleScript> + <attack> = rocket jump
