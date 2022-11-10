module SchedulesHelper
    def event_nav_btn_style_area1(schedule)
        if schedule.area.area_name == 'A_Processarea'
            return 'background-color: #f44336;'
        end
        if schedule.area.area_name == 'B_Utilityarea'
            return 'background-color: yellow;'
        end
        if schedule.area.area_name == 'C_Offsite'
            return 'background-color: #64b5f6;'
        end
        if schedule.area.area_name == 'Allarea'
            return 'background-color: #9fa8da;'
        end
    end
    def event_nav_btn_style_section1(schedule)
        if schedule.section.section_name == 'Civil'
            return 'background-color:#66bb6a'
        end
        if schedule.section.section_name == 'Building'
            return 'background-color:#ba68c8'
        end
        if schedule.section.section_name == 'Mechanical'
            return 'background-color:pink'
        end
        if schedule.section.section_name == 'Piping'
            return 'background-color:#a1887f'
        end
        if schedule.section.section_name == 'Erectrical'
            return 'background-color: orange'
        end
        if schedule.section.section_name == 'Allsection'
            return 'background-color: #cddc39;'
        end
    end
    def event_nav_btn_style_area2(schedule2)
        if schedule2.area.area_name == 'A_Processarea'
            return 'background-color: #f44336;'
        end
        if schedule2.area.area_name == 'B_Utilityarea'
            return 'background-color: yellow;'
        end
        if schedule2.area.area_name == 'C_Offsite'
            return 'background-color: #64b5f6;'
        end
        if schedule2.area.area_name == 'Allarea'
            return 'background-color: #9fa8da;'
        end
    end
    def event_nav_btn_style_section2(schedule2)
        if schedule2.section.section_name == 'Civil'
            return 'background-color:#66bb6a'
        end
        if schedule2.section.section_name == 'Building'
            return 'background-color:#ba68c8'
        end
        if schedule2.section.section_name == 'Mechanical'
            return 'background-color:pink'
        end
        if schedule2.section.section_name == 'Piping'
            return 'background-color:#a1887f'
        end
        if schedule2.section.section_name == 'Erectrical'
            return 'background-color: orange'
        end
        if schedule2.section.section_name == 'Allsection'
            return 'background-color: #cddc39'
        end
    end
end
