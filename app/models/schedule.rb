class Schedule < ApplicationRecord
    has_many :schedule_reads, dependent: :destroy
    belongs_to :user, optional: true
    belongs_to :area, optional: true
    belongs_to :section, optional: true
    has_many :schedule_area_sections, dependent: :destroy
    accepts_nested_attributes_for :schedule_area_sections, allow_destroy: true

    def self.search(keyword,areas,sections)
        if keyword != ""
            @schedule = self.where(["title like ? OR description like ?", "%#{keyword}%", "%#{keyword}%"]) 
        else
            @schedule = Schedule.all
        end
    
        if areas.count > 0
            @schedule = @schedule.where(id: ScheduleAreaSection.where(area_id: areas).pluck('schedule_id'))
        end

        if sections.count > 0
            @schedule = @schedule.where(id: ScheduleAreaSection.where(section_id: sections).pluck('schedule_id'))
        end
        @news
    end 

end
