#!/bin/bash
cd ~/printer_data/config || exit 1

# nur committen, wenn sich wirklich was geändert hat
if [[ -n $(git status --porcelain) ]]; then
    git add .
    git commit -m "auto backup: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
fi
