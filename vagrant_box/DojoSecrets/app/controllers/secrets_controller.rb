class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end
  
  def create
    @secret = Secret.new(secret_params)
    if @secret.valid?
      @secret.save
      return redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = @secret.errors.full_messages
      return redirect_to "/users/#{session[:user_id]}"
    end
  end

  def destroy
  end 
  private
    def secret_params
      params.require(:secret).permit(:content, :user_id)
    end

end
