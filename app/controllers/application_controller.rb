class ApplicationController < ActionController::API
  private
  def decode_token
    JWT.decode(params["token"], Rails.application.credentials.dig(:authjs), true, algorithm: 'HS256')[0]
  end
end
