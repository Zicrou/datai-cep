# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Region.create(
    [
        { name: 'DAKAR' },
        { name: 'THIES' },
        { name: 'ZIGUINCHOR' }, 
        { name: 'DIOURBEL' },
        { name: 'SAINT-LOUIS' }, 
        { name: 'TAMBACOUNDA' }, 
        { name: 'KAOLACK' }, 
        { name: 'LOUGA' }, 
        { name: 'FATICK' }, 
        { name: 'KOLDA' }, 
        { name: 'MATAM' }, 
        { name: 'KAFFRINE' }, 
        { name: 'SEDHIOU' }
    ]
)
puts "14 Regions created"
