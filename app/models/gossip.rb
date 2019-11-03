class Gossip < ApplicationRecord
	belongs_to :user
	validates :title, presence: true
	has_many :tag_gossips
	has_many :tags, through: :tag_gossip
	has_many :commentaires
end
