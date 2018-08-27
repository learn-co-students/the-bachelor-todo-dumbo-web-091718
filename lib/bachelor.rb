
def get_first_name_of_season_winner(data, season)
  arr = []
  data.each do |ele|
    if ele[0] == season
      ele[1].each do |hsh|
        if hsh["status"] == "Winner" 
          arr = hsh["name"].split(" ")
        end
      end
    end
  end
  return arr[0]
end

def get_contestant_name(data, occupation)
  arr = []
  data.each do |ele|
    ele[1].each do |hsh|
      if hsh["occupation"] == occupation
        arr = hsh["name"].split(" ")
      end
    end
  end
  return arr.join(" ")
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |ele|
    ele[1].each do |hsh|
      if hsh["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  arr = []
  data.each do |ele|
    ele[1].each do |hsh|
      if hsh["hometown"] == hometown
        return hsh["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
 count = 0
 div = 0 
  data.each do |ele|
    if ele[0] == season
      div += ele[1].length
      ele[1].each do |hsh|
       count += hsh["age"].to_i
      end
    end
  end
  final = count.to_f/div
  return final.round
end
