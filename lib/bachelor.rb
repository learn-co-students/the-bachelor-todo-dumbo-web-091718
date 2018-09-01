##Get Winners
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


#Get Contestants Names Based on Occupation 
def get_contestant_name(data, occupation)
    data.each do | season, details|
    details.each do |actor|
    if actor["occupation"] == occupation
    return actor["name"]  
    end 
  end 
 end
end 

#Get Contestants By Hometown 
def count_contestants_by_hometown(data, hometown)
  # code here
    numb_of_actors_by_homewtown = 0
    data.each do |season, details|
      details.each do |actor|
      if actor["hometown"] == hometown
       numb_of_actors_by_homewtown += 1
      end 
    end
  end 
return numb_of_actors_by_homewtown
end

#Get Contestants Occupations
def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
