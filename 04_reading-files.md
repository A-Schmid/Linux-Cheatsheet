## Reading Files

### cat

*'concatenate files'*

**Syntax:** ```cat [OPTIONS] FILES```

Reads all specified files, concatenates them and prints their content to standard output.
Is often used as a simple tool to display the content of a file in the terminal.

**Options:**

```-n / --number```

display line numbers

```-s / --squeeze-blank```

get rid of repeated empty lines

---

### head, tail

*'output the first (head) or last (tail) lines of files'*

**Syntax:**

```head [OPTIONS] [FILES]```

```tail [OPTIONS] [FILES]```

Similar to cat, but only a part (10 lines by default) of each file is displayed.
Very useful for reading log files and filtering sorted lists.

**Options:**

```-n / --lines=NUM```

specify the number of lines to be printed

```-c / --bytes=NUM```

limit the output to a number of bytes instead of a number of lines

---

### less

*'open an interactive read-only view of a file'*

**Syntax:** ```less [OPTIONS] FILE```

This is the way to go if you just want to take a quick peak into a (text) file.

**Navigation:**

```Arrow Up/Down or J/K```

scroll up/down a line

```Ctrl + U, Ctrl + D```

scroll up/down 10 lines

```gg / Shift + G```

go to the top (gg) or bottom (G) of the file

```q```

quit

```/```

Open search bar.
Enter a search term an press return to find the first occurence.
Press ```n``` to jump to the next occurence, press ```Shift + N``` to jump to the previous occurence.

---

### sort

*'sort lines of text files'*

**Syntax:** ```sort [OPTIONS] FILES```

Keep in mind that *lines* are sorted.
If you want e.g. a sorted list of all words in a file, you have to split all words into separate lines before.

**Options:**

```-R / --random-sort```

shuffle the output

```-r / --reverse```

reverse the output

---

### uniq

*'report or omit repeated lines'*

**Syntax:** ```uniq [OPTIONS] [INPUT [OUTPUT]]```

By default, consecutive matching lines of the input are merged.
Very useful in combination with ```sort```.

**Options:**

```-c / --count```

show number of occurences for each line

```-d / --repeated```

only print lines occuring more than once

```-u / --unique```

only print unique lines

```-i / --ignore-case```

ignore differences in case

```-w / --check-chars=N```

only compare the first N characters of each line

---

### wc

*'word count'*

**Syntax:** ```wc [OPTIONS] [FILES]```

Prints number of lines, words, and bytes for each specified file.

**Options:**

```-c / --bytes```

print the byte count

```-l / --lines```

print the line count

```-w / --words```

print the word count

---


