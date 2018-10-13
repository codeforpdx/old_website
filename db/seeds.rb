# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#TODO add these columns to Project: :trello link, slack, root color

Blog.create!(
                title: "Welcome to the new CodeforPDX website!",
                subtitle: "We are up and running!",
                text: "Please stay tuned, there will be more shortly.",
                img: "logo.svg"
              )

Project.create!(
  title: "Access2Justice: Commons Law Center",
  subtitle: "Access to Justice: Family Court",
  text: "",
  img: "a2jsvg.svg",
  leadcontact:"",
  github_url:"https://github.com/CodeForPortland/access2justicePDX",
  technical_lead:"",
  content_lead: "John Grant - Common's Law Center",
  proposal: "Web form (initially internal, eventually public) which will securely collect information from applicant.
  This Form will output to a decision tree interface which will allow a Commons Law Center staff member to help triage issues.
  Appropriate Court Forms are pre-filled with client information.
   Output: Pre-Filled forms as well as a guide to court. Allowing people to better represent themselves.
   If Applicant meets requirements for representation grant.  Info is forwarded to Common’s lawyers",
  problem: "Access to legal services is expensive. Many people end up representing themselves in court.  The outcomes are not optimal.",
  goal:"Increase the efficacy of the Common’s Law Center by creating software which increases the productivity of its staff.",
  scope:"Focus on family court. If successful program will be expanded to other fields.",
  trello: "",
  slack: "https://codeforpdx.slack.com/",
  color: "#5907f2"
)
Project.create!(
  title: "Clackamas County Community Health: Social Media Analyst",
  subtitle: "Syndrome Surveyor: Clackamas County",
  text: "",
  img: "ph1svg.svg",
  leadcontact:"",
  github_url:"https://github.com/CodeForPortland/symptomsurveyPDX",
  technical_lead:"",
  content_lead: "Elliot Moon, Clackamas County Department of Health, Housing, and Human Services",
  proposal: "Social Media Scraper: Searches for epidemiological  keywords related to Hepatitis A.",
  problem: "County needs to better assess public health issues and concerns. This project will focus on modernizing disease detection.",
  goal:"The goal is to improve the county’s ability to assess potential public health hazards and help modernize Clackamas county’s disease fighting ability.",
  scope:"Focus on detecting illness(Hepatitis A) using social media.",
  trello: "",
  slack: "https://codeforpdx.slack.com/",
  color: "#269b0f"
)
Project.create!(
  title: "Access2Justice: Record Expungement",
  subtitle: "Automate Justice",
  text: "",
  img: "a2j2svg.svg",
  leadcontact:"",
  github_url:"https://github.com/CodeForPortland/recordexpungPDX",
  technical_lead:"",
  content_lead: "Michael Zhang, Community Law Division Metropolitan Public Defender",
  proposal: "Create a form and decision tree to help Public Defender's office quickly expungment qualified applicants records.",
  problem: "Expungment of records is a laborious and expensive project that most folks can't afford. ",
  goal:" This project will modernize the process and help people removed qualified convictions off of their record.",
  scope:"Qualified Convictions",
  trello: "https://trello.com/b/ddsKGAPb/expungedpd",
  slack: "https://codeforpdx.slack.com/",
  color: "#e2841f"
)

Teammate.create!(
  name: "Hugh Harker",
  email: "hugh@codeforpdx.org",
  position: "Founder and Brigade Leader",
  twitter: "https://twitter.com/htharker",
  github: "https://github.com/htharker42",
  img: "hugh.jpg",
  bio: "Hugh is an professional urbanist and developer. Hugh started Code for PDX in May of 2018. He comes from Cumberland, RI by way of Athens, GA."
  )
Teammate.create!(
  name: "Arthur Smeid",
  email: "Arthur@codeforpdx.org",
  position: "Social Media Manager, Community Organizer",
  twitter: "https://twitter.com/lifeincommon",
  github: "",
  img: "arthur.jpg",
  bio: "Arthur is our Social Media outreach manager and community organizer.  Arthur helps organize our social media effort and promotes CodeforPDX projects in the community."
  )

Teammate.create!(
  name: "John Redder",
  email: "john@codeforpdx.org",
  position: "Community Organizer - Outreach Professional",
  twitter: "",
  github: "",
  img: "john.jpg",
  bio: "John has a background in social work and is currently working with Multnomah County's IT department.  John runs our outreach program which works with local Non Profits to organize projects."
  )

Teammate.create!(
  name: "Cal Tissue",
  email: "cal@codeforpdx.org",
  position: "Webmaster and Backend Support",
  twitter: "https://twitter.com/caltal_",
  github: "https://github.com/caltissue",
  img: "cal.jpg",
  bio: "Cal is the webmaster for Code for PDX. He comes from Charlotte, NC, originally."
  )

Teammate.create!(
  name: "Kelli Brooke McCloskey ",
  email: "kelli@codeforpdx.org",
  position: "Event Coordinator",
  twitter: "",
  github: "",
  img: "kelli.jpg",
  bio: "Kelli has a background in the music industry where she worked in event planning.
  She recently moved back to Portland after spending a year abroad in Australia.
  Kelli is currently a student at a web development bootcamp where she is quickly becoming an expert software engineer."
  )


Meeting.create!(
  title: "Project Launch!",
  subtitle: "Project slate for Fall/Winter 2018",
  location: "WeWork Pioneer Place 700 SW 5th Avenue · Portland, OR",
  eventstart: Time.now.end_of_day,
  timeofevent: "6:00 pm = 8:00 pm PST",
  url: "https://www.meetup.com/Code-for-PDX/events/254426747/",
  body: "This will be the official launch of Code for PDX. We have so much to share with you folks! We will introduce our first projects, our partners, and talk about our process.",
  googlemapurl: ""
)
