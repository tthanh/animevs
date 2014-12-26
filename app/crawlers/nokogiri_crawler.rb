class NokogiriCrawler
	require 'open-uri'
	def initialize

	end

	def fansub_crawler(fansub, tag)
		posts = [] #array of Post after parse html
		fansub_homepage = fansub.homepage
		page = Nokogiri::HTML(open(fansub_homepage))
		post_tag = tag.post
		page_posts = page.css(post_tag)
		page_posts.each do |page_post|
			title = page_post.css(tag.title).text
			title = fansub.name + " - " + title
			link = page_post.css(tag.link).attr("href")
			image_url = page_post.css(tag.image_url).first["data-lazy-src"]
			if image_url
				image_url = page_post.css(tag.image_url).first["src"]
			end
			public_date = page_post.css(tag.public_date).text

			post = Post.new(
				fansub: fansub,
				title: title,
				link: link,
				image: image_url,
				public: public_date
			)
			posts.push(post)
		end
		posts
	end


end
