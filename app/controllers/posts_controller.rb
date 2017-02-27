class PostsController < ApplicationController

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)
		if @post.save
			flash[:success] = "Post successful"
			redirect_to root_url
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		if @post.save
			flash[:success] = "Post updated"
			redirect_to root_url
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		flash[:success] = "Post deleted"
		redirect_to root_url
	end

	private

		def post_params
			params.require(:post).permit(:title,:body)
		end
end
