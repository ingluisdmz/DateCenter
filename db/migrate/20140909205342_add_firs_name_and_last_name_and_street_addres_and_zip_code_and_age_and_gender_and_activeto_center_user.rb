class AddFirsNameAndLastNameAndStreetAddresAndZipCodeAndAgeAndGenderAndActivetoCenterUser < ActiveRecord::Migration
  def change
    add_column :center_users, :first_name, :string
    add_column :center_users, :last_name, :string
    add_column :center_users, :gender, :string
    add_column :center_users, :street_addres, :string
    add_column :center_users, :zip_code, :integer
    add_column :center_users, :age, :integer
    add_column :center_users, :active, :boolean
  end
end
