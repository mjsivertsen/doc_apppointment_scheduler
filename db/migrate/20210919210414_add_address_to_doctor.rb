class AddAddressToDoctor < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :address, :string
  end
end
