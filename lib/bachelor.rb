require 'pry'

 
 def get_first_name_of_season_winner(data, season)

  
    data[season].each do |people|
       people.each do |k,v|
        if v == "Winner"
            full_name = people["name"]
            return full_name.split(' ').first
                binding.pry

        end 
      end
    end
end


def get_contestant_name(data, occupation)
  answer = ''
  data.each do |season, array|
    array.each do |people|  
      people.each do |k,v|
        if v == occupation
          answer = people["name"]
        end
      end  
    end
  end
answer
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |people|
      people.each do |k,v|
        if v == hometown
          counter += 1
        end  
      end
    end
  end
counter  
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |people|
      people.each do |k,v|
        if v == hometown
          return people["occupation"]
        end  
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
age = 0
count = 0
  data[season].each do |hash|
    hash.each do |k,v|
      if k == "age"
        count += 1
        age += v.to_f
      end
    end
  end
   answer = (age/count).round
return answer
end
