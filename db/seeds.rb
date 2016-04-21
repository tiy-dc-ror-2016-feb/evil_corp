# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
    branch = Branch.create!(name: FFaker::Company.name)

    rand(100).times do
        account = branch.accounts.create!(
            account_number: SecureRandom.hex,
            balance_in_cents: rand(99_999_999)
        )

        rand(500).times do
            account.events.create!(
                description: FFaker::Company.name.upcase,
                value_in_cents: rand(10_000_000)
            )
        end
    end
end
