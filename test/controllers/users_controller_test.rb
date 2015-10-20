require 'test_helper'

class UsersControllerTest < ActionController::TestCase
	test "user show dashboard" do
		user = FactoryGirl.create(:user)
		sign_in user
		get :show, :id => user.id
		assert_response :success
	end

	# test "user show dashboard, unauthorized" do
	# 	user = FactoryGirl.create(:user)
	# 	user2 = FactoryGirl.create(:user)
	# 	sign_in user
	# 	get :show, :id => 1
	# 	assert_response :unauthorized
	# end
end
