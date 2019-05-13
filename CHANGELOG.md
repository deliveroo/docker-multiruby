# Changelog

## 2019.05.10

*First version built by CircleCI*

Include the last two versions of Ruby in each supported major/minor series.
* 2.4.5 & 2.4.6
* 2.5.4 & 2.5.5
* 2.6.2 & 2.6.3

## latest

*Old version left for backwards compatibility.*

I tried to reconstruct an earlier version, but the would not build due to bitrot.

Older versions of Alpine cause rbenv to fail to download Ruby packages. Also, some
versions of Ruby like 2.4.0 and 2.4.1 fail to compile on some versions of Alpine.

This version includes:- 
* 2.4.0
* 2.4.1
* 2.4.4
* 2.5.1
* 2.5.3
* 2.6.1
