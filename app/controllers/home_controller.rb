class HomeController < ApplicationController
  def show
    @page = page.find(params[:id])
    if @page.ispublihsed == false
      redirect_to root_path, alert:"This page does not exist."
  end
end
