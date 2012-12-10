class UsersController < ApplicationController

    before_filter :authenticate_user

    before_filter :have_to_be_admin, :only => [:new, :create, :destroy]

    def new
        @user = User.new
    end

    def create
        unless @current_user.admin?
            redirect_to root_url, :alert => 'You are not authorized to create new users.'
            return
        end
        @user = User.new(params[:user])
        if @user.save
            redirect_to users_url, :notice => 'New user created.'
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
            params[:user].delete(:password)
        else
            redirect_to users_path, :alert => "You are not authorized to update users."
            return
        end

        if @user.update_attributes(params[:user])
            redirect_to users_path, :notice => "Account updated"
        else
            render :edit
        end
    end

    def destroy
        if @current_user.admin?
            u = User.find_by_id(params[:id])
            if u.delete
                redirect_to users_url, :notice => "Account deleted"
            else
                redirect_to root_url, :alert => "Account not found"
            end
        else
            redirect_to users_url, :alert => "You are not authorized to delete this account"
        end
    end

    def change_password
        @user = @current_user
        if @user.authenticate params[:password]
            if params[:password_new] == params[:password_confirmation]
                @user.password = params[:password_new]
                @user.save
                flash[:notice] = "Password changed"
                redirect_to users_path
            else
                flash.now[:alert] = "Password doesn't match confirmation"
            end
        else
            flash.now[:alert] = "Invalid password" if params[:password]
        end
    end

end
