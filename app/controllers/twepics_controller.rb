class TwepicsController < ApplicationController
  def index
    @twepics = Twepic.all
  end

  def new
    @twepic = Twepic.new
  end

  def create
    @twepic = Twepic.create(twepic_params)
    if @twepic.save
      redirect_to new_twepic_path
    else
      render 'new'
    end
  end

  def show
    @twepic = Twepic.find(params[:id])
  end

  private
  def twepic_params
    params.require(:twepic).permit(:title, :content)
  end
end
