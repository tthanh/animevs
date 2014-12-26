class HomeController < ApplicationController
  require 'nokogiri_crawler'
  def index
    @posts = Post.order(:created_at => :desc)
  end

  def craw
    fansub = Fansub.first
    crawler = ::NokogiriCrawler.new
    fansub_tag = fansub.tag
    data = crawler.fansub_crawler(fansub, fansub_tag)
    data.each do |post|
      post.save
    end
    redirect_to root_url
  end
end
