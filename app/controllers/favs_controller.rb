class FavsController < ApplicationController
  before_action :set_fav, only: %i[show edit update destroy]

  # GET /favs or /favs.json
  def index
    @favs = Fav.where(params[:user_id]).includes(%i[beach])
    render json: @favs
    puts @favs
  end

  # GET /favs/1 or /favs/1.json
  def show; end

  # GET /favs/new
  def new
    @fav = Fav.new
  end

  # GET /favs/1/edit
  def edit; end

  # POST /favs or /favs.json
  def create
    @fav = Fav.create!(fav_params)
    render json: { fav: @fav, status: :created }
  end

  def destroy
    fav = Fav.find(params[:id])
    fav.delete
    head :no_content
  end

  private

  def set_fav
    @fav = Fav.find(params[:id])
  end

  def fav_params
    params.require(:fav).permit(:user_id, :beach_id)
  end
end
