class Order < ActiveRecord::Base
	has_many :suborders
	belongs_to :user
end
