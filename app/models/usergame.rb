class Usergame < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_one :review 
end
