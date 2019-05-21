require_relative "./car.rb"
require_relative "./car_owner.rb"
require_relative "./mechanic.rb"
require "pry"


#owners
je = CarOwner.new('jeff')
ka = CarOwner.new('katy')
pa = CarOwner.new('perry')
ad = CarOwner.new('adam')

#mechanics
gl = Mechanic.new('glam', 'Antique')
jeo = Mechanic.new('jordge', 'Antique')
jud = Mechanic.new('judy-not-judgee', 'Muscle')

#cars
mod_t = Car.new(make: 'Ford' , model: 'T',classification: 'Antique', owner: je, mechanic: gl)
mod_c = Car.new(make: 'Chev', model: 'Camaro', classification: 'Muscle', owner: je, mechanic: jud)
mod_qr = Car.new(make: 'AR', model: 'Sum', classification: 'Antique', owner: ka, mechanic: gl)

binding.pry
