# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#

#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
require File.expand_path(File.dirname(__FILE__) + "/environment")
#set :output, "/home/soham/Soham/cron_log.log"

u = User.all
u.each do |user|
	if(user.shift == "Shift 1")
		every :day, :at => "11:30 am" do 
			rake "mailme[#{user.email}]", :environment => "development"
		end
		every :day, :at => "8:00 pm" do
			rake "mailme[#{user.email}]", :environment => "development"
		end
	else
		every :day, :at => "6:30 pm" do 
			rake "mailme[#{user.email}]", :environment => "development"
		end
		every :day, :at => "2:30 am" do
			rake "mailme[#{user.email}]", :environment => "development"
		end
	end
	
end 
every :day, :at => '8:00 am' do
	rake "save_unfinished_tasks", :environment => "development"
end