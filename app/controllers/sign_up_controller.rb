class SignUpController < ApplicationController
  def create
    @user = User.new({
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:confirm_password]
    });
    if @user.save
      render json: {message: "User has now been signed up"}
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

end
