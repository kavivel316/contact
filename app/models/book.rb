class Book < ActiveRecord::Base
	validates :phonenumber, length: {is: 10}
	validates_uniqueness_of :firstname, :scope => :lastname
	validates :emailid,presence: true
	validates :phonenumber ,numericality: {only_integer: true}
	validates_format_of :emailid, :with =>  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
