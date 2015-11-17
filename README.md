# CV

A script to generate CV and other documents in PDF format from HTML source. 
It's based on [wkhtmltopdf](http://wkhtmltopdf.org/) library, which in turn uses WebKit rendering engine.

Cool thing about this utility is that you can work on your CV in a web browser, 
use CSS templating capabilities like hiding and replacing text, 
chose alternative styles using standard browser mechanisms and generally utilize the full expressive potential 
of familiar HyperText Markup Language, Cascading Style Sheets and JavaScript.

Example style is included (loosely based on [Wordpress](https://wordpress.org/) 
[Twenty Thirteen](https://wordpress.org/themes/twentythirteen/) theme), 
but the concept is more interesting than the actual implementation. 
In other words, I hope you'll create your own unique design for your CV.

## Requirements

wkhtmltopdf. On Debian for example it can be installed as follows:

    apt-get install wkhtmltopdf

However, the version shipped by default is not complete, it's better to install directly from 
[downloads page](http://wkhtmltopdf.org/downloads.html)

## Usage

Example usage:

    ./cv.sh example-cv.html css/medium.css css/example-company.css

This will generate example-cv.pdf file in current directory.

For serious usage I suggest adding directory called private/ and creating a separate git repository 
in it. It will be automatically ignored by this project to prevent sharing sensitive files, 
but changes can be independently tracked via a private git repository.
