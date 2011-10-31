class TaskMailer < ActionMailer::Base
  default  :from => "tasks@todone.com"
  
  def mail_tasks(user, tasks)
    @user = user
    @tasks = tasks
    mail(:to => "#{user.name} <#{user.email}>", :subject => "You have some tasks to get todone")
  end
  
end