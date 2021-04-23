all:
	cat *_*.md > cheatsheet.md
	pandoc -o cheatsheet.pdf cheatsheet.md
