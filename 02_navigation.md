## Navigation

### pwd

*'print working directory'*

Outputs the absolute path to the directory you are currently in.

---

### ls

*'list directory contents'*

**Syntax:** ```ls [OPTIONS] [DIRECTORY]```

Outputs a list of files in the specified directory.
If no directory is specified, the current working directory is used.

**Options:**

```-a / --all```

also list hidden files (starting with '.')

```-l```

vertical list format (including permissions, owner, file size and change date)

```-1```

one entry per line (only file names)

---

### cd

*'change directory'*

Go to another directory.
Absolute or relative paths can be specified.

**Syntax:** ```cd [DIRECTORY]```

**Usage:**

```cd ..```

go back to the parent directory

```cd ~```

Go to the home directory.
All paths starting with ~ are relative to the current user's home directory.

Example: ```cd ~/Pictures``` is the same as ```cd /home/username/Pictures```.

```cd /```

Go to the root directory.
All paths starting with / are absolute.

