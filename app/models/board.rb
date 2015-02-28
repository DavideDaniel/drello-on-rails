class Board < ActiveRecord::Base
	has_many :cards
	belongs_to :provider, :consumers
end
