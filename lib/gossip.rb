require 'pry'

class Gossip

	attr_accessor :author, :content,

	def initialize (params)
	@author = params [:author]
	@content = params [:content]

	end
	def save
	
		CSV.open("./db/gossip.csv", "ab") do |csv|
		  csv << ["Mon super auteur", "Ma super description"]
		end
	  end


end 