class User < ActiveRecord::Base
  has_many :orders
  has_many :postings
  has_many :books
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,  :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  def self.from_omniauth(auth)
    logger.debug "*****************in from_omniauth************"
    logger.debug auth["info"]["email"]
    # find the user by email id if exists
    user = User.find_by(email: auth["info"]["email"])
    logger.debug user.inspect
    
    if user and user.confirmed?
      logger.debug "confirmed user"
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      return user
    end
    
    where(provider: auth["provider"], uid: auth["uid"]).first_or_create do |newuser|
      logger.debug "Creating new user"
      newuser.skip_confirmation!
      newuser.provider = auth["provider"]
      newuser.uid = auth["uid"]
      newuser.email = auth["info"]["email"]
      newuser.password = Devise.friendly_token[0,20]
      
      logger.debug "name: " + auth["info"]["name"]
      newuser.name = auth["info"]["name"]
    end
  end
  
  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end 
  end
end
