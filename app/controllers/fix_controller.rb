class FixController < ApplicationController
	protect_from_forgery except: :create_github_issue
	def create_github_issue
		require 'octokit'
	    require 'awesome_print'
		# TYPO , SYNTAX , IDEA, IMPLAUSIBLE, CONFUSION , DULL

	    repo_name = 'postal-marine-series.verki'
	    repo_name = 'Konspiro'
	    user_name = 'Merovex'

	    format = (params[:pbk] == 'on') ? 'pbk' : 'mobi'

	    issue = {
	      # params: params,
	      title: "#{params[:kind]} in #{params[:book]} at #{format[0]}.#{params[:location]}",
	      labels: [
	        params[:kind].downcase
	      ]
	    }
	    labels = [params[:kind].downcase, 'reader']
	    name = (params[:name] != '') ? params[:name] : 'Anonymous'
	    reported_by = "Reported by: #{name} (#{params[:email]})".gsub('()',"")
	    text =<<-EOT
## Contributor
* #{reported_by}

## Metadata
* Book: #{params[:book]}
* Edition: #{params[:edition]}
* #{format}. #{params[:location]}

## Description

#{params[:text].gsub(/^#/, '###')}
EOT

	    github = Octokit::Client.new(:access_token => ENV['github_secret'])
	    repo = "#{user_name}/#{params[:repo]}"
	    ap github.list_issues repo

	    res = github.create_issue(repo, issue[:title], text, {labels: labels})
	    redirect_to "http://dausha.net/korektu/thanks?b=#{params[:book]}"
	    # ap res
	end
end
