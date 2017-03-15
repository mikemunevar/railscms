class ApplicationController < ActionController::Base
  #MDM
  before_filter :getPageNav
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #MDM xxxxxxxxxxxxxxxxxxxxx
  def getPageNav
  # @pageNav = Page.where("menu_display = true && is_published = true").order(order: :asc)
  # @pageNav = Page.where("menu_display = true").order(order: :asc)
    @pageNav = Page.where("menu_display = ? and is_published = ?").order(order: :asc)

  end
end
