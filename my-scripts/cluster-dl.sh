usage() {
    echo "Usage: cluster-dl"

    exit 1
}

[[ $# -ne 0 ]] && usage
LINKS_FILE="$1"

DESTREAMER_REP="/home/dincio/reps/my-destreamer/"
DESTREAMER_COMMAND="$DESTREAMER_REP/destreamer.sh"

SCRIPTS_DIR="$(pwd)"
cd "$DESTREAMER_REP"

while read link; do
    "$DESTREAMER_COMMAND" -i "$link"
    # TODO: Check for errors
done < "$SCRIPTS_DIR/links/video-links"
