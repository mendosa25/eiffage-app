# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#   


user = User.create!(first_name: "Mendy", last_name: "Richard", email: "mendosa25@gmail.com", password:"123456", matricule: "123456", phone: "123456", adress: "20 rue Jules Ferry 69800 Saint-Priest")

machine = Machine.create!(
  model: "BB60000",
  identification: 60128,
  size: 20,
  weight: "70T"
  )

  MachineRapport.create(date: "23/10/2024", 
  oil_level: 80, 
  water_level: 90, 
  sand_level: 70, 
  review: "Manque une cale anti-dérive", 
  date_bcc: "23/05/2025", 
  date_extincteur: "23/10/2025", 
  machine_id: machine.id,
  user_id: user.id)