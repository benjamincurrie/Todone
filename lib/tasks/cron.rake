task :cron => :environment do
  puts "Emailing tasks to users..."

   @users = User.find(:all)
   @users.each do |user|
     @due_today = Array.new
     user.lists.each do |list|
       list.tasks.due_today.each do |task|
         @due_today << task
       end
     end
     unless @due_today.empty?
       puts "Emailing #{user.name} <#{user.email}> #{@due_today.count} tasks"
       TaskMailer.mail_tasks(user, @due_today).deliver
     end
   end

  puts "... Emailed Users."
end
