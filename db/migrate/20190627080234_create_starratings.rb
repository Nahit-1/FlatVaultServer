class CreateStarratings < ActiveRecord::Migration[5.2]
  def change
    create_table :starratings do |t|
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true

    end
  end
end
