class UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        if user
          render json: user
        else
          render json: { error: "User not found."}, status: 404
        end
      end

    def signin
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          render json: { id: user.id, username: user.username, token: issue_token({ id: user.id }) }
        else
          render json: { error: 'Invalid username/password combination.' }, status: 401
        end
      end

    def signup 
      user = User.new(username: params[:username], email: params[:email], password: params[:password])
        if user.save 
            render json: user
        else 
            render json: { error: 'Unable to create new User.' }, status: 400
        end 
    end 

      def validate
        user = current_user
        # id = request.headers['Authorisation']
        # user = User.find_by(id: id)
        if user
          render json: { id: user.id, username: user.username, token: issue_token({ id: user.id }) }
        else
          render json: { error: 'User not found.' }, status: 404
        end
      end

    def library
        user = current_user
        if user  
          render json: user.games
          else
            render json: { error: 'Invalid token.' }, status: 404
          end
      end 
end
