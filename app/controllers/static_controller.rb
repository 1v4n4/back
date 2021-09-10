class StaticController < ApplicationController
  def home
    render json: { status: 'Hellou!' }
  end
end
