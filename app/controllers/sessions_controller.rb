class SessionsController < ApplicationController
  
  skip_before_action :require_login, only: :create

  def create
    user = User.valid_login?(params[:user_name], params[:password])
    if user
      user.regenerate_token
      render json: user.to_json(only: [:id,:name,:user_name,:token ,:type])
    else
      render_unauthorized('Incorrect email or password')
    end
  end

  def destroy
    current_user.invalidate_token
    head :ok
  end
end
