class Room < ActiveRecord::Base
	before_create :set_token

	def set_token
		self.token = SecureRandom.urlsafe_base64(32, false)
	end
end
