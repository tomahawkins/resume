.PHONY: all
all: resume.html

resume.html: resume.md
	markdown resume.md > resume.html

.PHONY: clean
clean:
	rm resume.html

