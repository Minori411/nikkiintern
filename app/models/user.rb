class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :reads, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :schedules, dependent: :destroy
  has_many :news, dependent: :destroy
  has_many :user_area_sections, dependent: :destroy



end
