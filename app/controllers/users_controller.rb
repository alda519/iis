class UsersController < ApplicationController

    before_filter :authenticate_user

    def new
        @user = User.new
    end

    def create
        unless @current_user.admin?
            redirect_to root_url, :warn => 'You are not authorized to create new users.'
            return
        end
        @user = User.new(params[:user])
        if @user.save
            redirect_to root_url, :notice => 'New user created.'
        else
            render :new
        end
    end

    def index
        @users = User.all
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])

        if @current_user.admin?
            params[:user][:role_ids] ||= []
        elsif @current_user == @user
            params[:user].delete(:role_ids)
        else
            flash[:error] = "You are not authorized to update users."
            redirect_to users_path, :notice => "YOYO"
            return
        end

        if @user.update_attributes(params[:user])
            redirect_to :action => :index
        else
            render :edit
        end
    end

    def destroy
    end

end
