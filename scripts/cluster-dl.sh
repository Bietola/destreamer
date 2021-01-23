usage() {
    echo "Usage: cluster-dl LINKS_FILE"

    exit 1
}

[[ $# -ne 1 ]] && usage

LINKS_FILE="$1"
LINKS="$(cat $LINKS_FILE)"

DESTREAMER_REP = "/home/dincio/reps/my-destreamer/"
DESTREAMER_COMMAND="$DESTREAMER_REP/destreamer"

for link in LINKS; do
    $DESTREAMER_COMMAND -i $link
    # TODO: Check for errors
done
