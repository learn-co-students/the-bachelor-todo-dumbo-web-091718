def get_first_name_of_season_winner(data, season)

  first_name = ''

  data.each do |which_season, data_array|
    if which_season == season
      data_array.each do |contestant_info|
        if contestant_info['status'] == 'Winner'
          full_name = contestant_info['name'].split
          first_name = full_name.first
        end
      end
    end
  end

  first_name

end

def get_contestant_name(data, occupation)

  name = ''

  data.each do |which_season, data_array|
    data_array.each do |contestant_info|
      if contestant_info['occupation'] == occupation
        name = contestant_info['name']
      end
    end
  end

  name

end

def count_contestants_by_hometown(data, hometown)

  array = []

  data.each do |which_season, data_array|
    data_array.each do |contestant_info|
      if contestant_info['hometown'] == hometown
        array << contestant_info['name']
      end
    end
  end

  array.length

end

def get_occupation(data, hometown)

  data.each do |which_season, data_array|
    data_array.each do |contestant_info|
      return contestant_info['occupation'] if contestant_info['hometown'] == hometown
    end
  end

end

def get_average_age_for_season(data, season)

  array = []

  data.each do |which_season, data_array|
    if which_season == season
      data_array.each do |contestant_info|
        array << contestant_info['age'].to_f
      end
    end
  end

  avg_age = array.inject(0, :+) / array.length
  avg_age.round

end
