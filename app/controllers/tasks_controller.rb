class TasksController < ApplicationController
  
  before_filter :authenticate
  attr_accessor :completed
  before_filter :find_list
  before_filter :find_task, :only => [:show, :edit, :update, :destroy]
  before_filter :authorize
  respond_to :html, :xml, :json
  
  def index
    respond_with(@list.tasks)
  end
  
  def create
    @task = @list.tasks.new(params[:task])
    if @task.save
      flash[:notice] = "Task created."
      redirect_to list_url(@list)
    else
      flash[:error] = "Error in saving task."
      redirect_to list_url(@list)
    end
  end

  def edit
  end

  def update
    if @task.update_attributes(params[:task])
      flash[:notice] = "Task was successfully updated."
      respond_with(@task, :status => :updated, :location => @list)
    else
      respond_with(@task.errors, :status => :unprocessable_entity) do |format|
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @task.destroy
    
    respond_with( :ok ) do |format|
      flash[:notice] = "List deleted."
      format.html { redirect_to(@list) }
    end
  end
  
  def complete
    @task = @list.tasks.find(params[:id])
    @task.complete = params[:complete]
    if(@task.save)
      respond_with(@task, :success => true, :location => @list)
    else
      flash[:error] = "Error in updating task."
      respond_with(:success => false, :location => @list)
    end
  end
  
  private
  
  def find_list
    @list = List.find(params[:list_id])
  end
  
  def find_task
    @task = Task.find(params[:id])
  end
  
end
