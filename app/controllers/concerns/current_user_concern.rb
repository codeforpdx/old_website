module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
 		super || guest_user
 	end

 	def guest_user
 		guest = GuestUser.new
 		guest.email = "Guest@CodeforPDX.com"
 		guest #return guest because Ruby is wierd like that.
 	 end

end
