class Person < ApplicationRecord
	has_many :favorites, dependent: :destroy
	has_one :address, dependent: :destroy

  def self.by_name
    order(:name)
  end

  def self.search(search)

  	Person.where(name:search)
    
  end

end
