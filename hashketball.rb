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


def num_points_scored(player_name)
  hash_info = game_hash
  
  hash_info.each { |team_name,team_info| 
    team_info[:players].each { |player_stats|
      if player_stats[:player_name] == player_name
        return player_stats[:points]
      end
    }
  }

  p "Sorry"

end


def shoe_size(player_name)
  hash_info = game_hash
  
  hash_info.each { |team_name,team_info| 
    team_info[:players].each { |player_stats|
      if player_stats[:player_name] == player_name
        return player_stats[:shoe]
      end
    }
  }

  p "Sorry"
end

def team_colors(team)
  hash_info = game_hash
  hash_info.each{ |team_name,team_info| 
    
    if team_info[:team_name] == team
      return team_info[:colors]
    end

  }

end


def player_numbers(team)
  
  info_hash = game_hash
  
  info_hash.each { |name,info|
    if info[:team_name] == team
      team_numbers = Array.new
      info[:players].each { |player|
        team_numbers << player[:number]
      }
      return team_numbers
    end
  }
  p "Sorry"
end

def team_names
  names = Array.new
  game_hash.each { |name,info|
    names << info[:team_name]
  }
  names
end

def player_stats(name)
  game_hash.each{ |side,info|
    info[:players].each { |player_stats|
      if player_stats[:player_name] == name
        return player_stats
        #.select{ |stat,stat_value| stat != :player_name }
      end
    }
  }
  p "Sorry"
end

def big_shoe_rebounds
  largest_shoe_size = 0
  largest_shoe_player = String.new
  game_hash.each { |side,info|
    info[:players].each { |player_stats|
      if player_stats[:shoe] > largest_shoe_size
        largest_shoe_size = player_stats[:shoe]
        largest_shoe_player = player_stats[:player_name]
      end
    }
  }
  player_stats(largest_shoe_player)[:rebounds]
end





# Write code here