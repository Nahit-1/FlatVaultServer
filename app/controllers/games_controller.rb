class GamesController < ApplicationController

    def index 
        @game = Game.all
        render json: Game.all
    end 
end
