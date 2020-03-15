class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         # Userデータ削除時、関連データ削除
          has_many :post_images, dependent: :destroy
    	  has_many :post_comments, dependent: :destroy
    	  has_many :favorites, dependent: :destroy
 end

