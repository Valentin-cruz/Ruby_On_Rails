class RpgController < ApplicationController

    def index
        unless session[:gold_total] && session[:msgs]
            session[:gold_total] = 0
            session[:msgs] = []
        end
        @gold_total = session[:gold_total]
        @msgs = session[:msgs]
        render "index"
    end

    def game
        case params[:card]
            when "farm"
                gold = rand(10..20)
            when "cave"
                gold = rand(5..10)
            when "house"
                gold = rand(2..5)
            else
                gold = rand(-60..60)
        end

        session[:gold_total] += gold

        if gold >= 0
            session[:msgs].unshift("Earned #{gold} from the #{params[:card]}! #{Time.now.strftime("%Y/%m/%d %I:%M %P")}")
        else 
            session[:msgs].unshift("Lost #{gold.abs} from the #{params[:card]}! #{Time.now.strftime("%Y/%m/%d %I:%M %P")}")
        end

        redirect_to "/"
    end

    def reset 
        session[:gold_total], session[:msgs] = nil
        redirect_to "/"
    end
end
