class UsersController < ApplicationController

    before_action :require_login, except: [:new, :create]

    def new
        @user=User.new
    end

    def create
        @user=User.create(user_params)
        @user.save
        if @user.valid?
            session[:user_id]=@user.id
            # redirect_to user_path(@user)
            redirect_to root_url
        else
            render :new
        end
    end

    def show
        find_user
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :password)
    end

end