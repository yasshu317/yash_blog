class UserProfile < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :gender, :last_name, :phone_number, :user_id
end
