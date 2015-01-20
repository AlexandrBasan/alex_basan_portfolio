class SitemapController < ApplicationController
  def index
    @static_pages = [root_url]
    @users = User.all
    @blogs = Blog.all
    respond_to do |format|
      format.xml
    end
  end
end
