# another inkscape-shortcut-manager

Yet another macOS implementation of [gillescastell's inkscape shortcut manager](https://github.com/gillescastel/inkscape-shortcut-manager/tree/master) for quickly drawing mathematical figures in [inkscape](https://inkscape.org). Mostly based off of [this guide](https://github.com/sleepymalc/VSCode-LaTeX-Inkscape) on setting up VSCode to take notes in LaTeX, but adjusted for vim and yabai. This implementation also allows for saving/inserting objects and styles (the VSCode one doesn't as of now).

[Karabiner-Elements](https://karabiner-elements.pqrs.org/) and [Hammerspoon](https://www.hammerspoon.org/) are used for keychords, inkscape's builtin shortcut bindings, for pretty much everything else. 

When saving and inserting objects or styles, [choose](https://github.com/chipsenkbeil/choose/tree/master) is invoked. The styles and objects are saved under `~/.config/inkscape/styles` and `~/.config/inkscape/objects` respectively.

![example_gif](https://github.com/sebastian-stubenvoll/another-inkscape-shortcut-manager/blob/main/example.gif)
