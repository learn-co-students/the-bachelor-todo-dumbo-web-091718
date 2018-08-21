def get_first_name_of_season_winner(data, season)
  # code here
  season_data = data[season]
  winner_name = season_data.first["name"]
  winner_name_split = winner_name.split
  winner_first_name = winner_name_split.first
  return winner_first_name
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |key, value|
    value.each do |hash|
      hash.each do |k, v|
        if v.include?("#{occupation}")
          return hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_contestants = []
  data.each do |key, value|
    value.each do |hash|
      hash.each do |k, v|
        if v.include?("#{hometown}")
          hometown_contestants << hash["name"]
        end
      end
    end
  end
  return hometown_contestants.length
end

def get_occupation(data, hometown)
  # code here
  hometown_occupation = []
  data.each do |key, value|
    value.each do |hash|
      hash.each do |k, v|
        if v.include?("#{hometown}")
          hometown_occupation << hash["occupation"]
        end
      end
    end
  end
  return hometown_occupation.first
end

def get_average_age_for_season(data, season)
  # code here
  season_data = data[season]
  season_ages = []
  season_ages_counter = 0

  while season_ages_counter < season_data.length
    season_ages << season_data[season_ages_counter]["age"]
    season_ages_counter += 1
  end

  integer_season_ages = []
  float_season_ages_counter = 0

  while float_season_ages_counter < season_ages.length
    integer_season_ages << season_ages[float_season_ages_counter].to_f
    float_season_ages_counter += 1
  end

  sum_counter = 0
  ages_sum = 0

  while sum_counter < integer_season_ages.length
    ages_sum = ages_sum + integer_season_ages[sum_counter]
    sum_counter += 1
  end

  float_divider = integer_season_ages.length.to_f

  average_ages = ages_sum / float_divider

  return average_ages.round
end
