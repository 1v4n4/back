class RegistrationsController < ApplicationController
  def index
    @users = User.all
    render json: { users: @users }
  end

  def create
    user = User.find_by(email: params[:user][:email])
    if user
      render json: { message: 'User already exists' }
    else

      user = User.create!(
        name: params['user']['name'],
        email: params['user']['email'],
        password: params['user']['password'],
        password_confirmation: params['user']['password_confirmation']
      )
      if user
        session[:user_id] = user.id
        render json: {
          status: :created,
          user: user
        }
      else
        render json: { message: user.errors.full_messages[0] }, status: 422
      end
    end
  end
end
