# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

authors = Author.create([
  {name: 'Bruce Wayne', email: 'bruce@example.com'},
  {name: 'Tony Stark', email: 'tony@example.com'}
])

authors.each do |author|
  Post.create([
    {
      title: "I am not a super hero",
      body: "It has come to my attention that some people think I am, but I am not.",
      author: author
    },
    {
      title: "Too much money?",
      body: "Sometimes I think I might have too much money.. but then I buy a new toy and I feel better.",
      author: author
    }
  ])
end
