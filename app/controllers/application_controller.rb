class ApplicationController < ActionController::Base
    protect_from_forgery

    def to_s
        controller_name.split("_").map { |x| x.capitalize }.join(" ")
    end

end
