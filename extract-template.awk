#!/usr/bin/awk -f

BEGIN {
    # Den Record Separator auf "leer" setzen, damit die ganze Datei 
    # als ein einziger Record gelesen wird (Slurping).
    RS = "^$"
}

{
    base = tsfile

    sub(/\.[^.]+$/, "", base) # Endung entfernen
    
    html_file = base ".html"
    html_file_base = html_file
    sub(/.*\//, "", html_file_base)   # Pfad entfernen
    
    # Suche nach template: `TEXT` (auch mehrzeilig)
    # [^`]* matcht alles außer dem Backtick
    if (match($0, /template:[[:space:]]*`([^`]*)`/, arr)) {
        
        # 1. Den extrahierten TEXT in die .html Datei schreiben
        # arr[1] enthält die Capture Group aus dem Regex
        print arr[1] > html_file
        close(html_file)
        
        # 2. Den Treffer im Haupttext ersetzen
        replacement = "templateUrl: './" html_file_base "'"
        gensub_regex = "template:[[:space:]]*`[^`]*`"
        
        final_content = gensub(gensub_regex, replacement, "g", $0)
        
        # Ergebnis ausgeben
        print final_content
    } else {
        # Falls kein Treffer, Originalinhalt ausgeben
        print $0
    }
}
