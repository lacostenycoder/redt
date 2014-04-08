class Link < ActiveRecord::Base

	validates_presence_of :url
	validates_uniqueness_of :url
	validates_presence_of :rank
	validates_numericality_of :rank, only_integer: true
end
