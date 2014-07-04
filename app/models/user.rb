class User < ActiveRecord::Base
	has_many :status, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def full_name
   	"#{first_name} #{last_name}"
   end

   # def name
   # 	full_name
   # end
end
