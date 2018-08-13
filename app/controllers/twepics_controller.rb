class TwepicsController < ApplicationController
  def index
    @twepics = Twepic.all
  end

  def new
    @twepic = Twepic.new
  end

  def create
    Twepic.create(twepic_params)
    redirect_to new_twepic_path
  end
  private
  def twepic_params
    params.require(:twepic).permit(:title, :content)
  end
end
