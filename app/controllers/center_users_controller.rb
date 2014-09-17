class CenterUsersController < ApplicationController
	
	before_action :authenticate_center_user!

	def profiles
		begin
			if !current_center_user.first_name.nil?
				@center_user = CenterUser.find(current_center_user.id)
			else
				@center_user = CenterUser.new
			end
		rescue Exception => e
			puts e
		end
	end

	def update_profile
		begin
			@center_user_id = Base64.decode64(params[:id])
			puts @center_user_id
			@center_user=CenterUser.find(@center_user_id)
			@center_user.update_attributes!(params[:center_user])

		rescue Exception => e
			puts e
		end
	end
end
