def get_first_name_of_season_winner(data, season)
  name=""
  data.each do |seasonH,contestent|
    if seasonH == season
      contestent.each do |contestent|
        if contestent["status"] == "Winner"
          temp=contestent["name"].split(" ")
          name=temp[0]
        end
      end
    end
    end
    return name
end

def get_contestant_name(data, occupation)
  # code here
  name=""
  data.each do |seasonH,contestent|
    contestent.each do |contestent|
      if contestent["occupation"] == occupation
        name=contestent["name"]
      end
    end
  end
  return name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  numHometown=0
  data.each do |seasonH,contestent|
    contestent.each do |contestent|
      if contestent["hometown"]==hometown
        numHometown+=1
      end
    end
  end
  return numHometown
end

def get_occupation(data, hometown)
  # code here

  occupation=""
  data.each do |seasonH, contestent|
    contestent.each do |contestent|
      if contestent["hometown"]==hometown
      return  occupation= contestent["occupation"]

      end
    end
  end

end

def get_average_age_for_season(data, season)
  # code here
  count= 0
      age = 0
      data[season].each do |contestent|
      count+=1
    age += contestent["age"].to_f
      end
        return (age / count).round
end
