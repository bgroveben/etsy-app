class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end

  def show
  end

  def new
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
