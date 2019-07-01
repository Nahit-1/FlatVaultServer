# Game.create(name: 'Tetris', slug: 'tetris', metacritic: 87, imageurl: 'google.com/images/1', platform: 'GameBoy', genre: 'Puzzle')

# User.create(username: 'Nahit', email: 'nahit@nahit.com', password_digest: 'test', bio: 'Hello world! my name is Nahit', accountbalance: 279)

# Usergame.create(user_id: 1, game_id: 1)

# Review.create(content: 'This game is so freaking awesome!!!!11!', usergame_id: 1)

# Starrating.create(rating: 5, user_id: 1, game_id: 1)

require 'rest-client'

# GAME API ENDPOINT
# data['results'][0] this gets the first game g
# data['results'][0]['metacritic'] this gets the metacritic score 
# data['results'][0]['name'] this gets the game name
# data['results'][0]['slug'] this gets the slug name 
# data['results'][0]['genres'][0]['name'] this gets the name of first genre classification 

# games[0] and games[1] does get the right games... 
url = "https://api.rawg.io/api/games?page="

10.times do |number|
	response = RestClient.get("#{url}#{number + 1}")
	data = JSON.parse(response)
    games = data["results"]
    # byebug
    games.each do |game|
		new_game = Game.new(
            name: game["name"],
            slug: game["slug"],
            metacritic: game["metacritic"],
            imageurl: game["background_image"],
            platform: game['platforms'][0]['platform']['name'],
            genre: game["genres"][0]['name']
        )
        if !new_game.save
            puts new_game.errors.full_messages
        end
	end
end

# create_table "games", force: :cascade do |t|
#     t.string "name"
#     t.string "slug"
#     t.integer "metacritic"
#     t.string "imageurl"
#     t.string "platform"
#     t.string "genre"
#   end