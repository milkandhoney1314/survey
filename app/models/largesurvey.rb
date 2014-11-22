class Largesurvey < ActiveRecord::Base
	validates :name, :review, presence:true
	validate :large_input
	def large_input
		input_length = review.lstrip.rstrip.split(" ").length
		errors.add(:review, 'Your input length must between 135 to 145 words') if 
			(input_length < 135 or input_length > 145)
	end
		
	def self.to_csv
	  CSV.generate do |csv|
	    csv << column_names
	    all.each do |message|
	      csv << message.attributes.values_at(*column_names)
	    end
	  end
	end
end

