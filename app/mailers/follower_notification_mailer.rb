class FollowerNotificationMailer < ActionMailer::Base
	default from: "andrew.o.reid@gmail.com"

	def notification(user, follower)
		@user = user
		@follower = follower
		mail to: "#{@user.name} <#{@user.email}>", subject: "#{@user.name}, you have a new follower!"
	end
	# handle_asynchronously :notification, run_at: Proc.new { 10.seconds.from_now }
end
