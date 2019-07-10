class User < ApplicationRecord
    has_many :usergames
    has_many :starratings
    has_many :reviews, through: :usergames
    has_many :games, through: :usergames 

    def starred_games
        self.starratings.map{|r| r.game}
    end

    has_secure_password
end
