# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(name: 'Tetris', slug: 'tetris', metacritic: 87, imageurl: 'google.com/images/1', platform: 'GameBoy', genre: 'Puzzle')

User.create(username: 'Nahit', email: 'nahit@nahit.com', password_digest: 'test', bio: 'Hello world! my name is Nahit', accountbalance: 279)

Usergame.create(user_id: 1, game_id: 1)

Review.create(content: 'This game is so freaking awesome!!!!11!', usergame_id: 1)

Starrating.create(rating: 5, user_id: 1, game_id: 1)








#   create_table "starratings", force: :cascade do |t|
#     t.integer "rating"
#     t.bigint "user_id"
#     t.bigint "game_id"
#     t.index ["game_id"], name: "index_starratings_on_game_id"
#     t.index ["user_id"], name: "index_starratings_on_user_id"
#   end


#   

#   add_foreign_key "reviews", "usergames"
#   add_foreign_key "starratings", "games"
#   add_foreign_key "starratings", "users"
#   add_foreign_key "usergames", "games"
#   add_foreign_key "usergames", "users"
# end