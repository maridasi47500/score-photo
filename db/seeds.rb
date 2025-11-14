# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
baroque = Epoch.find_or_create_by!(name: "baroque")
impressionistic = Epoch.find_or_create_by!(name: "impressionistic")
romantic = Epoch.find_or_create_by!(name: "romantic")
baroque.composers.create(name: "bach")
impressionistic.composers.create(name: "ravel")
impressionistic.composers.create(name: "debussy")
