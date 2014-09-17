class CreateUserAppointments < ActiveRecord::Migration
  def change
    create_table :user_appointments do |t|
      t.integer :center_user_id
      t.datetime :date_quote
      t.integer :consulate_branch_id
      
      t.timestamps
    end
  end
end
