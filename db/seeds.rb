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

6.times do |n|
    News.create!(title: "GASIN",
                 body: "This week, GASIN is gonna be held.",
                 user_id: n + 1
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

