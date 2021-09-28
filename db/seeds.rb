puts "Seeding weapons..."
        
10.times do 

    weapon = Weapon.create(
        name: Faker::Games::DnD.melee_weapon
            )

    user = User.create(
        name: Faker::Name.name
    )
puts "Seeding characters..."

rand(1...10).times do 
    Character.create(
        name: Faker::Name.name,
        race: Faker::Games::DnD.race,
        alignment: Faker::Games::DnD.alignment,
        background: Faker::Games::DnD.background,
        klass: Faker::Games::DnD.klass,
        level: rand(1..20),
        weapon_id: weapon.id, 
        user_id: user.id
    )
end 
end

puts "✅ Done seeding!"
