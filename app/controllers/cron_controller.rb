class CronController < ApplicationController
  respond_to :xml
  
  def index
    @users = User.find(:all)
    @users.each do |user|
      @due_today = []
      user.lists.each do |list|
        list.tasks.due_today.each do |task|
          @due_today << task
        end
      end
      unless @due_today.empty?
        TaskMailer.mail_tasks(user, @due_today).deliver
      end
    end
    respond_with(@due_today)
  end

end
