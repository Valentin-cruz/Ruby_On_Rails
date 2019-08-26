class UsersController < ApplicationController
    def index
        # render 'login and registration'
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            return redirect_to '/events'
        else
            flash[:errors] = @user.errors.full_messages
            return redirect_to '/users'
        end
    end

    def show
    end

    def edit
    end

    def update
        @user = current_user
        if @user.update(user_params)
            return redirect_to "/users/:id", notice: 'Profile Updated'
        else
            flash[:errors] = @user.errors.full_messages
            return redirect_to "/users/#{current_user.id}/edit"
        end
    end

    def destroy
        session[:user_id] = nil
        User.find(params[:id]).destroy
        redirect_to "/users"
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
    end
end
