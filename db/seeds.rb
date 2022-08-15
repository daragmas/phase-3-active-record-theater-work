puts "Deleting All data...."
Role.destroy_all
Audition.destroy_all

puts "Seeding Roles..."
tom = Role.create!(character_name: "Tom")
jerry = Role.create!(character_name: "Jerry")
sonic = Role.create!(character_name: "Sonic")

puts "Seeding Auditions..."
john = Audition.create!(actor: "John",location: "NY",phone: 1234567890 ,hired: "false",role_id: tom.id)
jake = Audition.create!(actor: "Jake",location: "CA",phone: 1234567890 ,hired: "false",role_id: tom.id)
ben = Audition.create!(actor: "Ben",location: "NJ",phone: 1234567890 ,hired: "false",role_id: tom.id)

tedd = Audition.create!(actor: "Tedd",location: "CA",phone: 1234567890 ,hired: "false",role_id: jerry.id)
blake = Audition.create!(actor: "Blake",location: "CA",phone: 1234567890 ,hired: "false",role_id: sonic.id)
smith = Audition.create!(actor: "Smith",location: "NJ",phone: 1234567890 ,hired: "false",role_id: sonic.id)

puts "Seeding done!"