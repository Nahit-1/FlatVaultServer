class Game < ApplicationRecord
    has_many :starratings
    has_many :usergames
    has_many :users, through: :usergames
    has_many :users, through: :starratings
    has_many :reviews, through: :usergames
end
