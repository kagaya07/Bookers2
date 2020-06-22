class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books,dependent: :destroy
  attachment :profile_image
  has_many :post_commenrs, dependent: :destroy
  has_many :favorites,dependent: :destroy

  validates :name,
	  uniqueness: { case_sensitive: :false },
	  length: { minimum: 2, maximum: 20 }
  validates :introduction,
	  uniqueness: { case_sensitive: :false },
	  length: { maximum: 50 }
end
