user = User.new(id: 1,
                name: "林みのり",
                email: "sample@hoge.com", 
                password: "hugahuga",
                userstyle: 0)
user.save!

10.times do |n|
    User.create!(id: n + 2,
                 name: Gimei.kanji,
                 email: "worker1234#{n + 1}@hoge.com",
                 password: "minori1234#{n + 1}",
                 userstyle: 1
                 )
  end