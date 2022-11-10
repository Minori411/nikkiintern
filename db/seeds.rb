user = User.new(id: 1,
                name: "林みのり",
                email: "sample@sample.com", 
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
                 email: "worker1234#{n + 1}@sample.com",
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

UserAreaSection.create!(user_id: 1, area_id: 1, section_id: 1)
UserAreaSection.create!(user_id: 1, area_id: 2, section_id: 1)
UserAreaSection.create!(user_id: 2, area_id: 2, section_id: 2)
UserAreaSection.create!(user_id: 2, area_id: 2, section_id: 3)
UserAreaSection.create!(user_id: 2, area_id: 3, section_id: 1)
UserAreaSection.create!(user_id: 3, area_id: 2, section_id: 4)
UserAreaSection.create!(user_id: 3, area_id: 1, section_id: 3)
UserAreaSection.create!(user_id: 4, area_id: 4, section_id: 6)
UserAreaSection.create!(user_id: 5, area_id: 2, section_id: 5)
UserAreaSection.create!(user_id: 5, area_id: 2, section_id: 4)
UserAreaSection.create!(user_id: 6, area_id: 3, section_id: 1)
UserAreaSection.create!(user_id: 6, area_id: 3, section_id: 4)
UserAreaSection.create!(user_id: 7, area_id: 1, section_id: 2)
UserAreaSection.create!(user_id: 8, area_id: 2, section_id: 3)
UserAreaSection.create!(user_id: 9, area_id: 3, section_id: 4)
UserAreaSection.create!(user_id: 10, area_id: 1, section_id: 5)
UserAreaSection.create!(user_id: 11, area_id: 2, section_id: 1)
UserAreaSection.create!(user_id: 12, area_id: 3, section_id: 2)
UserAreaSection.create!(user_id: 13, area_id: 1, section_id: 3)
UserAreaSection.create!(user_id: 14, area_id: 2, section_id: 4)
UserAreaSection.create!(user_id: 15, area_id: 3, section_id: 5)
UserAreaSection.create!(user_id: 16, area_id: 1, section_id: 1)

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
             user_id: 1,
             area_id: 2,
             section_id: 1,
             deleted_at: nil)
            
News.create!(title: "Building",
             body: "Building is gonna be started.",
             image: File.open("./app/assets/images/building.png"),
             user_id: 2,
             area_id: 2,
             section_id: 2,
             deleted_at: nil)

News.create!(title: "Mechanical",
             body: "Mechanical is gonna be started.",
             image: File.open("./app/assets/images/mechanical.png"),
             user_id: 2,
             area_id: 2,
             section_id: 3,
             deleted_at: nil)

News.create!(title: "Erectrical",
             body: "Erectrical is gonna be started.",
             image: File.open("./app/assets/images/erectrical.png"),
             user_id: 2,
             area_id: 3,
             section_id: 1,
             deleted_at: nil)

News.create!(title: "Piping",
             body: "Piping is gonna be started.",
             image: File.open("./app/assets/images/pipeline.png"),
             user_id: 3,
             area_id: 2,
             section_id: 4,
             deleted_at: nil)

NewsAreaSection.create!(news_id: 1,
                        area_id:1,
                        section_id:1)

NewsAreaSection.create!(news_id: 1,
                        area_id:2,
                        section_id:1)


NewsAreaSection.create!(news_id: 2,
                        area_id:2,
                        section_id:2)

NewsAreaSection.create!(news_id: 2,
                        area_id: 2,
                        section_id: 3)

NewsAreaSection.create!(news_id: 2,
                        area_id: 3,
                        section_id: 1)

NewsAreaSection.create!(news_id: 3,
                        area_id: 2,
                        section_id: 4)

NewsAreaSection.create!(news_id: 3,
                        area_id: 1,
                        section_id: 3)

NewsAreaSection.create!(news_id: 4,
                        area_id: 4,
                        section_id: 6)

NewsAreaSection.create!(news_id: 5,
                        area_id: 2,
                        section_id: 5)

NewsAreaSection.create!(news_id: 5,
                        area_id: 2,
                        section_id: 4)

