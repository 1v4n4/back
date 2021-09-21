class BeachesController < ApplicationController
   before_action :set_beach, only: %i[ show edit update destroy ]

  def index
    @beaches = Beach.all
    render json: @beaches
  end

def humboldt
  @humboldt = Beach.humboldt
  render json: @humboldt
end

def mendosino
  @mendosino = Beach.mendosino
  render json: @mendosino
end

def sonoma
  @sonoma = Beach.sonoma
  render json: @sonoma
end

def marin
  @marin = Beach.marin
  render json: @marin
end


def sanfrancisco
  @sanfrancisco = Beach.sanfrancisco
  render json: @sanfrancisco
end


def sanmateo
  @humboldt = Beach.sanmateo
  render json: @sanmateo
end

def santacruz
  @santacruz = Beach.santacruz
  render json: @santacruz
end
def monterey
  @monterey = Beach.monterey
  render json: @monterey
end

def sanluis
  @sanluis = Beach.sanluis
  render json: @sanluis
end


def santabarbara
  @santabarbara = Beach.santabarbara
  render json: @santabarbara
end

def ventura
  @ventura = Beach.ventura
  render json: @ventura
end

def losangeles
  @losangeles = Beach.losangeles
  render json: @losangeles
end

def orange
  @orange = Beach.orange
  render json: @orange
end

def sandiego
  @sandiego = Beach.sandiego
  render json: @sandiego
end

def show
    @beach = Beach.find(params[:id])
    render json: { beach: @beach }
  end

def create
    @beach = Beach.create!(beach_params)

    render json: @beach, status: :created
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_beach
    @beach = Beach.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def beach_params
    params.require(:beach).permit(:name, :county, :location, :description, :parking, :restrooms, :campground,
                                  :photo1, :photo2, :photo3, :photo4)
  end
end
