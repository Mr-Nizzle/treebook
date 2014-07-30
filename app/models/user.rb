class User < ActiveRecord::Base
	has_many :status, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :profile_name, :presence => true

   def full_name
   	"#{first_name} #{last_name}"
   end

   # def name
   # 	full_name
   # end
end
