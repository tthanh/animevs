class HomeController < ApplicationController
	require 'nokogiri_crawler'
	def index
		@posts = Post.order(:created_at => :desc)
	end

	def craw
		fansubs = Fansub.all
		fansubs.each do |fansub|
			if fansub.tag
				crawler = ::NokogiriCrawler.new
				fansub_tag = fansub.tag
				posts = crawler.fansub_crawler(fansub, fansub_tag)
				posts.each do |post|
					post.save
				end
			end
		end
		redirect_to root_url
	end
end
