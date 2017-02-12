munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.each do |key,value|
    case value.values[0]
      when 1..17
        value.merge!('age_group' => 'kid')
      when 18..64
        value.merge!('age_group' => 'adult')
      else
        value.merge!('age_group' => 'senior')
    end
end
puts munsters