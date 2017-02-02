class User < ActiveRecord::Base
  
 has_one :role
 
  enum role: [:prof, :admin]
  after_initialize :set_default_role, :if => :new_record?

     
    def set_default_role
         #self.role ||= :prof
    end

  def has_role
    role == "admin"
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, stretches: 20
    # :omniauthable, :omniauth_providers => [:digitalocean]
   
    devise :timeoutable, :timeout_in => 10.minutes


  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end
end





