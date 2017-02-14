def uuid
  eight = rand(36**8).to_s(36)
  four1 = rand(36**4).to_s(36)
  four2 = rand(36**4).to_s(36)
  four3 = rand(36**4).to_s(36)
  twelve = rand(36**12).to_s(36)
  str = "#{eight}-#{four1}-#{four2}-#{four3}-#{twelve}"
  str
end
puts uuid
 
