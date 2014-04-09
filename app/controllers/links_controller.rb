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
		@user = User.find(params[:id])
		@link = Link.new(link_params)
	end

	def create
		@link = Link.new(link_params)
		@link.save
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
		params.require(:link).permit(:title, :url, :rank)
	end

end
