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

STYLE=$2
if [ -z "$STYLE" ]
then
    STYLE=css/full.css
fi
check_file $STYLE

CUSTOM=$3
if [ ! -z "$CUSTOM" ]
then
    check_file $CUSTOM
    CUSTOM_PARAM=--user-style-sheet $CUSTOM
fi


disable custom
check if files exist

wkhtmltopdf --user-style-sheet $STYLE $CUSTOM_PARAM --print-media-type -B 15mm -T 15mm -L 20mm -R 20mm --use-xserver --disable-smart-shrinking $DOC $OUT
