class Person < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_one :address, dependent: :destroy
end
