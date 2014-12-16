class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  private
  ## The strong params method prevents a user from changing the model.
  def product_params
    params.require(:product).permit(:product_name, :description, :price, :thumburl)
  end
end
