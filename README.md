# Config files

## Sistema
- **SO:** Xubuntu 14.04 (x86)
- **Kernel:** 3.13.0-34-generic

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
**Grub Customizer**
```sh
$ sudo add-apt-repository ppa:danielrichter2007/grub-customizer
$ sudo apt-get update && sudo apt-get install grub-customizer
```
**Ruby(RVM)**
- [Seguir pasos](https://gorails.com/setup/ubuntu/14.04)
 
**Java**
```sh
$ sudo add-apt-repository ppa:webupd8team/java
$ sudo apt-get update && sudo apt-get install oracle-java8-installer
$ sudo apt-get install oracle-java8-set-default
```

## Otros

## Problemas

**Spotify no reproduce archivos locales**
```sh
$ sudo wget https://github.com/Madh93/config/raw/master/spotify/libavcodec.so.53 -O /usr/lib/i386-linux-gnu/libavcodec.so.53
$ sudo wget https://github.com/Madh93/config/raw/master/spotify/libavformat.so.53 -O /usr/lib/i386-linux-gnu/libavformat.so.53
$ sudo wget https://github.com/Madh93/config/raw/master/spotify/libavutil.so.51 -O /usr/lib/i386-linux-gnu/libavutil.so.51
$ sudo ldconfig
$ sudo apt-get install ubuntu-restricted-extras
```
