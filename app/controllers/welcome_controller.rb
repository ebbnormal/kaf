class WelcomeController < ApplicationController
  def index
  end

  def contact
  end

  def document
  end

  def about
    @offset = params[:offset]
    if @offset then
      tumblr_offset = @offset.to_i * 7
    else
      tumblr_offset = 0
      @offset = 0
    end
    @next = @offset.to_i + 1
    @back = @offset.to_i - 1
    client = Tumblr::Client.new
    blog = client.posts("kafcollective.tumblr.com", :limit => 7, :offset => tumblr_offset)
    @posts = blog["posts"]
  end

  def home
    @offset = params[:offset]
    if @offset then
      tumblr_offset = @offset.to_i * 7
    else
      tumblr_offset = 0
      @offset = 0
    end
    @next = @offset.to_i + 1
    @back = @offset.to_i - 1
    client = Tumblr::Client.new
    blog = client.posts("kafcollective.tumblr.com", :limit => 7, :offset => tumblr_offset)
    @posts = blog["posts"]
  end
end
