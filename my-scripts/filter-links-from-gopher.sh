usage() {
    echo "Usage: filter-links-from-gopher LINKS_FILE"

    exit 1
}

[[ $# -ne 1 ]] && usage

cat "links/gopher-links" | awk '/video\//'
