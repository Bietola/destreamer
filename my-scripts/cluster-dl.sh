usage() {
    echo "Usage: cluster-dl [VIDEO_DL_DEST]"

    exit 1
}

[[ $# -gt 1 ]] && usage

VIDEO_DL_DEST="$1"

# Load config
# TODO: Fix this
# input="$(cat filename | grep -v '^#')"
# set -- $input

DESTREAMER_REP="/home/dincio/reps/my-destreamer/"
DESTREAMER_COMMAND="$DESTREAMER_REP/destreamer.sh"

SCRIPTS_DIR="$(pwd)"
cd "$DESTREAMER_REP"

while read link; do
    "$DESTREAMER_COMMAND" -i "$link" -o "$VIDEO_DL_DEST"

    # TODO: Check for errors

    mv "videos/" "$VIDEO_DL_DEST"
done < "$SCRIPTS_DIR/links/video-links"
