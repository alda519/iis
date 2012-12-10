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
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def have_to_be_admin
        unless @current_user.admin?
            flash[:alert] = "You are not authorized to do that"
            redirect_to root_path
        end
    end

    def have_to_be_policeman
        unless @current_user.policeman? or @current_user.admin?
            flash[:alert] = "You are not authorized to do that"
            redirect_to root_path
        end
    end

    def have_to_be_judge
        unless @current_user.judge? or @current_user.admin?
            flash[:alert] = "You are not authorized to do that"
            redirect_to :root_path
        end
    end

    def have_to_be_clerk
        unless @current_user.clerk? or @current_user.admin?
            flash[:alert] = "You are not authorized to do that"
            redirect_to root_path
        end
    end

end
