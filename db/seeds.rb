# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  email: "admin@gmail.com",
  password: "1234567",
  password_confirmation: "1234567",
  name: "Admin User",
  roles: "site_admin"
  )

puts "1 admin user created"


User.create!(
  email: "reg@gmail.com",
  password: "1234567",
  password_confirmation: "1234567",
  name: "Regular User"
  )

puts "1 user created"


3.times do |topic|
  Topic.create!(
      title: "Topic #{topic}"
    )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post number: #{blog}!!",
    body: "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails skill number #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio title #{portfolio_item}",
  subtitle: "Ruby on Rails",
  body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes",
  main_image: "http://placehold.it/600X400",
  thumb_image: "http://placehold.it/350X200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio title #{portfolio_item}",
  subtitle: "Angular",
  body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes",
  main_image: "http://placehold.it/600X400",
  thumb_image: "http://placehold.it/350X200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
    )
end

puts "3 technologies created"
