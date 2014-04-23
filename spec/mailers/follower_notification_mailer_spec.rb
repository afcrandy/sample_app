require "spec_helper"

describe FollowerNotificationMailer do
	let(:user) { FactoryGirl.create(:user) }
	let(:other_user) { FactoryGirl.create(:user) }

	subject { page }

	before(:each) do
		ActionMailer::Base.perform_deliveries = true
		sign_in user
		visit user_path other_user
	end

	after(:each) do
		ActionMailer::Base.deliveries.clear
	end

	it "should send a new follower notification email" do
		expect do
			click_button "Follow"
		end.to change(ActionMailer::Base.deliveries, :count).by(1)
	end
end
