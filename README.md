# Chicago ASCII Art Scripts

![Screenshot of script output](/screenshots/screenshot0.png)

Some bash scripts that echo ASCII art of the Chicago flag or skyline in the horizontal center of the terminal.

(Technically might not be "ASCII" art since they use Unicode characters and ANSI escape sequences?)

## Usage

To echo the ASCII art in terminal, just run one of the scripts. E.g.:

```
~/.chicago-flag/flag.sh
```

You can also source the file in a bash script:

```
. ~/.chicago-ascii/flag.sh
```

### Custom Colors for `skyline.sh`

**TODO: primary screenshot**

`skyline.sh` takes up to 6 positional arguments for custom colors. Each argument must be a valid terminal foreground color code that can be passed to `tput setaf`.

**TODO: Examples**


## ASCII Art Scripts

- `flag.sh`: The Chicago flag
- `skyline.sh`: Chicago skyline (supports custom colors via arguments!)

**Other scripts:**

- `skyline-condensed.sh`: *Legacy* `skyline-condensed.sh` is now `skyline.sh`

## License

Copyright (c) 2021 Connor de la Cruz

This project is licensed under the terms of the MIT license. 

