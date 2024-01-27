# french-accent-mods
Adds modifer keys for accents

## Installation
- Install [autohotkey](https://www.autohotkey.com/)
- Grab the [accents.ahk](accents.ahk) autohotkey script and run it 

## Usage
The script uses the numbers 1-5 as modifers for the accents. The mapping is as follows:

|Accent|Mod Key|Toggle Key|a|e|i|o|u|c|
|-|-|-|-|-|-|-|-|-|
|aigu|1|F1|é|-|-|-|-|-|
|grave|2|F2|à|è|ì|ò|ù|-|
|circonflexe|3|F3|â|ê|ô|î|û|-|
|tréma|4|F4|ä|ë|ï|ö|ü|-|
|cedilla|5|F5|æ|-|»|œ|«|ç|

The cedilla modifer also allows you to type the French [ligature](https://en.wikipedia.org/wiki/Ligature_(writing)) characters `œ` and `æ`, and guillemet characters `« »`. Single guillemets `‹ ›` (sometimes used for quotes in quotes) are capital variations.

The F1-F5 keys function apply the same modification but as a toggle rather than a modifier (think `shift` vs `CapsLock`).

All the functionality is gated by a toggle `F6` (off by default) so that the normal use of number and other function keys is retrievable.

This is lightyears from a perfect system but it's a first attempt at something actually usable. I'm also not very familiar with Autohotkey so the quality of implementation leaves a lot to be desired.

## Motivation
The existing ways don't really work for me. Any method that makes you do finger gymnastics isn't going to work for normal speed typing.

## Alternatives
There are several ways to type French characters:

### Copy + Paste
- From the character map on your system
- From a website e.g. the [French Orthography](https://en.wikipedia.org/wiki/French_orthography) Wiki entry
- From existing text in local files
- Browser extensions

### Alt codes
- [Alt codes](https://sites.psu.edu/symbolcodes/windows/codealt/). This requires a keyboard with a numpad and is really cumbersome.

### French Keyboard
- Changing keyboard layout to BEPO or AZERTY. Learning a new layout is not ideal.

### Key remapping software
- Autohotkey (Windows)
- Karabiner (macOS)

### WinCompose
- [WinCompose](https://github.com/SamHocevar/wincompose). Intuitive key combinations for special characters. [Here's their cheatsheet](http://wincompose.info/doc/french/) for writing French characters. I wasn't a fan of how it worked out of the box. It's meant to be intuitive yet it's order sensitive i.e. ``a+` `` produces `ᴀ` whereas `` `+a`` produces `à`. 

### Augmented QWERTY layouts
At time of writing these could be installed on Windows by going to `Settings -> Time and Language -> Language` then under preferred languages clicking on e.g. `English (United Kingdom)` then clicking `Options -> Add a Keyboard` and selecting e.g. the extended keyboard. From there you can switch to it with `Super + Space`.

#### UK Extended
[Extended Keyboard/International Keyboard](https://en.wikipedia.org/wiki/British_and_American_keyboards#International_or_extended_keyboard_layouts). Aigu, grave, cedilla all easy with e.g. `alt_gr+e`, `` `+e ``, `alt_gr+c` respectively, however circumflex is really tricky: requires simultaneous `alt_gr+6` shortly followed by the letter. Not forgiving timing or precision wise. Trema is achieved the same way but with 2. Note that pressing all 3 simultaneously does not work. I actually couldn't figure out how to do it and had to resort to asking chatGPT. However I found the most consistent way was to slightly stagger the first two key presses, then hit the third. Unusable. Also lacks the ligature characters `æ,œ`.

#### US International  
The equivalent US layout is called the US International keyboard. It similarly lacks the ligature characters `æ,œ`.

#### Custom
[Microsoft Keyboard Layout Creator](https://www.microsoft.com/en-us/download/details.aspx?id=102134) (Windows) or [Ukelele](https://software.sil.org/ukelele/) (macoS) if you can be bothered.

There are also existing cross-platform layouts such as [qwerty-fr](http://marin.jb.free.fr/qwerty-fr/).

### Apple Accent Menu
On macOS press and hold a key to get a selection of accented variations which are then selected with a number.

### Thoughts
I'm convinced at this point that the most straightforward cross-platform solution would be at the hardware level. Both keymapping software such autohotkey and wincompose, and Keyboard layouts need to be developed per-platform, which is certainly doable but not ideal.
