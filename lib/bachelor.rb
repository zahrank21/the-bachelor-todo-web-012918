def get_first_name_of_season_winner(data, season)
  winner_hash = []
  data[season].each do |el|
    if el.values.include?("Winner")
      winner_hash = el
    end
  end


  winner_hash["name"].split.first

end

def get_contestant_name(data, occupation)
  contestant_hash = []

  data.each do |season, conts|
    conts.each do |cont_hash|
      print cont_hash
      if cont_hash.values.include?(occupation)
        contestant_hash = cont_hash
      end
    end  
  end
  contestant_hash[:name]
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
