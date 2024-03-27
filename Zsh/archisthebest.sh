#!/usr/bin/env -S zsh -f 
setopt extendedglob
print -- $(echoti setaf 2) ${$(<<<${${${(@j: :)${(@s:_:)${:-What_Linux_is_the_best?}}}/* (#b)([A-Z]i)/Arch $match[1]}} tr '?' '!')} $terminfo[sgr0]
