require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |seas, hash_arr|
    if seas.to_s === season
      hash_arr.each do |a|
        a.each do |x, y|
          if y.include?("Winner")
            return a["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, hash_arr|
    hash_arr.each do |hashes|
      hashes.each do |stat, value|
        if hashes["occupation"] === occupation
          return hashes["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season, hash_arr|
      hash_arr.each do |hashes|
          if hashes["hometown"] === hometown
            counter += 1
          end
      end
    end
    counter
end

def get_occupation(data, hometown)
  data.each do |season, hash_arr|
    hash_arr.each do |hashes|
      if hashes["hometown"] === hometown
        return hashes["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_arr = []
  count = 0
  data.each do |seas, hash_arr|
    if seas === season
      hash_arr.each do |hashes|
        average_arr << hashes["age"].to_i
      end
    end
  end
  average_arr.each do |num|
    count += num
  end
  return (count.to_f / average_arr.length).round
end

