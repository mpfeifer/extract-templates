When you find some source-code for [angular]([url](https://github.com/angular/angular)) and you
find that the components html template and/or styles are defined within the typescript file using
e.g. _template_ instead of _templateUrl_ and you want to change this - this script is for you.

# extract-templates
If you prefer to have a components html template and style in a seperate file, but the project you just
cloned has a different view on that (e.g. it uses _template: `some html`_ style syntax) you might give this
script a try. I was assuming to use gnu awk - though don't know if any gnu awk specific features
were used. The same holds for the shell script (for bash). The script is looking for template and style
configuration options, extracts the markup it finds and writes it to a suitable seperate file. 

# Usage
Put scripts in src/ folder. run extract-templates.sh.

# Disclaimer
In case something is not right, you can "git reset --hard ; git clean -f". This should remove any
changes that were not yet commited and remove any files not under git control.
