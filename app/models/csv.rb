require 'elasticsearch/model'

class Csv < ApplicationRecord

	def self.import(file)
		debugger
		CSV.foreach(file.path , headers: true) do |row|
	    	Csv.create! row.to_hash
	    end
	end
	   include Elasticsearch::Model
   	   include Elasticsearch::Model::Callbacks

end
