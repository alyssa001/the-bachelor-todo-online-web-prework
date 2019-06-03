def get_first_name_of_season_winner(data, season)
   data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |info, value|
        if info["status"] == "Winner"
          return info["name"].split(" ").first 
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_num, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1 
      end
    end
  end 
  counter
end

def get_occupation(data, hometown)
  
end

def get_average_age_for_season(data, season)
  # code here
end


