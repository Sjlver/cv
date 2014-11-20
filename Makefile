all: cv.html

cv.html: cv.md template.html Makefile

%.html: %.md
	pandoc --standalone \
	    --template template.html \
	    --section-divs \
	    --smart --to html5 -o $@ $<
