class Teammate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  def self.new_with_session(params, session)
    super.tap do |teammate|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        teammate.email = data["email"] if teammate.email.blank?
      end
    end
  end

	def self.from_omniauth(auth)
		where(provider: auth.provider, uid: auth.uid).first_or_create do |teammate|
			teammate.email = auth.info.email
			teammate.password = Devise.friendly_token[0,20]
			teammate.name = auth.info.name   # assuming the user model has a name
			teammate.image = auth.info.image # assuming the user model has an image
		end
	end

end
