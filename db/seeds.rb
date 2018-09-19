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
  name: "Hugh Harker",
  email: "hugh@codeforpdx.org",
  twitter: "https://twitter.com/caltal_",
  github: "https://github.com/caltissue",
  img: "pdx.jpg",
  bio: "Hugh is an former professional urbanist and developer. Hugh started Code for PDX in May of 2018. He comes from Cumberland, RI by way of Athens, GA."
  )

Teammate.create!(
  name: "Cal Tissue",
  email: "cal@codeforpdx.org",
  twitter: "https://twitter.com/caltal_",
  github: "https://github.com/caltissue",
  img: "pdx.jpg",
  bio: "Cal is the webmaster for Code for PDX. He comes from Charlotte, NC, originally."
  )


Meeting.create!(
  title: "Project Launch!",
  subtitle: "Project slate for Fall/Winter 2018",
  location: "WeWork Pioneer Place 700 SW 5th Avenue · Portland, OR",
  eventstart: Time.now.end_of_day,
  timeofevent: "6:00 pm = 8:00 pm PST",
  url: "https://www.meetup.com/Code-for-PDX/events/254426747/",
  body: "This will be the official launch of Code for PDX. We have so much to share with you folks! We will introduce our first projects, our partners, and talk about our process.",
  googlemapurl: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2795.5808048833073!2d-122.67938374889914!3d45.51851657899902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54950a059fff9feb%3A0xbd2c732601e329e!2sWeWork+Pioneer+Place!5e0!3m2!1sen!2sus!4v1537332965503"
)
