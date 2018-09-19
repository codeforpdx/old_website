# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do |blog|
  Blog.create!(
                title: "Blog Title number #{blog}",
                subtitle: "Blog Subtitle number #{blog}",
                text: "This is a text example for a blog post, it can be longer than this",
                img: "pdx.jpg"
              )
end

3.times do |project|
  Project.create!(
    title: "Project Title #{project}",
    subtitle: "Subtitle for this project",
    text: "This project is a project we've worked on...",
    img: "pdx.jpg"
    )
end

Teammate.create!(
  name: "Cal Tissue",
  email: "cal@codeforpdx.org",
  twitter: "https://twitter.com/caltal_",
  github: "https://github.com/caltissue",
  img: "pdx.jpg",
  bio: "Cal is the webmaster for Code for PDX. He comes from Charlotte, NC, originally."
  )
