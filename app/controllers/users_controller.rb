class UsersController < ApplicationController

    def index 
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Hi #{@user.fullname}. You have successfully signed up"
            redirect_to users_path
        else 
            render 'new'
        end
    end

    def edit
        @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = "You have updated your account successfully"
        redirect_to users_path
      else
        render 'edit'
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = "User was deleted successfully"
      redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :middle_name, :last_name)
    end
end