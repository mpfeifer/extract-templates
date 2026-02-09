# extract-templates
If you prefer to have a components html template in a seperate file, but the project you just
branch from has a different view on that (it uses template: `some html`) you might give this
script a try. I was assuming to use gnu awk - though don't know if any gnu awk specific features
were used. The same holds for the shell script (for bash). The script is looking for template
configuration options, extracts the markup it finds and writes it to a suitable file. 
