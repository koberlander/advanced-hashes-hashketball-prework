require 'pry'

# Write your code here!
def game_hash
  game_hash =
  {
        :home => {
           :team_name => "Brooklyn Nets", 
           :colors => ["Black", "White"], 
           :players => {
             "Alan Anderson" => {
               :number => 0, 
               :shoe => 16, 
               :points => 22, 
               :rebounds => 12, 
               :assists => 12, 
               :steals => 3, 
               :blocks => 1, 
               :slam_dunks => 1}, 
             "Reggie Evans" => {
               :number => 30, 
               :shoe => 14, 
               :points => 12, 
               :rebounds => 12, 
               :assists => 12, 
               :steals => 12, 
               :blocks => 12, 
               :slam_dunks => 7}, 
             "Brook Lopez" => {
               :number => 11, 
               :shoe => 17, 
               :points => 17, 
               :rebounds => 19, 
               :assists => 10, 
               :steals => 3, 
               :blocks => 1, 
               :slam_dunks => 15 }, 
             "Mason Plumlee" => {
               :number => 1, 
               :shoe => 19, 
               :points => 26, 
               :rebounds => 12, 
               :assists => 6, 
               :steals => 3, 
               :blocks => 8, 
               :slam_dunks => 5 }, 
             "Jason Terry" => {
               :number => 31, 
               :shoe => 15, 
               :points => 19, 
               :rebounds => 2, 
               :assists => 2, 
               :steals => 4, 
               :blocks => 11, 
               :slam_dunks => 1 },
          
        }
    
  },

       :away => {
           :team_name => "Charlotte Hornets", 
           :colors => ["Turquoise", "Purple"], 
           :players => {
             "Jeff Adrien" => {
               :number => 4, 
               :shoe => 18, 
               :points => 10, 
               :rebounds => 1, 
               :assists => 1, 
               :steals => 2, 
               :blocks => 7, 
               :slam_dunks => 2}, 
             "Bismak Biyombo" => {
               :number => 0, 
               :shoe => 16, 
               :points => 12, 
               :rebounds => 4, 
               :assists => 7, 
               :steals => 7, 
               :blocks => 15, 
               :slam_dunks => 10 }, 
             "DeSagna Diop" => {
               :number => 2, 
               :shoe => 14, 
               :points => 24, 
               :rebounds => 12, 
               :assists => 12, 
               :steals => 4, 
               :blocks => 5, 
               :slam_dunks => 5 }, 
             "Ben Gordon" => {
               :number => 8, 
               :shoe => 15, 
               :points => 33, 
               :rebounds => 3, 
               :assists => 2, 
               :steals => 1, 
               :blocks => 1, 
               :slam_dunks => 0 }, 
             "Brendan Haywood" => {
               :number => 33, 
               :shoe => 15, 
               :points => 6, 
               :rebounds => 12, 
               :assists => 12, 
               :steals => 22, 
               :blocks => 5, 
               :slam_dunks => 12 },
          
        }
        
  }
    
}end


# pass in player_name and return the number of points they num_points_scored

def num_points_scored(player_name)
# location = home or away, team_data = list of each player /stats for location
  game_hash.each do | location, team_data |
    
  # attribute = :keys, team_data = stats for a particular team
  # want to find the players key, that is where the points are stored
     team_data.each do | attribute, data |
      if attribute == :players
    
    #once :players is located we need to find the correct player name and iterate to the :points 
        data.each do | name, statistic |
          if name == player_name
    
    #return the number of points for player_name
            return statistic[:points] 
        end
      end
     end 
     end
   end
end


def shoe_size(player_name)
# use same method as above to drill into stats, but this time use it for shoe size
game_hash.each do | location, team_data |
  
  team_data.each do | attribute, data |
      if attribute == :players
        
        data.each do | name, statistic |
          if name == player_name
    #return the shoe size of player_name
            return statistic[:shoe] 
        end
      end
     end 
     end
   end
end 

def team_colors(team_name)
#enter the hash, location = home, team-data = list of each player /stats for location
game_hash.each do | location, team_data |
  
  # while iterating through each element, if the team name passed into the method = equals the team name we land on
  if  team_name == team_data[:team_name]
  
  # return those colors
  return team_data[:colors] 
  end
 end
end

def team_names
  #enter the hash, location = home, team-data = list of each player /stats for location
game_hash.collect do | location, team_data |
  
  #return both team names, but leave out the "return" or else you will only get one team name :)
  team_data[:team_name] 
end
end
 
 
def player_numbers(team_name) 

end
 

def player_stats(player_name)
# location = home or away, team_data = list of each player /stats for location
  game_hash.each do | location, team_data |
    
    #drill into the next layer. Since team_data lists everything about one particular team, isolate the :players key
    team_data.each do | attribute, data |
      if attribute == :players
        
        # drill down to a player name and their stats. Check to see if the name key matches the player name that was passed in (player_name)
        data.each do | name, statistics |
          if name == player_name
            
    
end
end
end
end 
end 
end
 
 
def big_shoe_rebounds
#find player with largest shoe size


#return that player's number of rebounds
team_

end


# def most_points_scored
# end

# def winning_team
# end

 