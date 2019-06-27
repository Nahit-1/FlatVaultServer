class User < ApplicationRecord
    has_many :usergames
    has_many :starratings
    has_many :reviews, through: :usergames
    has_many :games, through: :usergames 
    has_many :games, through: :starratings
end
