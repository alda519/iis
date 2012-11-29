class IndexController < ApplicationController

    before_filter :authenticate_user, :only => :index

    def index
    end

    def bakule
    end

end
