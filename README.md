# french-accent-mods
Adds modifer keys for accents

## Installation
- Install [autohotkey](https://www.autohotkey.com/)
- Grab the [accents.ahk](accents.ahk) autohotkey script and run it 

## Usage
The script uses the numbers 1-5 as modifers for the accents. The mapping is as follows:

|Number|Accent|Example|
|-|-|-|
|1|aigu|é|
|2|grave|è|
|3|circonflexe|ê|
|4|tréma|ï|
|5|cedilla|ç|

The cedilla modifer also allows you to type the French [ligature](https://en.wikipedia.org/wiki/Ligature_(writing)) characters `œ` and `æ`.

The F1-F5 keys function apply the same modification but as a toggle rather than a modifier (think `shift` vs `CapsLock`).

All the functionality is gated by a toggle `F6` (off by default) so that the normal use of number and function keys is not lost.

## Motivation
There are several ways to type French characters:
- Alt codes (this was not working for me)
- Changing keyboard layout to BEPO or AZERTY
- https://github.com/SamHocevar/wincompose
- Extended Keyboar/International Keyboard (misses the ligature characters)
- http://marin.jb.free.fr/qwerty-fr/
- on macOS - press and hold a key

I'm no autohotkey whizz so this could almost certainly be improved upon.