NewsAreaSection.create!(news_id: 6,
                        area_id: 3,
                        section_id: 1)

NewsAreaSection.create!(news_id: 6,
                        area_id: 3,
                        section_id: 4)

Schedule.create!(title: "Ramadan",
                 description: "aaa",
                 start: "2022-11-01",
                 end: "2022-12-01",
                 user_id: 1,
                 area_id: 1,
                 section_id: 1,
                 allDay: true,
                 color: "#009688")

Schedule.create!(title: "GASIN",
                 description: "aaa",
                 start: "2022-11-17 15:00:00",
                 user_id: 1,
                 area_id: 2,
                 section_id: 1,
                 allDay: false,
                 color: "#d50000")

Schedule.create!(title: "rainy",
                 description: "aaa",
                 start: "2022-11-10 15:00:00",
                 end: "2022-11-12 19:00:00",
                 user_id: 2,
                 area_id: 2,
                 section_id: 2,
                 allDay: false,
                 color: "#00e5ff")

Schedule.create!(title: "event",
                 description: "bbb",
                 start: "2022-11-15 15:00:00",
                 user_id: 2,
                 area_id: 2,
                 section_id: 3,
                 allDay: false,
                 color: "#ffd54f")

Schedule.create!(title: "event",
                 description: "aaa",
                 start: "2022-11-08 15:00:00",
                 user_id: 2,
                 area_id: 3,
                 section_id: 1,
                 allDay: false,
                 color: "#00bfa5")

Schedule.create!(title: "event",
                 description: "aaa",
                 start: "2022-11-08 15:00:00",
                 user_id: 3,
                 area_id: 2,
                 section_id: 4,
                 allDay: false,
                 color: "#fff176")

Schedule.create!(title: "event",
                 description: "aaa",
                 start: "2022-11-08 15:00:00",
                 user_id: 3,
                 area_id: 1,
                 section_id: 3,
                 allDay: false,
                 color:"#00bfa5")

Schedule.create!(title: "event",
                 description: "aaa",
                 start: "2022-11-08 15:00:00",
                 user_id: 4,
                 area_id: 4,
                 section_id: 6,
                 allDay: false,
                 color: "#00bcd4")

Schedule.create!(title: "construction",
                 description: "ccc",
                 start: "2022-11-20 15:00:00",
                 end: "2022-11-25 19:00:00",
                 user_id: 5,
                 area_id: 2,
                 section_id: 5,
                 allDay: false,
                 color: "#8bc34a")

#スケジュールの所属テーブル
ScheduleAreaSection.create!(schedule_id:1,
                            area_id: 1,
                            section_id: 1)

ScheduleAreaSection.create!(schedule_id:1,
                            area_id: 2,
                            section_id: 1)

ScheduleAreaSection.create!(schedule_id:2,
                            area_id: 2,
                            section_id: 2)

ScheduleAreaSection.create!(schedule_id:2,
                            area_id: 2,
                            section_id: 3)

ScheduleAreaSection.create!(schedule_id:2,
                            area_id: 3,
                            section_id: 1)

ScheduleAreaSection.create!(schedule_id:3,
                            area_id: 2,
                            section_id: 4)

ScheduleAreaSection.create!(schedule_id:3,
                            area_id: 1,
                            section_id: 3)

ScheduleAreaSection.create!(schedule_id:4,
                            area_id: 4,
                            section_id: 6)

ScheduleAreaSection.create!(schedule_id:5,
                            area_id: 2,
                            section_id: 5)

ScheduleAreaSection.create!(schedule_id:5,
                            area_id: 2,
                            section_id: 4)

ScheduleAreaSection.create!(schedule_id:6,
                            area_id: 3,
                            section_id: 1)

ScheduleAreaSection.create!(schedule_id:6,
                            area_id: 3,
                            section_id: 4)

ScheduleAreaSection.create!(schedule_id:7,
                            area_id: 1,
                            section_id: 2)

ScheduleAreaSection.create!(schedule_id:8,
                            area_id: 2,
                            section_id: 3)

ScheduleAreaSection.create!(schedule_id:9,
                            area_id: 3,
                            section_id: 4)









