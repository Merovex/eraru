class Korektu < Sinatra::Base
	require 'octokit'
	require "json"

  set :public_folder => "public", :static => true

  get "/" do
    # redirect ENV['noget_url']

  end
  post "/" do
    origin = request.env['HTTP_ORIGIN']
  	
    puts [origin, ENV['origin_url'], [ENV['origin_url']].include?(origin)].inspect

    if (ishuman?() and [ENV['origin_url']].include?(origin))
        format      = (params[:pbk] == 'on') ? 'pbk' : 'mobi'
        title       = "#{params[:kind]} in #{params[:book]} at #{format[0]}.#{params[:location]}"
        name        = (params[:name] != '') ? params[:name] : 'Anonymous'
        email       = "(#{params[:email]})".gsub('()',"")
        text        =<<-EOT
## Contributor
* Reported by: #{name} #{email}

## Metadata
* Book: #{params[:book]}
* Edition: #{params[:edition]}
* #{format}. #{params[:location]}

## Description

#{params[:text].gsub(/^#/, '###')}
EOT
        github = Octokit::Client.new(:access_token => ENV['github_secret'])
        res    = github.create_issue(params[:repo], title, text, {labels: [params[:kind].downcase, 'reader']})
    end
    redirect "#{ENV['thanks_url']}?b=#{params[:book]}"
	end
	def ishuman?
      secret_key = ENV['recaptcha_secret']
      return true if secret_key.nil? # You didn't set up Recaptcha, you get what you get.

      recaptcha_url = "https://www.google.com/recaptcha/api/siteverify"
      data = "-d \"secret=#{secret_key}&response=#{params["g-recaptcha-response"]}\""

      status   = `curl --request POST #{data} #{recaptcha_url}`
      hash     = JSON.parse(status)
      hash["success"] == true ? true : false
  end
end
