#!/usr/bin/env bash

BOOKMARKS_DIRECTORY="$HOME/.local/share/config_dotfiles/bookmarks"

# Browser modes
TAB_MODE="firefox-developer-edition --new-tab"
WINDOW_MODE="firefox-developer-edition --new-window"
PRIVATE_MODE="firefox-developer-edition --private-window"

# BRAVE
# TAB_MODE="brave --new-tab --url"
# WINDOW_MODE="brave --new-window"
# PRIVATE_MODE="brave --incognito --new-tab --url"

# Validate directory
if [[ ! -d "$BOOKMARKS_DIRECTORY" ]]; then
  notify-send -u critical \
    "Bookmarks directory not found" \
    "$BOOKMARKS_DIRECTORY" 2>/dev/null
  exit 1
fi

# Browser command based on mode
browser_mode="${1:-tab}"

case "$browser_mode" in
  tab)
    browser_command=$TAB_MODE
    ;;
  window)
    browser_command=$WINDOW_MODE
    ;;
  private)
    browser_command=$PRIVATE_MODE
    ;;
  *)
    notify-send \
      "Invalid mode: '$browser_mode'" \
      "Try: tab, window, or private" 2>/dev/null
    exit 1
    ;;
esac

# Selection mode: all or category
bookmarks_selection_mode="${2:-all}"

# =========================================================================
# Display all bookmarks

if [[ "$bookmarks_selection_mode" == "all" ]]; then
  # Build a temporary JSON array containing all bookmarks
  bookmarks_json=$(
    jq -s 'add' "$BOOKMARKS_DIRECTORY"/*.json 2>/dev/null
  )

  [[ -n "$bookmarks_json" && "$bookmarks_json" != "null" ]] || exit 0

  # Display ONLY titles in Rofi
  selected=$(
    printf '%s\n' "$bookmarks_json" |
      jq -r '.[].title' |
      sort |
      rofi \
      -i \
      -dmenu \
      -p "Bookmarks" \
      -theme-str 'window { width: 30% ; margin: 10 0 0 10; }'
    )

    [[ -n "$selected" ]] || exit 0

  # Find URL corresponding to selected title
  url=$(
    printf '%s\n' "$bookmarks_json" |
      jq -r --arg title "$selected" \
      '.[] | select(.title == $title) | .url' |
      head -n1
    )

# =========================================================================
# CATEGORY MODE

else
  # Store available category files
  mapfile -t categories < <(
    find "$BOOKMARKS_DIRECTORY" \
      -maxdepth 1 \
      -type f \
      -name "*.json" \
      -printf "%f\n" |
      sed 's/\.json$//'
    )

    [[ ${#categories[@]} -gt 0 ]] || exit 0

# Select category
selected_category=$(
  printf '%s\n' "${categories[@]}" |
    sort |
    rofi \
    -dmenu \
    -i \
    -p "Categories" \
    -theme-str 'window { width: 30% ; margin: 10 0 0 10; }'
  )

  [[ -n "$selected_category" ]] || exit 0

# Actual JSON file
selected_category_file="$BOOKMARKS_DIRECTORY/$selected_category.json"

# Display ONLY titles
selected=$(
  jq -r '.[].title' "$selected_category_file" |
    sort |
    rofi \
    -dmenu \
    -i \
    -p "$selected_category" \
    -theme-str 'window { width: 30% ; margin: 10 0 0 10; }'
  )

  [[ -n "$selected" ]] || exit 0

# Find URL corresponding to selected title
url=$(
  jq -r --arg title "$selected" \
    '.[] | select(.title == $title) | .url' \
    "$selected_category_file" |
    head -n1
  )
fi

# Exit if URL wasn't found
[[ -n "$url" && "$url" != "null" ]] || exit 1

# Open URL
setsid $browser_command "$url" >/dev/null 2>&1 &
