def get_first_name_of_season_winner(data, season)

first = ""

data[season].each do |seasons, info|
  if seasons["status"] == "Winner"
    first = seasons["name"].split(" ").first
  end 
end
  first
end



def get_contestant_name(data, occupation)
  name = ""
  
  data.each do |season, info|
    info.each do |info, value|
      if info["occupation"] == occupation
        name = info["name"]
      end
    end
  end
  name
  
  
end



def count_contestants_by_hometown(data, hometown)
  
  count = 0
   data.each do |season, info|
    info.each do |info, value|
      if info["hometown"] == hometown
        count += 1
      end
    end
  end
  count
  
end




def get_occupation(data, hometown)

first = ""
 data.each do |season, info|
    info.find do |info, value|
      if info["hometown"] == hometown
        first = info["occupation"]
      end
    end
  end
  first
end




def get_average_age_for_season(data, season)
  avg = ""
  array = []  
  
  data[season].each do |info, value|
    array << info["age"].to_f
  end
  
sum = array.inject(0) { |sum, num| sum + num }

avg = sum / array.size
avg = avg.round

end
