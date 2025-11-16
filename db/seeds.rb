# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
baroque = Epoch.find_or_create_by!(name: "baroque")
impressionistic = Epoch.find_or_create_by!(name: "impressionistic")
romantic = Epoch.find_or_create_by!(name: "romantic")
brahms=romantic.composers.create(name: "brahms")
romantic.composers.create(name: "straus")
tchciakovsky=romantic.composers.create(name: "tchaikovsky")
bach=baroque.composers.create(name: "bach")
impressionistic.composers.create(name: "ravel")
debussy=impressionistic.composers.create(name: "debussy")
righthand=Bowingtechnique.find_or_create_by(name: "bow speed")
righthand=Bowingtechnique.find_or_create_by(name: "amount of bow used")
righthand=Bowingtechnique.find_or_create_by(name: "type of articulation")
righthand=Bowingtechnique.find_or_create_by(name: "placement of the bow between the fingerboard and the bridge")
righthand=Bowingtechnique.find_or_create_by(name: "amount of bow used")
righthand=Bowingtechnique.find_or_create_by(name: "weight of the arm")
lefthand=Lefthandtechnique.find_or_create_by(name: "vibrato")
lefthand=Lefthandtechnique.find_or_create_by(name: "shifting")
lefthand=Lefthandtechnique.find_or_create_by(name: "fluency")
lefthand=Lefthandtechnique.find_or_create_by(name: "moving aorund")
score=debussy.pieces.create(name: "la mer")
ISO3166::Country.all_translated.each do |country|
    mycountry=Country.find_or_create_by(name: country) 
end

