class TwepicsController < ApplicationController
  before_action :set_twepic, only: [:show, :edit, :update]

  def index
    @twepics = Twepic.all
  end

  def new
    @twepic = Twepic.new
  end

  def create
    @twepic = Twepic.create(twepic_params)
    if @twepic.save
      redirect_to twepics_path, notice: "投稿しました！"
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @twepic.update(twepic_params)
      redirect_to twepics_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  private
  def twepic_params
    params.require(:twepic).permit(:title, :content)
  end

  def set_twepic
    @twepic = Twepic.find(params[:id])
  end
end
