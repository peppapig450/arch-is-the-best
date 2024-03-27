#!/bin/sh
if [ -f ArchIsTheBest.hl ]; then
	hl ArchIsTheBest.hl
else
	haxe -hl ArchIsTheBest.hl -main ArchIsTheBest.hx && hl ArchIsTheBest.hl
fi
