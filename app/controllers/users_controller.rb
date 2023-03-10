class UsersController < ApplicationController
    def create
        @user = user.create(user_params)

        if @user.valid?
            token = encode_token({user_id: @user.id})
            render json: { user: @user, token: :token}, status: :ok
        else
            render json: {error: 'Invalid username or password'}, status: :unprocessable_entity
    end 

    private

    def user_params
        params.permit(:username, :password)
    end 
end
