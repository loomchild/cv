function usage {
    echo "usage: cv.sh <file> <style> <custom-style>"
    exit 
}

function check_file {
    FILE=$1
    if [ ! -f $FILE ]
    then
        echo "File $FILE does not exist."
        exit 1
    fi
}

DOC=$1
if [ -z "$DOC" ]
then
    usage   
fi
check_file $DOC
OUT=${DOC%.*}.pdf

ARGS="--print-media-type -B 15mm -T 15mm -L 20mm -R 20mm --use-xserver --disable-smart-shrinking"

STYLE=$2
if [ -z "$STYLE" ]
then
    STYLE=css/full.css
fi
check_file $STYLE
ARGS="$ARGS --user-style-sheet $STYLE"

wkhtmltopdf $ARGS $DOC $OUT
