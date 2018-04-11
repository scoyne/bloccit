require 'random_data'

# Create Posts
50.times do
  Post.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "#{Post.count}"
Post.find_or_create_by( title: "This is a special title", body: "This is a special body" )

puts "#{Comment.count}"
Comment.find_or_create_by( post: posts.sample, body: "This is a unique body" )

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
