class Schedule < ApplicationRecord
    has_many :schedule_reads, dependent: :destroy
    has_many :notifications, dependent: :destroy
    belongs_to :user, optional: true
    has_many :schedule_area_sections, dependent: :destroy
end
