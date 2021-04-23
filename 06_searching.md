## Searching

### grep

*'global-regex-print: print lines that match patterns'*

**Syntax:** 

```grep [OPTIONS] PATTERNS [FILES]```

```command | grep [OPTIONS] PATTERNS```

```grep``` searches its input for strings matching a pattern and outputs lines containing such strings.
It can either be used to search files by passing them as arguments, or to search within a stream piped into ```grep```.
Therefore, it is one of the most useful and versatile commands.
Patterns can be (but don't have to be) written in quotes.

**Pattern Syntax:**

```grep``` supports different types of regular expressions that can be used as matching patterns:

```-E / --extended-regexp```

interpret patterns as extended regular expressions

```-F / --fixed-strings```

interpret patterns as fixed strings, not regular expressions

```-G / --basic-regexp```

interpret patterns as basic regular expressions *(default)*

```-P / --extended-regexp```

interpret patterns as Perl-compatible regular expressions

**Options:**

```-e / --regexp=PATTERN```

Specify a pattern to be searched for.
Can be used multiple times so ```grep``` can search for multiple patterns at once: ```grep -e PATTERN1 -e PATTERN2 file.txt```.
If only searching for one pattern, the ```-e``` option does not have to be used.

```-f / --file=FILE```

Read search patterns line by line from a file.
Useful for more complex operations.

```-i / --ignore-case```

Makes ```grep``` case-insensitive.
```grep -i 'hello'``` matches 'hello', 'Hello', 'HELLO' and so on.

```-v / --invert-match```

invert the result so only non-matching lines are selected

```-x / --line-regexp```

select only those lines that entirely match the pattern

```-c / --count```

instead of printing normal output, print the number of found matches

```-l / --files-with-matches, -L / --files-without-matches```

instead of printing normal output, print the name of the first input file with a match (```-l```) or without a match (```-L```)

```-m / -max-count=NUM```

stop reading a file after the specified number of matches

```-o / --only-matching```

do not print the whole line but only the matching string

```-h / --no-filename, -H / --with-filename```

Print or suppress printing file names for each match when multiple files are searched.
By default, file names are only shown, when more than one file is passed to ```grep```.

```n / --line-number```

prefix each match with its line number (starting from 1) in the original file

```-r / --recursive```

also search within subdirectories

---

