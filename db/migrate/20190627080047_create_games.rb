class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :slug
      t.integer :metacritic
      t.string :imageurl
      t.string :platform
      t.string :genre

    end
  end
end
