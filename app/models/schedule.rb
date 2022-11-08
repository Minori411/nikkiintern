class Schedule < ApplicationRecord
    has_many :schedule_reads, dependent: :destroy
    belongs_to :user, optional: true
    belongs_to :area, optional: true
    belongs_to :section, optional: true
    has_many :schedule_area_sections, dependent: :destroy
    accepts_nested_attributes_for :schedule_area_sections, allow_destroy: true

end
