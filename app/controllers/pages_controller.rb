class PagesController < ApplicationController
  def home
    respond_to do |format|
      format.html
      format.json { render json: @restaurant_count }
    end
  end
end
