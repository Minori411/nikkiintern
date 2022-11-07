module NewsHelper
    def event_nav_btn_style_area1(news)
        if news.area.area_name == 'A_Processarea'
            return 'background-color: #f44336;'
        end
        if news.area.area_name == 'B_Utilityarea'
            return 'background-color: yellow;'
        end
        if news.area.area_name == 'C_Offsite'
            return 'background-color: #64b5f6;'
        end
        if news.area.area_name == 'Allarea'
            return 'background-color: #9fa8da;'
        end
    end
    def event_nav_btn_style_section1(news)
        if news.section.section_name == 'Civil'
            return 'background-color:#66bb6a'
        end
        if news.section.section_name == 'Building'
            return 'background-color:#ba68c8'
        end
        if news.section.section_name == 'Mechanical'
            return 'background-color:pink'
        end
        if news.section.section_name == 'Piping'
            return 'background-color:#a1887f'
        end
        if news.section.section_name == 'Erectrical'
            return 'background-color: orange'
        end
        if news.section.section_name == 'Allsection'
            return 'background-color: #cddc39;'
        end
    end

    def event_nav_btn_style_area2(newsareasection)
        if newsareasection.area.area_name == 'A_Processarea'
            return 'background-color: #f44336;'
        end
        if newsareasection.area.area_name == 'B_Utilityarea'
            return 'background-color: yellow;'
        end
        if newsareasection.area.area_name == 'C_Offsite'
            return 'background-color: #64b5f6;'
        end
        if newsareasection.area.area_name == 'Allarea'
            return 'background-color: #9fa8da;'
        end
    end
    def event_nav_btn_style_section2(newsareasection)
        if newsareasection.section.section_name == 'Civil'
            return 'background-color:#66bb6a'
        end
        if newsareasection.section.section_name == 'Building'
            return 'background-color:#ba68c8'
        end
        if newsareasection.section.section_name == 'Mechanical'
            return 'background-color:pink'
        end
        if newsareasection.section.section_name == 'Piping'
            return 'background-color:#a1887f'
        end
        if newsareasection.section.section_name == 'Erectrical'
            return 'background-color: orange'
        end
        if newsareasection.section.section_name == 'Allsection'
            return 'background-color: #cddc39'
        end
    end
end

