# CV

A script to generate CV and other documents in PDF format from HTML source. 
It's based on [wkhtmltopdf](http://wkhtmltopdf.org/) library, which in turn uses WebKit rendering engine.

Cool thing about this utility is that you can work on your CV in a web browser, 
use CSS templating capabilities like hiding and replacing text, 
chose alternative styles using standard browser mechanisms and generally utilize the full expressive potential 
of familiar HyperText Markup Language and Cascading Style Sheets.

Example style is included, but the concept is more interesting than the actual implementation. 
In other words, I hope you'll create your own unique design for your CV.

## Requirements

wkhtmltopdf. On Debian for example it can be installed as follows:

    apt-get install wkhtmltopdf

However, the version shipped by default is not complete, sometimes it's better to install directly from 
[downloads page](http://wkhtmltopdf.org/downloads.html)

## Usage

Example usage:

    ./cv.sh example-cv.html css/medium.css css/example-company.css

This will generate example-cv.pdf file in current directory.

