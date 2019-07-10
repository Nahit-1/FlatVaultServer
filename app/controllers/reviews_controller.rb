class ReviewsController < ApplicationController
    def index 
        @review = Review.all
        render json: Review.all
    end 

    def show 
        review = Review.find_by(id: params[:id])
        if review 
            render json: review 
        else 
            render json: { error: 'Review not found.' }, status: 404
        end 
    end 

    def create 
        usergame = Usergame.find_by({:user_id => params[:user_id], :game_id => params[:game_id]})
        if usergame
            review = Review.new(content: params[:content], usergame_id: usergame.id)
            if review.save 
                render json: review
            else 
                render json: { error: 'Unable to create review.' }, status: 400
            end 
        else
            render json: {msg: '`errrrrrpor WHat'}
        end
    end 
end
