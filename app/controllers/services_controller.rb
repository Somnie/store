class ServicesController < ApplicationController
  
  def index    
     @services = Service.all      
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params[:service])
    if @service.save
      flash[:notice] = "New service successfully saved"
      redirect_to services_path
    else
      render :action => 'new'
    end
  end  

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(params[:service])
      redirect_to services_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path
  end
  
end