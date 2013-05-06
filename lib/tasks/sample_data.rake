namespace :db do
  desc "Fill database with sampla data"
  task populate: :environment do
    admin = User.create!( username: "The Boss",
                          email: "theboss@chwz.it",
                          password: "carlos",
                          password_confirmation: "carlos")
    admin.toggle!(:admin)
    32.times do |n|
      username = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password = "password"
      User.create!(username: username, email: email, password: password,
                   password_confirmation: password)
    end

    User.all(limit: 6).each do |user|
      4.times do
        user.video_posts.create!(
            video_title: Faker::Lorem.sentence(1),
            video_description: Faker::Lorem.sentence(1),
            video_url: Faker::Lorem.sentence(1),
            video_category: '2'
        )
      end
    end
  end
end