<<<<<<< HEAD
class User < ActiveRecord::Base
=======
class User < ApplicationRecord
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_universal_and_determines_account
  has_one :member, :dependent => :destroy
<<<<<<< HEAD
  has_many :user_projects
  has_many :projects, through: :user_projects
  
  def is_admin?
    is_admin
  end
=======
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d

end
