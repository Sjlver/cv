all: cv.html

cv.html: cv.md template.html Makefile

%.html: %.md
	pandoc --standalone \
	    --template template.html \
	    --section-divs \
	    --smart --to html5 -o $@ $<

cv_final.pdf: cv.pdf cv_data.txt
	pdftk cv.pdf update_info_utf8 cv_data.txt output $@ drop_xmp
