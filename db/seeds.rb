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
# UserAreaSection.create!(user_id: 17, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 17, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 18, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 19, area_id: 1, section_id: 2)
# UserAreaSection.create!(user_id: 20, area_id: 1, section_id: 3)
# UserAreaSection.create!(user_id: 21, area_id: 1, section_id: 4)
# UserAreaSection.create!(user_id: 22, area_id: 1, section_id: 5)
# UserAreaSection.create!(user_id: 23, area_id: 1, section_id: 6)
# UserAreaSection.create!(user_id: 24, area_id: 2, section_id: 1)
# UserAreaSection.create!(user_id: 25, area_id: 2, section_id: 2)
# UserAreaSection.create!(user_id: 26, area_id: 2, section_id: 3)
# UserAreaSection.create!(user_id: 27, area_id: 2, section_id: 4)
# UserAreaSection.create!(user_id: 28, area_id: 2, section_id: 5)
# UserAreaSection.create!(user_id: 29, area_id: 2, section_id: 6)
# UserAreaSection.create!(user_id: 30, area_id: 3, section_id: 1)
# UserAreaSection.create!(user_id: 31, area_id: 3, section_id: 2)
# UserAreaSection.create!(user_id: 32, area_id: 3, section_id: 3)
# UserAreaSection.create!(user_id: 33, area_id: 3, section_id: 4)
# UserAreaSection.create!(user_id: 34, area_id: 3, section_id: 5)
# UserAreaSection.create!(user_id: 35, area_id: 3, section_id: 6)
# UserAreaSection.create!(user_id: 36, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 37, area_id: 4, section_id: 2)
# UserAreaSection.create!(user_id: 38, area_id: 4, section_id: 3)
# UserAreaSection.create!(user_id: 39, area_id: 4, section_id: 4)
# UserAreaSection.create!(user_id: 40, area_id: 4, section_id: 5)
# UserAreaSection.create!(user_id: 41, area_id: 4, section_id: 6)
# UserAreaSection.create!(user_id: 42, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 43, area_id: 1, section_id: 2)
# UserAreaSection.create!(user_id: 44, area_id: 1, section_id: 3)
# UserAreaSection.create!(user_id: 45, area_id: 1, section_id: 4)
# UserAreaSection.create!(user_id: 46, area_id: 1, section_id: 5)
# UserAreaSection.create!(user_id: 47, area_id: 1, section_id: 6)
# UserAreaSection.create!(user_id: 48, area_id: 2, section_id: 1)
# UserAreaSection.create!(user_id: 49, area_id: 2, section_id: 2)
# UserAreaSection.create!(user_id: 50, area_id: 2, section_id: 3)
# UserAreaSection.create!(user_id: 51, area_id: 2, section_id: 4)
# UserAreaSection.create!(user_id: 52, area_id: 2, section_id: 5)
# UserAreaSection.create!(user_id: 53, area_id: 2, section_id: 6)
# UserAreaSection.create!(user_id: 54, area_id: 3, section_id: 1)
# UserAreaSection.create!(user_id: 55, area_id: 3, section_id: 2)
# UserAreaSection.create!(user_id: 56, area_id: 3, section_id: 3)
# UserAreaSection.create!(user_id: 57, area_id: 3, section_id: 4)
# UserAreaSection.create!(user_id: 58, area_id: 3, section_id: 5)
# UserAreaSection.create!(user_id: 59, area_id: 3, section_id: 6)
# UserAreaSection.create!(user_id: 60, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 61, area_id: 4, section_id: 2)
# UserAreaSection.create!(user_id: 62, area_id: 4, section_id: 3)
# UserAreaSection.create!(user_id: 63, area_id: 4, section_id: 4)
# UserAreaSection.create!(user_id: 64, area_id: 4, section_id: 5)
# UserAreaSection.create!(user_id: 65, area_id: 4, section_id: 6)
# UserAreaSection.create!(user_id: 66, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 67, area_id: 1, section_id: 2)
# UserAreaSection.create!(user_id: 68, area_id: 1, section_id: 3)
# UserAreaSection.create!(user_id: 69, area_id: 1, section_id: 4)
# UserAreaSection.create!(user_id: 70, area_id: 1, section_id: 5)
# UserAreaSection.create!(user_id: 71, area_id: 1, section_id: 6)
# UserAreaSection.create!(user_id: 72, area_id: 2, section_id: 1)
# UserAreaSection.create!(user_id: 73, area_id: 2, section_id: 2)
# UserAreaSection.create!(user_id: 74, area_id: 2, section_id: 3)
# UserAreaSection.create!(user_id: 75, area_id: 2, section_id: 4)
# UserAreaSection.create!(user_id: 76, area_id: 2, section_id: 5)
# UserAreaSection.create!(user_id: 77, area_id: 2, section_id: 6)
# UserAreaSection.create!(user_id: 78, area_id: 3, section_id: 1)
# UserAreaSection.create!(user_id: 79, area_id: 3, section_id: 2)
# UserAreaSection.create!(user_id: 80, area_id: 3, section_id: 3)
# UserAreaSection.create!(user_id: 81, area_id: 3, section_id: 4)
# UserAreaSection.create!(user_id: 82, area_id: 3, section_id: 5)
# UserAreaSection.create!(user_id: 83, area_id: 3, section_id: 6)
# UserAreaSection.create!(user_id: 84, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 85, area_id: 4, section_id: 2)
# UserAreaSection.create!(user_id: 86, area_id: 4, section_id: 3)
# UserAreaSection.create!(user_id: 87, area_id: 4, section_id: 4)
# UserAreaSection.create!(user_id: 88, area_id: 4, section_id: 5)
# UserAreaSection.create!(user_id: 89, area_id: 4, section_id: 6)
# UserAreaSection.create!(user_id: 90, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 91, area_id: 1, section_id: 2)
# UserAreaSection.create!(user_id: 92, area_id: 1, section_id: 3)
# UserAreaSection.create!(user_id: 93, area_id: 1, section_id: 4)
# UserAreaSection.create!(user_id: 94, area_id: 1, section_id: 5)
# UserAreaSection.create!(user_id: 95, area_id: 1, section_id: 6)
# UserAreaSection.create!(user_id: 96, area_id: 2, section_id: 1)
# UserAreaSection.create!(user_id: 97, area_id: 2, section_id: 2)
# UserAreaSection.create!(user_id: 98, area_id: 2, section_id: 3)
# UserAreaSection.create!(user_id: 99, area_id: 2, section_id: 4)
# UserAreaSection.create!(user_id: 100, area_id: 2, section_id: 5)
# UserAreaSection.create!(user_id: 101, area_id: 2, section_id: 6)
# UserAreaSection.create!(user_id: 102, area_id: 3, section_id: 1)
# UserAreaSection.create!(user_id: 103, area_id: 3, section_id: 2)
# UserAreaSection.create!(user_id: 104, area_id: 3, section_id: 3)
# UserAreaSection.create!(user_id: 105, area_id: 3, section_id: 4)
# UserAreaSection.create!(user_id: 106, area_id: 3, section_id: 5)
# UserAreaSection.create!(user_id: 107, area_id: 3, section_id: 6)
# UserAreaSection.create!(user_id: 108, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 109, area_id: 4, section_id: 2)
# UserAreaSection.create!(user_id: 110, area_id: 4, section_id: 3)
# UserAreaSection.create!(user_id: 111, area_id: 4, section_id: 4)
# UserAreaSection.create!(user_id: 112, area_id: 4, section_id: 5)
# UserAreaSection.create!(user_id: 113, area_id: 4, section_id: 6)
# UserAreaSection.create!(user_id: 114, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 115, area_id: 1, section_id: 2)
# UserAreaSection.create!(user_id: 116, area_id: 1, section_id: 3)
# UserAreaSection.create!(user_id: 117, area_id: 1, section_id: 4)
# UserAreaSection.create!(user_id: 118, area_id: 1, section_id: 5)
# UserAreaSection.create!(user_id: 119, area_id: 1, section_id: 6)
# UserAreaSection.create!(user_id: 120, area_id: 2, section_id: 1)
# UserAreaSection.create!(user_id: 121, area_id: 2, section_id: 2)
# UserAreaSection.create!(user_id: 122, area_id: 2, section_id: 3)
# UserAreaSection.create!(user_id: 123, area_id: 2, section_id: 4)
# UserAreaSection.create!(user_id: 124, area_id: 2, section_id: 5)
# UserAreaSection.create!(user_id: 125, area_id: 2, section_id: 6)
# UserAreaSection.create!(user_id: 126, area_id: 3, section_id: 1)
# UserAreaSection.create!(user_id: 127, area_id: 3, section_id: 2)
# UserAreaSection.create!(user_id: 128, area_id: 3, section_id: 3)
# UserAreaSection.create!(user_id: 129, area_id: 3, section_id: 4)
# UserAreaSection.create!(user_id: 130, area_id: 3, section_id: 5)
# UserAreaSection.create!(user_id: 131, area_id: 3, section_id: 6)
# UserAreaSection.create!(user_id: 132, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 133, area_id: 4, section_id: 2)
# UserAreaSection.create!(user_id: 134, area_id: 4, section_id: 3)
# UserAreaSection.create!(user_id: 135, area_id: 4, section_id: 4)
# UserAreaSection.create!(user_id: 136, area_id: 4, section_id: 5)
# UserAreaSection.create!(user_id: 137, area_id: 4, section_id: 6)
# UserAreaSection.create!(user_id: 138, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 139, area_id: 1, section_id: 2)
# UserAreaSection.create!(user_id: 140, area_id: 1, section_id: 3)
# UserAreaSection.create!(user_id: 150, area_id: 1, section_id: 4)
# UserAreaSection.create!(user_id: 160, area_id: 1, section_id: 5)
# UserAreaSection.create!(user_id: 161, area_id: 1, section_id: 6)
# UserAreaSection.create!(user_id: 162, area_id: 2, section_id: 1)
# UserAreaSection.create!(user_id: 163, area_id: 2, section_id: 2)
# UserAreaSection.create!(user_id: 164, area_id: 2, section_id: 3)
# UserAreaSection.create!(user_id: 165, area_id: 2, section_id: 4)
# UserAreaSection.create!(user_id: 166, area_id: 2, section_id: 5)
# UserAreaSection.create!(user_id: 167, area_id: 2, section_id: 6)
# UserAreaSection.create!(user_id: 168, area_id: 3, section_id: 1)
# UserAreaSection.create!(user_id: 169, area_id: 3, section_id: 2)
# UserAreaSection.create!(user_id: 170, area_id: 3, section_id: 3)
# UserAreaSection.create!(user_id: 171, area_id: 3, section_id: 4)
# UserAreaSection.create!(user_id: 172, area_id: 3, section_id: 5)
# UserAreaSection.create!(user_id: 173, area_id: 3, section_id: 6)
# UserAreaSection.create!(user_id: 174, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 175, area_id: 4, section_id: 2)
# UserAreaSection.create!(user_id: 176, area_id: 4, section_id: 3)
# UserAreaSection.create!(user_id: 177, area_id: 4, section_id: 4)
# UserAreaSection.create!(user_id: 178, area_id: 4, section_id: 5)
# UserAreaSection.create!(user_id: 179, area_id: 4, section_id: 6)
# UserAreaSection.create!(user_id: 180, area_id: 1, section_id: 1)
# UserAreaSection.create!(user_id: 181, area_id: 1, section_id: 2)
# UserAreaSection.create!(user_id: 182, area_id: 1, section_id: 3)
# UserAreaSection.create!(user_id: 183, area_id: 1, section_id: 4)
# UserAreaSection.create!(user_id: 184, area_id: 1, section_id: 5)
# UserAreaSection.create!(user_id: 185, area_id: 1, section_id: 6)
# UserAreaSection.create!(user_id: 186, area_id: 2, section_id: 1)
# UserAreaSection.create!(user_id: 187, area_id: 2, section_id: 2)
# UserAreaSection.create!(user_id: 188, area_id: 2, section_id: 3)
# UserAreaSection.create!(user_id: 189, area_id: 2, section_id: 4)
# UserAreaSection.create!(user_id: 190, area_id: 2, section_id: 5)
# UserAreaSection.create!(user_id: 191, area_id: 2, section_id: 6)
# UserAreaSection.create!(user_id: 192, area_id: 3, section_id: 1)
# UserAreaSection.create!(user_id: 193, area_id: 3, section_id: 2)
# UserAreaSection.create!(user_id: 194, area_id: 3, section_id: 3)
# UserAreaSection.create!(user_id: 195, area_id: 3, section_id: 4)
# UserAreaSection.create!(user_id: 196, area_id: 3, section_id: 5)
# UserAreaSection.create!(user_id: 197, area_id: 3, section_id: 6)
# UserAreaSection.create!(user_id: 198, area_id: 4, section_id: 1)
# UserAreaSection.create!(user_id: 199, area_id: 4, section_id: 2)
# UserAreaSection.create!(user_id: 200, area_id: 4, section_id: 3)





































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
                 end: "2022-11-30",
                 area_id: 1,
                 section_id: 1,
                 user_id: 1,
                 allDay: true)

Schedule.create!(title: "GASIN",
                 description: "aaa",
                 start: "2022-11-08 15:00:00",
                 area_id: 1,
                 section_id: 2,
                 user_id: 2,
                 allDay: false)

#スケジュールの所属テーブル
ScheduleAreaSection.create!(schedule_id:1,
                            area_id: 1,
                            section_id: 1)

ScheduleAreaSection.create!(schedule_id:2,
                            area_id: 1,
                            section_id: 2)
                                    