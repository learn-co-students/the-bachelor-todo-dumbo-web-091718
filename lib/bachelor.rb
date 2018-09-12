require 'pry'
def get_first_name_of_season_winner(data, season)
  fmt = []
  data[season].each do |contestant|
    contestant.each do |attribute, value|
       if contestant["status"] == "Winner"
        fmt << contestant[attribute].split(" ")[0]
       end
    end  
  end  
  return fmt[0]
end

def get_contestant_name(data, occupation)
  name =[]
     data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["occupation"] == occupation
         name <<  contestant["name"] 
        end
      end
   end
   return name[0] 
end

def count_contestants_by_hometown(data, hometown)
  origin = []
  data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          origin << contestant["hometown"]
        end 
      end 
  end     
  return origin.length 
end

def get_occupation(data, hometown)
   origin = []
  data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          return contestant["occupation"]
        end 
      end 
  end     
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestant|
         ages << contestant["age"].to_i
        # binding.pry
  end  
  return (ages.inject(0.0) { |sum, el| sum + el } / (ages.size)).round # https://stackoverflow.com/questions/1341271/how-do-i-create-an-average-from-a-ruby-array

end



