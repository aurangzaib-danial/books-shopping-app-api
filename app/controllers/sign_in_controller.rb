class SignInController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    if (@user && @user.authenticate(params[:password]))
      render json: {
        user: {
          id: @user.id,
          email: @user.email
        },
        message: 'User authenticated'
      }
    else
      render json: {message: 'Incorrect credentials'}, status: :unauthorized
    end
  end
end
