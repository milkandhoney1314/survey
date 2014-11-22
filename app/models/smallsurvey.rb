class Smallsurvey < ActiveRecord::Base
	validates :name, :review, presence:true
	validate :small_input
	def small_input
		input_length = review.lstrip.rstrip.split(" ").length
		errors.add(:review, 'Your input length must between 10 to 20 words') if 
			(input_length < 10 or input_length > 20)
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
