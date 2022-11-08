class Section < ApplicationRecord
    belongs_to :news, optional: true
    has_many :schedule_area_sections, dependent: :destroy
    has_many :news_area_sections, dependent: :destroy
    has_many :news, dependent: :destroy
    has_many :schedules, dependent: :destroy
    has_many :user_area_sections, dependent: :destroy
    enum :section_name, { Allsection: 99,Civil: 1, Building: 2,  Mechanical: 3, Piping: 4, Erectrical: 5}
end
