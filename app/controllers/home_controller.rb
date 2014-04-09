class HomeController < ApplicationController

  def index
    @user = User.find(current_user.id)
    @links = Link.all
  end

end
