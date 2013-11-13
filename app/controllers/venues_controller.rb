class VenuesController < ApplicationController
  def index
    if params[:mobile]
      render 'venue/mobile_index'
    else
      render 'venue/index'
    end
  end

  def create
    flash[:notice] = "Success!"
    redirect_to '/show'
  end

  def show
  end
end
