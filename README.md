# Chicago ASCII Art Scripts

![Screenshot of script output](/screenshots/screenshot0.png)

Some bash scripts that echo ASCII art of the Chicago flag or skyline in the horizontal center of the terminal.

(Technically might not be "ASCII" art since they use Unicode characters and ANSI escape sequences?)

## Usage

To echo the ASCII art in terminal, just run one of the scripts. E.g.:

```bash
sh ~/.chicago-flag/flag.sh
```

You can also source the file in a bash script:

```
source ~/.chicago-ascii/flag.sh
```

## ASCII Art Scripts

- `flag.sh`: The Chicago flag
- `skyline.sh`: The Chicago skyline (with some artistic liberties taken)
- `skyline-condensed.sh`: A narrower, 2 color version of `skyline.sh`

## TODO:

- Document custom color arg for `skyline-condensed.sh` w/ new screenshots
- Get rid of `skyline.sh` since it was basically just a jumping off point for condensed version

## License

Copyright (c) 2021 Connor de la Cruz

This project is licensed under the terms of the MIT license. 

