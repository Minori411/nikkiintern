class Area < ApplicationRecord
    belongs_to :news, optional: true
    has_many :schedule_area_sections, dependent: :destroy
    has_many :news_area_sections, dependent: :destroy
    has_many :news, dependent: :destroy
    has_many :user_area_sections, dependent: :destroy

end
