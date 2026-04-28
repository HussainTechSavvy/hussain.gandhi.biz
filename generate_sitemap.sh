#!/bin/bash
# Generates sitemap.xml for all HTML files in the docs/ directory

BASE_URL="https://hussain.gandhi.biz"
DOCS_DIR="docs"
SITEMAP_FILE="$DOCS_DIR/sitemap.xml"

# Start the XML file
cat <<EOF > "$SITEMAP_FILE"
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
EOF

# Find all HTML files and process them
find "$DOCS_DIR" -name "*.html" -type f | while read -r file; do
    # Remove the "docs/" prefix
    rel_path="${file#$DOCS_DIR/}"
    
    # If the file is index.html, it maps to the root URL "/"
    if [ "$rel_path" == "index.html" ]; then
        url="$BASE_URL/"
    else
        url="$BASE_URL/$rel_path"
    fi
    
    # Get last modified time of the file in W3C format
    lastmod=$(date -r "$file" "+%Y-%m-%d")

    cat <<EOF >> "$SITEMAP_FILE"
    <url>
        <loc>$url</loc>
        <lastmod>$lastmod</lastmod>
    </url>
EOF
done

# End the XML file
cat <<EOF >> "$SITEMAP_FILE"
</urlset>
EOF

echo "Sitemap generated successfully at $SITEMAP_FILE"
