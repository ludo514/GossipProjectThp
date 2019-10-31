class User < ApplicationRecord
	belongs_to :city
	validates :first_name, presence: true
	validates :last_name, presence: true
	has_many :gossips
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "MessagePrive"
	has_many :received_messages, foreign_key: 'recipient_id', class_name:"MessagePrive"
	has_secure_password
end
