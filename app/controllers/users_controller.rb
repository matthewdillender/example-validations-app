class UsersController < ApplicationController

  def create
    @user = User.create(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )
    if @user.valid? #happy path
      render :show
    else #sad path
      render json: { message: { errors: @user.errors.full_messages } },
             status: 422
    end
  end

  def update
    @user = User.update(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"]
    )
    if @user.valid? #happy path
      render :show
    else #sad path
      render json: { message: { errors: @user.errors.full_messages } },
             status: 422
    end
  end

end
  
