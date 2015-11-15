# CV

A script to generate CV PDF from HTML page. It's based on [wkhtmltopdf](http://wkhtmltopdf.org/) library, 
which uses WebKit rendering engine.

## Requirements

wkhtmltopdf. On Debian for example it can be installed as follows:

    apt-get install wkhtmltopdf

However, the version shipped by default is not complete, sometimes it's better to install directly from 
[downloads page](http://wkhtmltopdf.org/downloads.html)

## Usage

Simplest usage can look as follows:

    ./cv.sh example-cv.htm

This will generate example-cv.pdf file in current directory.

More complate example, where some sections are omitted and company specific tweaks are applied can look as follows:

    ./cv.sh example-cv.html css/medium.css custom/company.css


