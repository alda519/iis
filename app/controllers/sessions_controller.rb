class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by_login(params[:login])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            session[:timeout] = Time.now + 1800 # 30 min. timeout
            redirect_to root_path, :notice => "Successfully logged in."
        else
            flash[:alert] = "Invalid name or password"
            redirect_to log_in_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to log_in_path, :notice => "Logged out."
    end

    #def index
    #end
    
end
