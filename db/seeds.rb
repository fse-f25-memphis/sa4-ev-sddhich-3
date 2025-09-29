# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

VideoGame.create!(
  title:     'Asteroids',
  year:      1981,
  publisher: 'Atari',
  genre:     'Action'
)

VideoGame.create!(
  title:     'Pitfall!',
  year:      1982,
  publisher: 'Activision',
  genre:     'Action-adventure'
)

VideoGame.create!(
  title:     'Polaris',
  year:      1983,
  publisher: 'Tigervision',
  genre:     'Action'
)

VideoGame.create!(
  title:     'Q*bert',
  year:      1983,
  publisher: 'Parker Brothers',
  genre:     'Action'
)

VideoGame.create!(
  title:     'Millipede',
  year:      1984,
  publisher: 'Atari',
  genre:     'Action'
)
