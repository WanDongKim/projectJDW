# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initial Hosts
Host.create! name: 'Dongwan', email: '123@a.a', address: '123 street', phoneNum: '123-456-7890', category: 'Game'
Host.create! name: 'Jiduk', email: '456@b.b', address: '456 street', phoneNum: '234-567-8901', category: 'Action'

# Initial Events
Event.create! name: 'First event', description: '1st eve', status: 'Not started yet', size: 3, date: '1/1/2018', host_id: 1
Event.create! name: 'Second event', description: '2ndeve', status: 'Not started yet', size: 2, date: '1/10/2018', host_id: 1
Event.create! name: 'Third event', description: '3rd eve', status: 'Not started yet', size: 3, date: '1/1/2018', host_id: 1
Event.create! name: 'Fourth event', description: '4th eve', status: 'Not started yet', size: 3, date: '1/5/2018', host_id: 1
Event.create! name: 'Fifth event', description: '5th eve', status: 'Not started yet', size: 3, date: '10/10/2018', host_id: 1
Event.create! name: 'Sixth event', description: '6th eve', status: 'Not started yet', size: 30, date: '1/1/2018', host_id: 1
Event.create! name: 'Seventh event', description: '7th eve', status: 'Not started yet', size: 3, date: '1/1/2018', host_id: 1
Event.create! name: 'Eighth event', description: '8th eve', status: 'Not started yet', size: 3, date: '1/1/2018', host_id: 1
Event.create! name: 'Nineth event', description: '9th eve', status: 'Not started yet', size: 3, date: '1/1/2018', host_id: 1
Event.create! name: 'Tenth event', description: '10th eve', status: 'Not started yet', size: 3, date: '1/1/2018', host_id: 1
