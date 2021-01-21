class UsersController < ApplicationController
    
    def show
        @user = User.find(params[:id])
        @image = @user.image
    end
    
    def edit
    end
    
    def update
        current_user.update(update_params)
        redirect_to controller: :users, action: :show
    end
    
    private
    def update_params
        params.permit(:baby_nickname, :birthday, :gender, :image)
    end
end
