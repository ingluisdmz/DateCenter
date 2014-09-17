class CenterUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   attr_accessible :first_name , :last_name ,:gender,:street_addres,:zip_code,:age ,:active ,:password , :password_confirmation , :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at , :last_sign_in_at , :current_sign_in_ip , :last_sign_in_ip , :created_at , :updated_at 
end
