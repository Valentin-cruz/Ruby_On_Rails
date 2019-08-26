class SurveysController < ApplicationController
    def index
        render "index"
    end

    def create 
        unless session[:count]
            session[:count] = 0
        end
        session[:count] += 1
        session[:name] = params[:name]
        session[:location] = params[:location]
        session[:language] = params[:language]
        session[:comment] = params[:comment]

        flash[:msg] = "Thanks for submitting form! Survey was submitted #{session[:count]} times."

        redirect_to "/results"
    end

    def results
        render "results"
    end
end
