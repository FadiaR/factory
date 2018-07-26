# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Assembly.create(name: Faker::Vehicle.model)
end

20.times do
  Part.create(part_name: Faker::Science.element)
end

  Part.all.each do |part|
    part.assemblies.push(Assembly.all.sample)
    part.save
  end

  # give each assembly a random part
  Assembly.all.each do |assembly|
    assembly.parts.push(Part.all.sample)
    assembly.save
  end
