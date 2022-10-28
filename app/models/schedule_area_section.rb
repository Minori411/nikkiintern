class ScheduleAreaSection < ApplicationRecord
    belongs_to :schedule
    belongs_to :area
    belongs_to :section
end
