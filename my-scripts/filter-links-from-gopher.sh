usage() {
    echo "Usage: filter-links-from-gopher"

    exit 1
}

[[ $# -ne 0 ]] && usage

cat "links/gopher-links" | awk '/video\//' > ./links/video-links
