desc "Updates meeting startdate"
task update_meeting: :environment do
  if Meeting.last.eventstart < Time.current
    m = Meeting.last
    m.eventstart += 2.weeks
    m.save
  end
end
