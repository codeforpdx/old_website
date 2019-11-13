desc "Updates meeting startdate"
task update_meeting: :environment do
  m = Meeting.last
  m.eventstart += 2.weeks
  m.save
end
