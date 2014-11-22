class Midsurvey < ActiveRecord::Base
	validates :name, :review, presence:true
	validate :mid_input
	def mid_input
		input_length = review.lstrip.rstrip.split(" ").length
		errors.add(:review, 'Your input length must between 40 to 50 words') if 
			(input_length < 40 or input_length > 50)
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

