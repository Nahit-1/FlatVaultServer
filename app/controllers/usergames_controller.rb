class UsergamesController < ApplicationController

    def create 
        usergame = Usergame.new(game_id: params[:game_id], user_id: params[:user_id])
        if usergame.save 
            render json: usergame
        else 
            render json: { error: 'Unable to create usergame.' }, status: 400
        end 
    end 
    
end
