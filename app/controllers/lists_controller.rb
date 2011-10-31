class ListsController < ApplicationController
  before_filter :authenticate
  before_filter :find_lists
  before_filter :find_list, :only => [:show, :edit, :update, :destroy]
  before_filter :authorize, :only => [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  
  def index
    respond_with(@lists)
  end

  def show
    @task = @list.tasks.new
    respond_with(@list)
  end

  def new
    @list = List.new
    respond_with(@list)
  end

  def edit
  end

  def create
    @list = List.new(params[:list])
    @list.user_id = user.id
    if @list.save
      flash[:notice] = "List was successfully created."
      respond_with(@list, :status => :created, :location => @list)
    else
      respond_with(@list.errors, :status => :unprocessable_entity) do |format|
        format.html { render :action => "new" }
      end
    end
  end

  def update
    if @list.update_attributes(params[:list])
      flash[:notice] = "List was successfully updated."
      respond_with(@list, :status => :updated, :location => @list)
    else
      respond_with(@list.errors, :status => :unprocessable_entity) do |format|
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @list.destroy
    
    respond_with( :ok ) do |format|
      flash[:notice] = "List deleted."
      format.html { redirect_to(lists_url) }
    end
  end
  
  private
  
  def find_lists
    @lists = List.find(:all, :conditions => ["user_id = ?", user.id])
  end
  
  def find_list
    @list = List.find(params[:id])
  end

end
