FactoryBot.define do
  factory :player do

    name { Faker::Name.name }

    trait :with_albums do
    	after(:create) do |player|
    		create_list(:album,3)
    	end
    end

  end
end
