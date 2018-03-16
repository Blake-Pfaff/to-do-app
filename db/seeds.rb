require 'faker'

10.times do
    user = User.new
    user.email = Faker::Internet.unique.email
    user.password = "fakepw123"

    user.save

    item = Item.new
    item.name = Faker::RickAndMorty.quote[8..100]
    item.user = user
    item.save

end
users = User.all
items = Item.all

puts 'Seed finished'
puts "#{User.count} users created"
puts "#{Item.count} items created"
