#!/bin/sh
#
# Write 'Love you, mom' on the image.

write() {
	convert metamask.png -gravity Center  -pointsize 30 \
		-annotate 0 'Love you, mom' metamask.png
}

write
