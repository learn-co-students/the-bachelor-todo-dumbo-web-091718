def get_first_name_of_season_winner(data, season)
    data[season].each do |actor| 
    if actor["status"] == "Winner"
    fn = actor["name"].split(" ")
    #or.split().first ||split()[0]
    fn.each do |first, last| #splited to first & last
      return first 
    end 
    end 
  end
end



def get_contestant_name(data, occupation)
    data.each do | season, details|
    details.each do |actor|
    if actor["occupation"] == occupation
    return actor["name"]  
    end 
  end 
 end
end 


def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
