FILE_NAME = NJUSE-Beamer-Template
TEX_FILE = "$(FILE_NAME).tex"
# PDF_FILE = $(FILE_NAME).pdf

.PHONY: all clean

all: $(TEX_FILE:.tex=.pdf)

$(TEX_FILE:.tex=.pdf): $(TEX_FILE)
	xelatex -shell-escape $(TEX_FILE)

clean:
	rm -f $(TEX_FILE:.tex=.aux) $(TEX_FILE:.tex=.log) $(TEX_FILE:.tex=.nav) $(TEX_FILE:.tex=.out) $(TEX_FILE:.tex=.snm) $(TEX_FILE:.tex=.toc) $(TEX_FILE:.tex=.vrb) $(TEX_FILE:.tex=.pdf)
