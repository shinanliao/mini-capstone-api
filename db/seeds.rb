# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "cat collar", price: 5, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-n3dxvQvn0elJFFeFH1G_aYIixmQ9dKRZww&usqp=CAU", description: "a handsome bowtie")
Product.create(name: "cat tree", price: 45, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROP1EaOtuKQL-Zk4uDCpM5f_v9Ndt1mhAs2A&usqp=CAU", description: "big cat tree")
Product.create(name: "mouse toy", price: 2, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTppC4PB39oAudYajxjSw4BwB0i3MRJmFoGWw&usqp=CAU", description: "a cute mouse for your cat to kill")
Product.create(name: "cat bed", price: 10, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBkKd-wmNSHQ4Nhoeu4dtI11Y7BrxH85UHpQ&usqp=CAU", description: "a cozy bed for your highness to lay on")