class AddEmailToAddresses < ActiveRecord::Migration[5.0]
  def change
  	add_column :addresses, :email_address, :string
  end
end
