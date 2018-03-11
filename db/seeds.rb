puts 'Cleaning database...'
User.destroy_all
Weapon.destroy_all

puts 'Creating user...'
users_attributes = [
  {
    name:        'Molière',
    attack:      60,
    life:        40,
    profile_pic:  "moliere.jpg" 
  },
  {
    name:        'Shakespeare',
    attack:      40,
    life:        60,
    profile_pic:  "shakespeare.jpg"   
  },
  {
    name:        'Césaire',
    attack:      45,
    life:        55,
    profile_pic:  "cesaire.jpg"   
  },
  {
    name:        'Eminem',
    attack:      65,
    life:        35,
    profile_pic:  "eminem.jpg"   
  }
]
User.create!(users_attributes)

puts 'Creating weapon...'
weapons_attributes = [
  {
    name:        'Dictionnaire',
    damage:      40,
    speed:        1
  },
  {
    name:        'Bescherelle',
    damage:      20,
    speed:        2
  },
  {
    name:        'Mot compte triple',
    damage:      10,
    speed:        3  
  },
]
Weapon.create!(weapons_attributes)

puts 'Finished!'