class HomeController < ApplicationController

  def index
    # @user = User.find(current_user)
    @links = Link.all
  end

end
