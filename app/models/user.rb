class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :news_reads, dependent: :destroy
  has_many :schedule_reads, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :schedules, dependent: :destroy
  has_many :news, dependent: :destroy
  has_many :user_area_sections, dependent: :destroy

  def active_for_authentication?
    super && !is_deleted
  end

end
