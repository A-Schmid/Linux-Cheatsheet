## File Management

### mkdir

*'make directories'*

**Syntax:** ```mkdir [OPTIONS] DIRECTORIES```

**Examples:**

```mkdir test```

Creates a directory called 'test' in the current working directory.

```mkdir test1 test2```

Creates two directories called 'test1' and 'test2' in the current working directory.

```mkdir ~/Pictures/photos```

Creates a directory called 'photos' in */home/username/Pictures*.

---

### rmdir

*'remove directories'*

Removes specified directories if they are empty.

**Syntax:** ```rmdir [OPTIONS] DIRECTORIES```

Rarely used command, most of the time ```rm -r``` is preferred to ```rmdir```.

---

### touch

Update access and modification date of a file.
If the file does not exist, it is created.

**Syntax:** ```touch [OPTIONS] FILES```

---

### mv

*'move or rename files'*

**Syntax:** ```mv [OPTIONS] SOURCE DESTINATION```

The source file is moved to the specified destination.
If the destination is in the same directory as the source, the file is renamed in place.
There can be an arbitrary amout of source files - the last parameter ist always the destination.

**Usage:**

```mv myfile.txt bettername.txt```

renames 'myfile.txt' to 'bettername.txt'

```mv myfile.txt somewhere/bettername.txt```

moves 'myfile.txt' to a directory called 'somewhere' and renames it to 'bettername.txt'

```mv myfile.txt somewhere/```

moves 'myfile.txt' to a directory called 'somewhere'

```mv myfile.txt otherfile.txt thirdfile.txt somewhere/```

moves three files to a directory

```mv *.txt somewhere/```

moves all files ending with '.txt' to a directory

**Options:**

```-b / --backup```

make a backup of all specified files

```-f / --force```

overwrite existing files without asking

```-i / --interactive```

interactive mode, prompts before overwriting

```-n / --no-clobber```

do not overwrite existing files

```-S / --suffix=SUFFIX```

specify backup suffix

```-u / --update```

move only if source is newer than the destination or destination is missing

```-v / --verbose```

print progress to stdout, useful when moving multiple large files

---

### cp

*'copy files'*

**Syntax:** ```cp [OPTIONS] SOURCE DESTINATION```

The source files are copied to the specified destination.
Like with ```mv```, there can be an arbitrary amout of source files - the last parameter ist always the destination.

**Usage:**

Basically behaves just like ```mv```.

**Options:**

All options described in the section for ```mv``` can be used in the same way.

```-R / -r / --recursive```

has to be used if a copied directory contains subdirectories

---

### rm

*'remove files'*

**Syntax:** ```rm [OPTIONS] FILES```

Deletes all specified files.
Does not remove directories unless the ```-r``` option is used.
If a file can't be removed (e.g. because of lacking permissions), the program will prompt the user.

**Usage:**

```rm file.txt```

deletes the file 'file.txt'

```rm *.txt```

deletes all files with the suffix '.txt'

```rm -r my_directory```

deletes the directory 'my_directory' including its content

```rm -rf /```

Deletes all files on the system, including the operating system (if permissions are sufficient).
Don't do this!

**Options:**

```-R / -r / --recursive```

required to remove directories

---

