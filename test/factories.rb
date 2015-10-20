FactoryGirl.define do
	factory :user do
		sequence :email do |n|
			"person#{n}@gmail.com"
		end
		password "roflcopta!"
		password_confirmation "roflcopta!"
	end

	factory :place do
		name "loco"
		description "one helluva crazy place!"
		address "1 Scarborough Street, Southport, QLD, 4215"
		association :user
	end

	factory :comment do
		message "great place to eat"
		rating "3_stars"
		association :user
		association :place
	end
end