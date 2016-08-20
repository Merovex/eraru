## Korektu

**Korektu** is a [Sinatra-based application](www.sinatrarb.com) that only does one thing well: it takes form input and generates a GitHub issue to a private repository. The form is hosted via a separate site, leaving Sinatra with very little to do.

I created this to address the problem of having untrusted users submitting issues for private GitHub repositories when I wanted to have issues reported against that repository.

An OAuth allows that untrusted user to report as if they were a trusted user. However, OAuth makes the private repo vulnerable. Korektu helps conceal that OAuth from the untrusted user.

## Installation

1. Create a Heroku app
2. Push the Korektu Sinatra app to Heroku
3. Set the Heroku environment variables:
    4. github_secret
    5. recaptcha_secret
    5. thanks_url
    6. noget_url
    7. origin_url

## License

A short snippet describing the license (MIT, Apache, etc.)