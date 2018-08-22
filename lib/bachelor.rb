require 'pry'

def get_first_name_of_season_winner(data, season)
  winner =""
  data[season].each { |inner_hash|
      inner_hash.each { |category, result|
        if category == "status" && result == "Winner"
          winner = inner_hash["name"] 
        end
      }
  }
  winner.split(" ")[0]
  
end

def get_contestant_name(data, occupation)
  contestant = ""
  data.each { |season, values|
    values.each { |inner_hash|
      inner_hash.each { |category, result|
        if category == "occupation" && occupation == result
          contestant = inner_hash["name"]
        end  
      }
    }
  }
  contestant 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each { |season, values|
    values.each { |inner_hash|
      if inner_hash["hometown"] == hometown 
        counter+=1 
      end
    }
  }
  puts counter 
  counter 
end

def get_occupation(data, hometown)
    data.each { |season, values|
      values.each { |inner_hash|
        if inner_hash["hometown"] == hometown 
          return inner_hash["occupation"] #probably not supposed to use return? seems most efficient tho... 
        end
      }
  }
end  

def get_average_age_for_season(data, season)
  total = 0 
  data[season].each { |inner_hash|
    total = total + inner_hash["age"].to_f  
  }
  (total / data[season].size).round  
end
