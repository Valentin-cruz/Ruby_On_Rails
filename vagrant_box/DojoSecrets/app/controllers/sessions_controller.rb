class SessionsController < ApplicationController
  def new
    render 'new'
  end
  def create
    @user = User.find_by_email(params[:user][:email]).try(:authenticate, params[:user][:password])
    puts "this is the user #{@user}"
    if @user
      session[:user_id] = @user.id
      return redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = ["Invalid Credentials"]
      return redirect_to '/sessions/new'
    end
      # Log User In
      # if authenticate true
          # save user id to session
          # redirect to users profile page
      # if authenticate false
          # add an error message -> flash[:errors] = ["Invalid"]
          # redirect to login page
  end
  def destroy
    session[:user_id] = nil
    redirect_to "/sessions/new", notice: "logged out"
      # Log User out
      # set session[:user_id] to null
      # redirect to login page
  end
  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
