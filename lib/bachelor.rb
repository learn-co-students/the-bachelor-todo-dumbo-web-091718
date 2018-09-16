require 'pry'

def get_first_name_of_season_winner(data, season)

  data[season].each do |key|
    if key["status"] == "Winner"
      return key["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |attribute|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0;
  data.each do |key, value|
    value.each do |attribute|
      if hometown == attribute["hometown"]
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.find do |attribute|
      if hometown == attribute["hometown"]
        return attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  contestants = 0
  data[season].each do |key|
    age_total += key["age"].to_i
    contestants += 1
  end
  (age_total / contestants.to_f).round(0)
end
