class StaticPagesController < ApplicationController

	def index
		@post = Post.all
	end

	def about
	end

	def faq
	end

	def contact
	end
	
end
