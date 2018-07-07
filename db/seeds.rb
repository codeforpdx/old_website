# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
                title: "Blog Title number #{blog}",
                subtitle: "Blog Subtitle number #{blog}",
                text: "This is a text example for a blog post, it can be longer than this",
                img: "pdx.jpg"
              )
  end
