class Message < ActiveRecord::Base
	validates :version, presence:true
	validate :exactly_fifteen_words
	validate :exactly_forty_three_words
	validate :exactly_one_hundred_and_thirty_nine_words
	VERSIONS = ["15 words", "43 words", "139 words"]
	def exactly_fifteen_words
		errors.add(:message, 'Your input must have 15 words') if 
			(version =="15 words" && body.lstrip.rstrip.split(" ").length != 15)
	end
	def exactly_forty_three_words
		errors.add(:message, 'Your input must have 43 words') if 
			(version =="43 words" && body.lstrip.rstrip.split(" ").length != 43)
	end
	def exactly_one_hundred_and_thirty_nine_words
		errors.add(:message, 'Your input must have 139 words') if 
			(version =="139 words" && body.lstrip.rstrip.split(" ").length != 139)
		
	end
	def self.to_csv
	  CSV.generate do |csv|
	    csv << column_names
	    all.each do |message|
	      csv << message.attributes.values_at(*column_names)
	    end
	  end
	end
	def to_seperate_csv
	  CSV.generate do |csv|
	    csv << ["Body","version"]
	    csv << self.attributes.values
	  end
	end
end
