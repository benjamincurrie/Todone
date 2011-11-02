class CollaborationsController < ApplicationController
  
  before_filter :authenticate
  before_filter :find_list
  before_filter :authorize
  respond_to :html, :xml, :json
  
  def index
    respond_with(@list.collaborations)
  end
  
  def create
    @collaboration = @list.collaborations.new(params[:collaboration])
    if @collaboration.save
      flash[:notice] = "List shared."
      redirect_to list_url(@list)
    else
      flash[:error] = "Error in sharing list."
      redirect_to list_url(@list)
    end
  end
  
  def destroy
    @collaboration = @list.collaborations.find(params[:id])
    @collaboration.destroy
    
    respond_with( :ok ) do |format|
      flash[:notice] = "List unshared."
      format.html { redirect_to(@list) }
    end
  end
  
  private
  
  def find_list
    @list = List.find(params[:list_id])
  end
  
end
