5.times do
    Item.create!(
        name: Faker::Lorem.sentence
    )
end

puts "Seed finished"
puts "#{Item.count} total items created"
