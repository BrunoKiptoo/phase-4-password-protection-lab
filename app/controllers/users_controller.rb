# class UsersController < ApplicationController

#     # before_action :create

#     def create
#       user = User.new(user_params)
#       if user.save
#         session[:user_id] = user.id
#         render json: user, status: :created
#       else
#         render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
#       end
#     end

#     def show
#         render json: current_user
#     end
  
#     private
  
#     def user_params
#       params.require(:user).permit(:username, :password, :password_confirmation)
#     end
#   end

class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation)
  end
end
  