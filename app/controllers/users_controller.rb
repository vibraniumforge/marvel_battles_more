class UsersController < ApplicationController

    before_action :require_login, except: [:new, :create]

    def new
        @user=User.new
    end

    def create
        @user=User.create(user_params)
        if @user.save
            session[:user_id]=@user.id
            flash[:success] = "User created!"
            redirect_to user_path(@user)
            # redirect_to root_url
        else
            flash[:error] = "User NOT created!"
            puts @user.errors.full_messages
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