require 'date'

$dates = Enumerator.new do |y|
  start = Time.now - 2.years
  loop do
    y << start
    start += 17.hours
  end
end

def post_generator(author)
  ->(extras) do
    { published: true, date_published: $dates.next, author: author }.update(extras)
  end
end

billionaires = Author.create([
  {name: 'Bruce Wayne', email: 'bruce@example.com'},
  {name: 'Tony Stark', email: 'tony@example.com'}
])

reporters = Author.create([
  {name: 'Clark Kent', email: 'clark@example.com'},
  {name: 'Peter Parker', email: 'peter@example.com'}
])

rogues = Author.create([
  {name: 'James Edward Gray', email: 'james@example.com'},
  {name: 'David Brady', email: 'david@example.com'},
  {name: 'Avdi Grimm', email: 'avdi@example.com'},
  {name: 'Charles Max Wood', email: 'charles@example.com'},
  {name: 'Josh Susser', email: 'josh@example.com'},
  {name: 'Katrina Owen', email: 'katrina@example.com'}
])

Author.all.each do |author|
  post = post_generator(author)
  Post.create([
    post.call(title: "My New Blog!",
              body: "Welcome, friend of friends, to my new blog! Be prepared!"),
    post.call(title: "Worst. Day. Ever.",
              body: "I can't even talk about it."),
    post.call(title: "Jelly Beans",
              body: "Wow do I ever #{['love', 'hate'].sample} jelly beans! I mean, seriously!"),
  ])
end

(billionaires + reporters).each do |author|
  post = post_generator(author)
  Post.create([
    post.call(title: "I am not a super hero",
              body: "It has come to my attention that some people think I am, but I am not."),
    post.call(title: "I am a superhero",
              body: "There's no use denying it, I really am a superhero!",
              published: (author.name == 'Tony Stark'))
  ])
end

billionaires.each do |author|
  post = post_generator(author)
  Post.create([
    post.call(title: "Too much money?",
              body: "Sometimes I think I might have too much money.. but then I buy a new toy and I feel better."),
    post.call(title: "New Car!",
              body: "Today I went out and bought a new car, and then I paid my 'mechanic' to install armour plating!")
  ])
end


rogues.each do |author|
  post = post_generator(author)
  Post.create([
    post.call(title: "POODR!",
              body: "Practical Object Oriented Design in Ruby is the best book ever!"),
  ])
end
