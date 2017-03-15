class HomeController < ApplicationController
  def show
    @pages = Page.where("featured = ?")
  end

end
