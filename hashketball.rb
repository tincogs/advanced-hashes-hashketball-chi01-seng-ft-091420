require "pry"
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

def num_points_scored(player)
    points_scored = 0
      game_hash.each do |home_or_away, home_or_away_hash|
          home_or_away_hash.each do |team_key, team_data|
            if team_key == :players
              team_data.each do |player_key,player_data|
                if player_key[:player_name] == player
                  points_scored = player_key[:points]
                end
              end
            end
          end
        end
    points_scored
end


def shoe_size(player)
    size = 0
      game_hash.each do |home_or_away, home_or_away_hash|
          home_or_away_hash.each do |team_key, team_data|
            if team_key == :players
              team_data.each do |player_key,player_data|
                if player_key[:player_name] == player
                  size = player_key[:shoe]
                end
              end
            end
          end
        end
    size
end 


def team_colors(team)
    uniforms = []
        game_hash.each do |home_or_away, home_or_away_hash|
            home_or_away_hash.each do |team_key, team_data|
                if team_data == team
                uniforms = home_or_away_hash[:colors]
                end
            end
        end
    uniforms
end


def team_names
    teams = []
    game_hash.each do |home_or_away, home_or_away_hash|
        teams.push(home_or_away_hash[:team_name])
    end
    teams
end


def player_numbers(team)
    numbers = []
        game_hash.each do |home_or_away, home_or_away_hash|
            home_or_away_hash.each do |team_key, team_data|
                if team_data == team
                home_or_away_hash[:players].each do |player_key, player_data|
                numbers.push(player_key[:number])
                end
                end
            end
        end
    numbers
end


def player_stats(player)
      game_hash.each do |home_or_away, home_or_away_hash|
          home_or_away_hash.each do |team_key, team_data|
            if team_key == :players
              team_data.each do |player_key,player_data|
                if player_key[:player_name] == player
                return player_key
                end
              end
            end
          end
        end
end