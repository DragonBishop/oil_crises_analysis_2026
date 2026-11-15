#!/usr/bin/env bash
set -euo pipefail

URL=https://www.jodidata.org
downloads=/_resources/files/downloads
csv=/oil-data/annual-csv

curl -fsSLR --create-dirs --config - <<EOF
url    = "$URL$downloads$csv/{primary/primary,secondary/secondary}year2026.csv"
output = "data/raw/#1year2026.csv"

url    = "$URL$downloads$csv/{primary,secondary}/[2002-2025].csv"
output = "data/raw/#1/#2.csv"

url    = "$URL$downloads/oil-data/jodi-oil-{country-note.xlsx,wdb-item-names-ver2017.pdf}"
output = "data/docs/jodi-oil-#1"

url    = "$URL$downloads/manuals/jodi-oil-2nd-manual.pdf"
output = "data/docs/jodi-oil-2nd-manual.pdf"

url    = "$URL/oil/support/{user-guide/data-available-in-the-jodi-oil-world-database,user-guide/assessments,definitions}.aspx"
output = "data/docs/#1.html"
EOF
