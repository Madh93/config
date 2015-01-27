# Config files

## Sistema
- **SO:** Xubuntu 14.04 (x86)
- **Kernel:** 3.13.0-34-generic
- **Modelo:** Toshiba Satellite A210-13F
- **CPU:** AMD Turion 64 X2 Mobile Technology TL-56 @ 1.8GHz
- **GPU:** AMD/ATI RS690M [Radeon Xpress 1200]
- **RAM:** 1380MB

## Aplicaciones

Aplicaciones fuera de los repositorios.

**Chrome**
```sh
$ wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
$ sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
$ sudo apt-get update && sudo apt-get install google-chrome-stable
```
**Telegram**
- [Descargar](https://desktop.telegram.org/)

**Sublime Text 3**
- [Descargar](http://www.sublimetext.com/3)

**LibreOffice**
```sh
$ sudo add-apt-repository ppa:libreoffice/ppa
$ sudo apt-get update && sudo apt-get install libreoffice-l10n-es libreoffice-gnome myspell-es
```
**Spotify**
```sh
$ sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list.d/spotify.list'
$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
$ sudo apt-get update && sudo apt-get install spotify-client
```
**Plank**
```sh
$ sudo add-apt-repository ppa:ricotz/docky
$ sudo apt-get update && sudo apt-get install plank
```

## Otros

## Problemas
