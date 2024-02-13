require "faker"
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
class Seed
  def self.start
    seed = Seed.new
    seed.generate_users
  end

  def generate_users # rubocop:disable Metrics/MethodLength,Lint/RedundantCopDisableDirective
    10.times do
      user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        photo_url: Faker::Placeholdit.image,
        is_admin: Faker::Boolean.boolean
      )
      Rails.logger.debug "User #{user.id}: #{user.first_name} created!"
    end
  end
end

Seed.start
