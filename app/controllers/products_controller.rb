class ProductsController < ApplicationController
  before_filter :find_service
  before_filter :authenticate, :except => [:index, :show]
  
  def index
     @products = @service.products.all 
  end
  
  def show
    @product = @service.products.find(params[:id])
  end

  def new
    @product = @service.products.new
  end

  def create
    @product = @service.products.new(params[:product])
    if @product.save
      flash[:notice] = "New product successfully saved"
      redirect_to service_products_path(@service)
    else
      render :action => 'new'
    end
  end

  def edit
    @product = @service.products.find(params[:id])
  end

  def update
    @product = @service.products.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to service_products_path(@service)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = @service.products.find(params[:id])
    @product.destroy
    redirect_to service_products_path(@service)
  end

  private
  def find_service
    @service = Service.find(params[:service_id])
  end
end