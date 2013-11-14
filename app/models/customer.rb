class Customer < ActiveRecord::Base
	has_many :downloads, :dependent => :destroy
	has_secure_password
	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :password
	validates_presence_of :email_address
	validates_uniqueness_of :email_address
	validates_format_of :email_address, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	 
	 validates_format_of :contact_number, 
      :with => /[0-9]{9}/, message: "has wrong format. Please try again.", 
	  :allow_nil => true
	  
end
