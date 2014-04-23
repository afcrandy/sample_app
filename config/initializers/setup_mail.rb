ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	address: "smtp.gmail.com",
	port: 587,
	domain: "sheltered-eyrie-6025.herokuapp.com",
	user_name: "andrew.o.reid@gmail.com",
	password: "m1ngebob",
	authentication: "plain",
	enable_starttls_auto: true
}

ActionMailer::Base.default_url_options[:host] = 'localhost:3000' if Rails.env.development?
ActionMailer::Base.default_url_options[:host] = 'https://sheltered-eyrie-6025.herokuapp.com' if Rails.env.production?
