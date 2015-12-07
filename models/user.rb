class User < ActiveRecord::Base
  #add bcrypt gem to gemfile
  #has_secure_password
# add has_secure_password method call to User
# add a password_digest varchar column to the users table
# add a password and password_confirmation parameters to the create users form and route
# use @user.try(:authenticate, params[:password]) when logging in a user
end