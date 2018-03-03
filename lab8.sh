varios types of grep commands in shell scripting 
 man grep
cs2016a120@user:~$ cat > test
Aggarwal
aggarwal
agrawal
agarwal
Agarwal
Agrawal
agrwal
Agrwalcs2016a120@user:~$ grep -i "aggarwal" test
Aggarwal
aggarwal
cs2016a120@user:~$ grep -e "aggarwal" test
aggarwal
cs2016a120@user:~$ grep -v "aggarwal" test
Aggarwal
agrawal
agarwal
Agarwal
Agrawal
agrwal
Agrwal
~/iftekhar$ grep -F "aggarwal" test
aggarwal
cs2016a120@user:~/iftekhar$ grep -G "aggarwal" test
aggarwal
cs2016a120@user:~/iftekhar$ grep -f "Aggarwal" test
grep: Aggarwal: No such file or directory
cs2016a120@user:~/iftekhar$ grep -w "aggarwal" test
aggarwal
cs2016a120@user:~/iftekhar$ grep -x "aggarwal" test
aggarwal
cs2016a120@user:~/iftekhar$ grep -y "Agrawal" test
agrawal
Agrawal
cs2016a120@user:~/iftekhar$ grep -c "agrawal" test
1
cs2016a120@user:~/iftekhar$ grep -l "agrawal" test
test
cs2016a120@user:~/iftekhar$ grep -P "agrawal" test
agrawal
cs2016a120@user:~/iftekhar$ grep -E "agrawal" test
agrawal
cs2016a120@user:~/iftekhar$ grep -y "agrwal" test
agrwal
Agrwal

GREP(1)                                                                    User Commands                                                                    GREP(1)

NAME
       grep, egrep, fgrep, rgrep - print lines matching a pattern

SYNOPSIS
       grep [OPTIONS] PATTERN [FILE...]
       grep [OPTIONS] -e PATTERN ... [FILE...]
       grep [OPTIONS] -f FILE ... [FILE...]

DESCRIPTION
       grep  searches  for  PATTERN in each FILE.  A FILE of “-” stands for standard input.  If no FILE is given, recursive searches examine the working directory,
       and nonrecursive searches read standard input.  By default, grep prints the matching lines.

       In addition, the variant programs egrep, fgrep and rgrep are the same as grep -E, grep -F, and grep -r, respectively.  These variants  are  deprecated,  but
       are provided for backward compatibility.

