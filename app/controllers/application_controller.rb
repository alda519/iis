class ApplicationController < ActionController::Base
    protect_from_forgery

    def to_s
        controller_name.split("_").map { |x| x.capitalize }.join(" ")
    end

    def authenticate_user
        current_user
        if @current_user == nil
            redirect_to log_in_path, :alert => "You must be logged in."
        elsif Time.now > session[:timeout]
            session[:user_id] = nil
            redirect_to log_in_path, :alert => "Your session expired due to inactivity."
        else
            session[:timeout] = Time.now + 1800
        end
    end

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

end
