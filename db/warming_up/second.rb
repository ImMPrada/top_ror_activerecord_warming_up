module WarmingUp
  module Second
    def self.call
      country_name = 'United States of America'

      country = Country.find_by(name: country_name)
      country ||= Country.create(name: country_name)

      cities_names = ['Anaheim', 'San Jose', 'Los Angeles']
      state_name = 'California'

      state = Country.find_by(name: state_name)
      state ||= State.create(name: state_name, country:)

      cities_names.each do |city_name|
        city = City.find_by(name: city_name)
        next if city && city.state == state

        city = City.create(name: city_name, state:)
      end

      cities_names = %w[Boston Springfield Worcester]
      state_name = 'Massachussetts'

      state = Country.find_by(name: state_name)
      state ||= State.create(name: state_name, country:)

      cities_names.each do |city_name|
        city = City.find_by(name: city_name)
        next if city && city.state == state

        city = City.create(name: city_name, state:)
      end

      puts 'COUNTRY, STATES, AND CITIES CREATED'

      genders = %w[non-binary robot]

      genders.each do |gender|
        next if Gender.find_by(label: gender)

        Gender.create(label: gender)
      end

      puts 'GENDERS CREATED'

      120.times do
        mail = "#{Faker::Name.name.downcase.split(' ').join}@mail.com"
        username = "#{Faker::Fantasy::Tolkien.character.split(' ').join}"

        next if User.find_by(email: mail) || Profile.find_by(username:)

        user = User.new
        profile = Profile.new

        user.email = mail
        user.save

        profile.username = username
        profile.birthdate = DateTime.now
        profile.user = user
        profile.gender = Gender.all.sample
        profile.city = City.all.sample

        profile.save
      end

      puts 'USERS AND PROFILES CREATED'
    end
  end
end
