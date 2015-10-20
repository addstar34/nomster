class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		if @user != current_user
			render :text => "Unauthorized", :status => :unauthorized
		end
	end

end
