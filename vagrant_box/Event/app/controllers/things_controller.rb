class ThingsController < ApplicationController
    def index
        @user = User.find(session[:user_id])
        @events = Thing.where(estate: current_user.state)
        @otherevents = Thing.where.not(estate: current_user.state)
    end

    def show
        @event = Event.find(params[:id]) 
    end

    def create
        @event = Thing.new(event_params)
        if @event.valid?
            @event.save
            return redirect_to '/events'
        else
            flash[:errors] = @event.errors.full_messages
            return redirect_to '/events'
        end
    end

    def edit
        @event = Thing.find(params[:id])
    end

    def update
        @event = Thing.find(params[:id])
        if @event.update(event_params)
            return redirect_to "/events"
        else
            flash[:errors] = @event.errors.full_messages
            return redirect_to "/events/#{params[:id]}/edit"
        end
    end

    def destroy
        @event = Thing.find(params[:id])
        if @event.destroy
            return redirect_to "/events"
        else
            flash[:errors] = @event.errors.full_messages
            return redirect_to "/events"
        end 
    end

    private
    def event_params
        params[:event][:user_id] = session[:user_id]
        params.require(:event).permit(:name, :edate, :ecity, :estate, :user_id)
    end

end
