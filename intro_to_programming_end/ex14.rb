
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
            
contacts = {"Joe Smith" => {}}

keys = [:email, :address, :phone]

contacts.each do |name, hash|
  keys.each do |key|
    hash[key] = contact_data.shift
  end
end
puts contacts
