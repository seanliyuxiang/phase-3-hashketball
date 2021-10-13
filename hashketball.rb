# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


# Write code here
def num_points_scored(player_name)
  # assign game hash
  game = game_hash

  # get an array of home team players and an array of away team players
  home_team_players_arr = game[:home][:players]
  away_team_players_arr = game[:away][:players]
  
  # create an empty array to contain players from both teams
  # shovel all players into this array
  all_players_arr = []
  home_team_players_arr.each { |player| all_players_arr << player }
  away_team_players_arr.each { |player| all_players_arr << player }

  # iterate through all players to find the points scored by a specific player
  all_players_arr.each do |player|
    if player[:player_name] == player_name
      return player[:points]
    end
  end
end


def shoe_size(player_name)
  # assign game hash
  game = game_hash

  # get an array of home team players and an array of away team players
  home_team_players_arr = game[:home][:players]
  away_team_players_arr = game[:away][:players]
  
  # create an empty array to contain players from both teams
  # shovel all players into this array
  all_players_arr = []
  home_team_players_arr.each { |player| all_players_arr << player }
  away_team_players_arr.each { |player| all_players_arr << player }

  # iterate through all players to find the shoe size of a specific player
  all_players_arr.each do |player|
    if player[:player_name] == player_name
      return player[:shoe]
    end
  end
end


def team_colors(team_name)
  # assign game hash
  game = game_hash

  # iterate through the game hash to find the target team name and return its colors
  game.each do |key, value|
    if value[:team_name] == team_name
      return value[:colors]
    end
  end
end


def team_names
  # assign game hash
  game = game_hash

  # create an empty array to contain the team names
  team_names_arr = []
  game.each do |key, value|
    team_names_arr << value[:team_name]
  end

  team_names_arr
end


def player_numbers(team_name)
  # assign game hash
  game = game_hash

  # iterate through the game hash to find the target team name
  # map through the players array of the target team
    # to return a new array containing its players' jersey numbers
  game.each do |key, value|
    if value[:team_name] == team_name
      return value[:players].map { |player| player[:number] }
    end
  end
end


def player_stats(player_name)
  # assign game hash
  game = game_hash

  # get an array of home team players and an array of away team players
  home_team_players_arr = game[:home][:players]
  away_team_players_arr = game[:away][:players]
  
  # create an empty array to contain players from both teams
  # shovel all players into this array
  all_players_arr = []
  home_team_players_arr.each { |player| all_players_arr << player }
  away_team_players_arr.each { |player| all_players_arr << player }

  # iterate through all players to find the target player
  all_players_arr.each do |player|
    if player[:player_name] == player_name
      return player
    end
  end
end


def big_shoe_rebounds
  # assign game hash
  game = game_hash

  # get an array of home team players and an array of away team players
  home_team_players_arr = game[:home][:players]
  away_team_players_arr = game[:away][:players]
  
  # create an empty array to contain players from both teams
  # shovel all players into this array
  all_players_arr = []
  home_team_players_arr.each { |player| all_players_arr << player }
  away_team_players_arr.each { |player| all_players_arr << player }

  # initialize variables
  largest_shoe_size = all_players_arr.first[:shoe]
  rebounds = all_players_arr.first[:rebounds]
  # iterate through all players to find the rebounds of the player with the largest shoe size
  all_players_arr.each do |player|
    if player[:shoe] > largest_shoe_size
      largest_shoe_size = player[:shoe]
      rebounds = player[:rebounds]
    end
  end

  rebounds
end