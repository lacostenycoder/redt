class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def my_links
		@links = current_user.links
	end

	def show
		@user = User.find(params[:id])
		@links = Link.find(params[:id])
	end

	def new
		@user = User.find(current_user.id)
		@link = Link.new
	end

	def create
		@link = Link.new(link_params)
		@link.rank = 0
		@link.user_id = (current_user)
		@link.save
		redirect_to root
	end

	def edit
		@link = Link.find(params[:id])
	end

	def update
		@link = Link.find(params[:id])
		@link.update(link_params)
	end

	def destroy
		@link = Link.find(params[:id])
		@link.destroy
	end

	private
	def link_params
		params.require(:link).permit(:title, :url)
	end

end
