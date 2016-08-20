# Korektu

**Korektu** is a [Sinatra-based application](www.sinatrarb.com) that only does one thing well: it takes form input and generates a GitHub issue to a private repository. The form is hosted via a separate site, leaving Sinatra with very little to do.

I created this to address the problem of having untrusted users submitting issues for private GitHub repositories when I wanted to have issues reported against that repository.

An OAuth token allows that untrusted user to report as if they were a trusted user. However, this token makes the private repo vulnerable.

Korektu helps conceal that token from the untrusted user by calling it within an application.

## Installation

1. Create a Heroku app
2. Push the Korektu Sinatra app to Heroku
3. Set the Heroku environment variables (all but recaptcha_secret are mandatory):
    * github_secret - via [GitHub's Developer pages](https://developer.github.com/v3/oauth/)
    * thanks_url - The redirect URL after form processing
    * noget_url - The redirect URL when somebody tries to GET Sinatra.
    * origin_url - The source URL for the form
    * recaptcha_secret - via [Google's Recaptcha](https://www.google.com/recaptcha/intro/index.html); if you don't set this, we don't check for humanity.
4. Create the desired form ([like mine](http://www.dausha.net/korektu/bellicose))
    * The form needs to set the repository (user_name/repo_name) 
    * I rely on HTML5 "required" to inform the browser to parse fields. If you want name/email to be mandatory, add them there.
    * Point the form action to the Heroku application.

As I created this for my [novel writing](http://www.dausha.net), the data collected is rather specific to me. Depending on your use case, you may consider removing or changing the following variables or entries:

* Book (the title of the work needing address)
* Format (whether the book is Paperback/PDF or MOBI)
* Location (the page or location)

## License

Copyright (c) 2016 Ben Wilson (anticipated expiration 2122)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.