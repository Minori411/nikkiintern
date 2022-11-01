user = User.new(id: 1,
                name: "林みのり",
                email: "sample@hoge.com", 
                password: "hugahuga",
                userstyle: 0)
user.save!

5.times do |n|
    User.create!(id: n + 2,
                 name: Gimei.kanji,
                 email: "admin1234#{n + 1}@sample.com",
                 password: "admin1234#{n + 1}",
                 userstyle: 0
                 )
end

10.times do |n|
    User.create!(id: n + 7,
                 name: Gimei.kanji,
                 email: "worker1234#{n + 1}@hoge.com",
                 password: "worker1234#{n + 1}",
                 userstyle: 1
                 )
end

Area.create!(area_name: 1) #A
Area.create!(area_name: 2) #B
Area.create!(area_name: 3) #C
Area.create!(area_name: 99) #AllArea

Section.create!(section_name: 1) #Civil
Section.create!(section_name: 2) #Building
Section.create!(section_name: 3) #Mechanical
Section.create!(section_name: 4) #Piping
Section.create!(section_name: 5) #Erectrical
Section.create!(section_name: 99) #AllSection

User.all.each do |user|
    user.user_area_sections.create!(user_id: user.id, 
                                    area_id: [1,2,3].sample,
                                    section_id: [1,2,3,4,5].sample)
end

News.create!(title: "GASIN",
             body: "GASIN is gonna be started.",
             image: File.open("./app/assets/images/gasin.png"),
             user_id: 1,
             area_id: 1,
             section_id: 1,
             deleted_at: nil)

News.create!(title: "Ramadan",
             body: "Ramadan is gonna be started.",
             image: File.open("./app/assets/images/ramadan.png"),
             user_id: 2,
             area_id: 2,
             section_id: 2,
             deleted_at: nil)
            
News.create!(title: "Building",
             body: "Building is gonna be started.",
             image: File.open("./app/assets/images/building.png"),
             user_id: 3,
             area_id: 1,
             section_id: 4,
             deleted_at: nil)

News.create!(title: "Mechanical",
             body: "Mechanical is gonna be started.",
             image: File.open("./app/assets/images/mechanical.png"),
             user_id: 3,
             area_id: 1,
             section_id: 4,
             deleted_at: nil)

News.create!(title: "Erectrical",
             body: "Erectrical is gonna be started.",
             image: File.open("./app/assets/images/erectrical.png"),
             user_id: 3,
             area_id: 1,
             section_id: 4,
             deleted_at: nil)

News.create!(title: "Piping",
             body: "Piping is gonna be started.",
             image: File.open("./app/assets/images/pipeline.png"),
             user_id: 3,
             area_id: 1,
             section_id: 4,
             deleted_at: nil)

NewsAreaSection.create!(news_id: 1,
                        area_id:1,
                        section_id:1)

NewsAreaSection.create!(news_id: 2,
                        area_id:2,
                        section_id:2)

NewsAreaSection.create!(news_id: 3,
                        area_id:3,
                        section_id:3)

NewsAreaSection.create!(news_id: 4,
                        area_id:2,
                        section_id:4)

NewsAreaSection.create!(news_id: 5,
                        area_id:3,
                        section_id:5)

NewsAreaSection.create!(news_id: 6,
                        area_id:1,
                        section_id:1)