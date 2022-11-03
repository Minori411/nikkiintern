module NewsHelper
    def event_nav_btn_style(news)
        if news.area.area_name == 'A_Processarea'
          return 'background-color: red;'
        end
      end
end