OPTIONS
   Generic Program Information
       --help Output a usage message and exit.

       -V, --version
              Output the version number of grep and exit.

   Matcher Selection
       -E, --extended-regexp
              Interpret PATTERN as an extended regular expression (ERE, see below).

       -F, --fixed-strings
              Interpret PATTERN as a list of fixed strings (instead of regular expressions), separated by newlines, any of which is to be matched.

       -G, --basic-regexp
              Interpret PATTERN as a basic regular expression (BRE, see below).  This is the default.

       -P, --perl-regexp
              Interpret the pattern as a Perl-compatible regular expression (PCRE).  This is experimental and grep -P may warn of unimplemented features.

   Matching Control
       -e PATTERN, --regexp=PATTERN
              Use  PATTERN  as the pattern.  If this option is used multiple times or is combined with the -f (--file) option, search for all patterns given.  This
              option can be used to protect a pattern beginning with “-”.

       -f FILE, --file=FILE
              Obtain patterns from FILE, one per line.  If this option is used multiple times or is combined with the -e (--regexp) option, search for all patterns
 Manual page grep(1) line 1/420 8% (press h for help or q to quit)
 -G, --basic-regexp
              Interpret PATTERN as a basic regular expression (BRE, see below).  This is the default.

       -P, --perl-regexp
              Interpret the pattern as a Perl-compatible regular expression (PCRE).  This is experimental and grep -P may warn of unimplemented features.

   Matching Control
       -e PATTERN, --regexp=PATTERN
              Use  PATTERN  as the pattern.  If this option is used multiple times or is combined with the -f (--file) option, search for all patterns given.  This
              option can be used to protect a pattern beginning with “-”.

       -f FILE, --file=FILE
              Obtain patterns from FILE, one per line.  If this option is used multiple times or is combined with the -e (--regexp) option, search for all patterns
              given.  The empty file contains zero patterns, and therefore matches nothing.

       -i, --ignore-case
              Ignore case distinctions, so that characters that differ only in case match each other.

       -v, --invert-match
              Invert the sense of matching, to select non-matching lines.

       -w, --word-regexp
              Select  only  those  lines  containing matches that form whole words.  The test is that the matching substring must either be at the beginning of the
              line, or preceded by a non-word constituent character.  Similarly, it must be either at the end of the line or followed  by  a  non-word  constituent
              character.  Word-constituent characters are letters, digits, and the underscore.  This option has no effect if -x is also specified.

       -x, --line-regexp
              Select  only  those  matches  that  exactly match the whole line.  For a regular expression pattern, this is like parenthesizing the pattern and then
              surrounding it with ^ and $.

       -y     Obsolete synonym for -i.

   General Output Control
       -c, --count
              Suppress normal output; instead print a count of matching lines for each input file.  With the -v, --invert-match  option  (see  below),  count  non-
              matching lines.

       --color[=WHEN], --colour[=WHEN]
              Surround  the  matched  (non-empty)  strings,  matching  lines, context lines, file names, line numbers, byte offsets, and separators (for fields and
              groups of context lines) with escape sequences to display them in color on the  terminal.   The  colors  are  defined  by  the  environment  variable
              GREP_COLORS.   The  deprecated environment variable GREP_COLOR is still supported, but its setting does not have priority.  WHEN is never, always, or
              auto.

 Manual page grep(1) line 31/420 14% (press h for help or q to quit)
 -l, --files-with-matches
              Suppress  normal output; instead print the name of each input file from which output would normally have been printed.  The scanning will stop on the
              first match.

       -m NUM, --max-count=NUM
              Stop reading a file after NUM matching lines.  If the input is standard input from a regular file, and NUM matching lines are  output,  grep  ensures
              that  the  standard  input  is  positioned to just after the last matching line before exiting, regardless of the presence of trailing context lines.
              This enables a calling process to resume a search.  When grep stops after NUM matching lines, it outputs any trailing context lines.  When the -c  or
              --count  option  is  also  used,  grep does not output a count greater than NUM.  When the -v or --invert-match option is also used, grep stops after
              outputting NUM non-matching lines.

       -o, --only-matching
              Print only the matched (non-empty) parts of a matching line, with each such part on a separate output line.

       -q, --quiet, --silent
              Quiet; do not write anything to standard output.  Exit immediately with zero status if any match is found, even if an error was detected.   Also  see
              the -s or --no-messages option.

       -s, --no-messages
              Suppress error messages about nonexistent or unreadable files.

   Output Line Prefix Control
       -b, --byte-offset
              Print  the  0-based  byte  offset  within  the  input file before each line of output.  If -o (--only-matching) is specified, print the offset of the
              matching part itself.

       -H, --with-filename
              Print the file name for each match.  This is the default when there is more than one file to search.

       -h, --no-filename
              Suppress the prefixing of file names on output.  This is the default when there is only one file (or only standard input) to search.

       --label=LABEL
              Display input actually coming from standard input as input coming from file LABEL.  This is especially useful when  implementing  tools  like  zgrep,
              e.g., gzip -cd foo.gz | grep --label=foo -H something.  See also the -H option.

       -n, --line-number
              Prefix each line of output with the 1-based line number within its input file.

       -T, --initial-tab
              Make  sure  that  the  first  character  of  actual line content lies on a tab stop, so that the alignment of tabs looks normal.  This is useful with
 Manual page grep(1) line 76/420 24% (press h for help or q to quit)
 File and Directory Selection
       -a, --text
              Process a binary file as if it were text; this is equivalent to the --binary-files=text option.

       --binary-files=TYPE
              If a file's data or metadata indicate that the file contains binary data, assume that the file is of type TYPE.  Non-text bytes indicate binary data;
              these are either output bytes that are improperly encoded for the current locale, or null input bytes when the -z option is not given.

              By default, TYPE is binary, and when grep discovers that a file is binary it suppresses any further output, and instead  outputs  either  a  one-line
              message saying that a binary file matches, or no message if there is no match.

              If TYPE is without-match, when grep discovers that a file is binary it assumes that the rest of the file does not match; this is equivalent to the -I
              option.

              If TYPE is text, grep processes a binary file as if it were text; this is equivalent to the -a option.

              When type is binary, grep may treat non-text bytes as line terminators even without the -z option.  This means choosing binary versus text can affect
              whether  a  pattern  matches  a file.  For example, when type is binary the pattern q$ might match q immediately followed by a null byte, even though
              this is not matched when type is text.  Conversely, when type is binary the pattern . (period) might not match a null byte.

              Warning: The -a option might output binary garbage, which can have nasty side effects if the  output  is  a  terminal  and  if  the  terminal  driver
              interprets  some  of  it  as commands.  On the other hand, when reading files whose text encodings are unknown, it can be helpful to use -a or to set
              LC_ALL='C' in the environment, in order to find more matches even if the matches are unsafe for direct display.

       -D ACTION, --devices=ACTION
              If an input file is a device, FIFO or socket, use ACTION to process it.  By default, ACTION is read, which means that devices are  read  just  as  if
              they were ordinary files.  If ACTION is skip, devices are silently skipped.

       -d ACTION, --directories=ACTION
              If  an  input file is a directory, use ACTION to process it.  By default, ACTION is read, i.e., read directories just as if they were ordinary files.
              If ACTION is skip, silently skip directories.  If ACTION is recurse, read all files under each directory, recursively, following symbolic links  only
              if they are on the command line.  This is equivalent to the -r option.

       --exclude=GLOB
              Skip  any command-line file with a name suffix that matches the pattern GLOB, using wildcard matching; a name suffix is either the whole name, or any
              suffix starting after a / and before a +non-/.  When searching recursively, skip any subfile whose base name matches GLOB; the base name is the  part
              after the last /.  A pattern can use *, ?, and [...]  as wildcards, and \ to quote a wildcard or backslash character literally.

       --exclude-from=FILE
              Skip files whose base name matches any of the file-name globs read from FILE (using wildcard matching as described under --exclude).

       --exclude-dir=GLOB
              Skip  any command-line directory with a name suffix that matches the pattern GLOB.  When searching recursively, skip any subdirectory whose base name
 M



