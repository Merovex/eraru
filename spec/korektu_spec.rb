require_relative "spec_helper"
require_relative "../korektu.rb"

def app
  Korektu
end

describe Korektu do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
