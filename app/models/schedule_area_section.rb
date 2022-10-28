class ScheduleAreaSection < ApplicationRecord
    belongs_to :schedule, optional: true
    belongs_to :area, optional: true
    belongs_to :section, optional: true
end
