require 'random_data'

50.times do
  Post.create!(
       title:  RandomData.random_sentence,
       body:   RandomData.random_paragraph
     )
end
posts = Post.all

100.times do
 Comment.create!(
   post: posts.sample,
   body: RandomData.random_paragraph
 )
end

Post.find_or_create_by!(title: "Stranger Danger", body: "would  be a great band name!")
Comment.find_or_create_by!(body: "I prefer Taco Meet")

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
