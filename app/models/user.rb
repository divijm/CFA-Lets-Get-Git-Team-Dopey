class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_default_role

   def assign_default_role
    self.add_role(:student) if self.roles.blank?
   end


   has_many :events

   def admin?
        has_role?(:admin)
   end

end
