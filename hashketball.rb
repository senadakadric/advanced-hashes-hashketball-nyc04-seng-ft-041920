require 'pry'
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
  # first iterating through outer hash, getting home or away as the keys and inner hashes of name, colors, players as value
  game_hash.each do |home_or_away, team_info|
    
    # :players key points to a value of player stats that is stored as an ARRAY of hashes, you can iterate through this array to access each hash by using team_info[:players] syntax
    # below team_info[:players] is an array of hashes, player_stats represents each HASH in that aray
    team_info[:players].each do |player_stats|
      if player_stats[:player_name] == player_name
         return player_stats[:points]
        end
    end
  end
end

def shoe_size(player_name)
  #using the same technique as points scored, but replacing the value w/ shoe size (:shoe) instead of :points
  game_hash.each do |home_or_away, team_info|
    team_info[:players].each do |player_stats|
      if player_stats[:player_name] == player_name
         return player_stats[:shoe]
        end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |home_or_away, team_info|
    if team_info[:team_name] == team_name
      return team_info[:colors]
    end
  end
end

def player_numbers(team_name)
  jersey_numbers = []
  
  game_hash.each do |home_or_away, team_info|
    if team_info[:team_name] == team_name
      team_info[:players].each do |player_stats|
        jersey_numbers << player_stats[:number]
      end
    end
  end
  
  jersey_numbers
end