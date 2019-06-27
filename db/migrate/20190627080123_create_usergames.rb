class CreateUsergames < ActiveRecord::Migration[5.2]
  def change
    create_table :usergames do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true

    end
  end
end
