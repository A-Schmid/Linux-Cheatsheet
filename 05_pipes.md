## Redirecting Input and Output

Most commands get some type of input (e.g. standard input or a file), process it and output a result (to standard output).
If nothing else is specified, standard output is printed in the terminal.
But the true power of command line tools lies in their capability to be combined via pipes - this means the output of one program is used as the input of another program.

### Creating a Pipeline

The ```|``` operator (pipe) can be used to chain together programs.
The first programm passes its input to the second program and so on.
The result of the final program is passed to *STDOUT* (standard output) and thus printed in the terminal.

**Examples:**

```ls | wc -l```

prints the number of files in the current directory

```cat *.txt | sort | uniq```

prints unique lines in all *.txt* files in the current directory

Pipes are especially useful for filtering streams of text by for example removing or replacing characters or only including lines which contain a certain string.
Such commands are discussed in a later section.

### Redirecting Output to a File

Oftentimes, we want to store the result of a program.
This can be done by redirecting standard output to a file with the ```>``` operator.

**Examples:**

```ls > filelist.txt```

creates a list of files in the current directory

```cat list.txt | sort -r > reverse.txt```

creates a reversed copy of a list

The ```>``` operator will overwrite the specified file.
Use the ```>>``` operator to append output to an existing file.

Some programs will print error messages to the virtual *STDERR* file (standard error).
Those are normally also printed in the terminal.
To redirect error messages to a file, the ```2>``` operator can be used.
To redirect both *STDOUT* and *STDERR* to a file, use the ```&>``` operator.

To suppress output of a program, redirect all output to the special file */dev/null*:
```command &> /dev/null```.

