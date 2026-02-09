When you find some source-code for [angular]([url](https://github.com/angular/angular)) and you
find that the components html template is defined in the typescript file using template instead
of templateUrl and you want to change this - this script is for you.

# extract-templates
If you prefer to have a components html template in a seperate file, but the project you just
branch from has a different view on that (it uses template: `some html`) you might give this
script a try. I was assuming to use gnu awk - though don't know if any gnu awk specific features
were used. The same holds for the shell script (for bash). The script is looking for template
configuration options, extracts the markup it finds and writes it to a suitable file. 

# Usage
put scripts in src/ folder. run extract-templates.sh.

# Disclaimer
In case something is not write, do "git reset --hard ; git clean -f". This should remove any changes
changes that were not yet commited and remove any files not under git control.
