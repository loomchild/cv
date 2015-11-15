function usage {
    echo "usage: cv.sh <file> <style>..."
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

TMP_CSS=/tmp/cv.css
rm $TMP_CSS
for STYLE in ${@:2}
do
    check_file $STYLE
    cat $STYLE >> $TMP_CSS
done

if [ -f $TMP_CSS ]
then
    ARGS="$ARGS --user-style-sheet $TMP_CSS"
fi

wkhtmltopdf $ARGS $DOC $OUT
