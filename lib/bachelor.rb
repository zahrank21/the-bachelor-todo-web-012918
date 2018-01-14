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

      if cont_hash.values.include?(occupation)
        contestant_hash = cont_hash
      end
    end
  end
  contestant_hash["name"]
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, conts|
    conts.each do |cont_hash|

      if cont_hash.values.include?(hometown)
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, conts|
    conts.each do |cont_hash|

      if cont_hash.values.include?(hometown)
        return cont_hash["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |el|
    if el.keys.include?("age")
      ages << el["age"]
    end
  end


  total = ages.length
  if total.even?
    (ages.map{|el| el.to_i}.reduce(:+) / total) + 1
  elsif total.odd?
    (ages.map{|el| el.to_i}.reduce(:+) / total)
  end
end
