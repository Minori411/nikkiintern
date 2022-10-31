class Area < ApplicationRecord
    has_many :schedule_area_sections, dependent: :destroy
    has_many :news_area_sections, dependent: :destroy
    has_many :news, dependent: :destroy
    has_many :user_area_sections, dependent: :destroy
    enum :area_name, { A_Processarea: 1, B_Utilityarea: 2,  C_offsite: 3, Allarea: 99}

end
