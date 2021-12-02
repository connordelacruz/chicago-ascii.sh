# Chicago ASCII Art Scripts

![Screenshot of script output](../assets/screenshots/chicago-ascii.png?raw=true)

Some bash scripts that echo ASCII art of the Chicago flag or skyline in the horizontal center of the terminal.

(Technically might not be "ASCII" art since they use Unicode characters and ANSI escape sequences?)


## ASCII Art Scripts

- `flag.sh`: The Chicago flag
- `skyline.sh`: Chicago skyline (supports custom colors via arguments!)

**Other scripts:**

- `skyline-condensed.sh`: *Legacy* `skyline-condensed.sh` is now `skyline.sh`


## Usage

To echo the ASCII art in terminal, just run one of the scripts. E.g.:

```
~/.chicago-flag/flag.sh
```

### Custom Colors for `skyline.sh`

![Custom skyline.sh colors example](../assets/screenshots/skyline-args-preview.png?raw=true)

`skyline.sh` takes up to 6 positional arguments for custom colors. Each argument must be a valid terminal foreground color code that can be passed to `tput setaf`.

**Examples:**

![Different arg combinations for skyline.sh](../assets/screenshots/skyline-color-args.png?raw=true)


## License

Copyright (c) 2021 Connor de la Cruz

This project is licensed under the terms of the MIT license. 

