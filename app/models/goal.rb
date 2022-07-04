class Goal < ApplicationRecord
	 attribute :isComplete, default: -> { false }

	 validates :title, presence: true, length: {maximum: 80}, format: { with: /\A[A-Za-z0-9!#$%&'*+-\/=?^_`{|}~. ]+\z/, message: " .Please enter title in correct format"}
	 validates :body, presence: true, length: {maximum: 500}, format: { with: /\A[A-Za-z0-9!#$%&'*+-\/=?^_`{|}~. ]+\z/, message: " .Please enter body in correct format"}
	 validates :date_time, presence: true


	 validate :end_date_is_after_start_date

  	 private

	 def end_date_is_after_start_date
	 	if date_time == nil
	 		self.errors.add(:date_time, ' .Date cannot be blank')
    	elsif (DateTime.now > date_time)
      		self.errors.add(:date_time, ' .Date cannot be earlier than today')
      	elsif (date_time > DateTime.new(2100,12,30))
      		self.errors.add(:date_time, ' .Year cannot be more than 2100')
      	end
     end
end
