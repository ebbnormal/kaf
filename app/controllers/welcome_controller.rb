class WelcomeController < ApplicationController
  def index
  end

  def home
    client = Tumblr::Client.new
    blog = client.posts("kafcollective.tumblr.com", :limit => 10)
    @posts = blog["posts"]
  end
end
