class Person < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_one :address, dependent: :destroy

  def self.by_name
    order(:name)
  end

  def self.search(search)
    @results = Person.where(name:search) || Person.where(hair_color:search) || Person.where(age:search) || Person.where(eye_color:search) || Person.where(gender:search)
  end

end
