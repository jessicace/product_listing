class ProductsController < ApplicationController

  before_action :find_product, except: [ :index, :new, :create ]

  def find_product
    @product = Product.find(params[:id])
  end
  
  def index
    @products = Product.all
  end

  def show  
  end

  def edit
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to product_path(@product), notice: 'Created new product.'
    else
      render :new, notice: 'Validation failed.'
    end
  end

  def update
    if @product.update_attributes(product_params)
      redirect_to product_path(@product), notice: 'Update product.'
    else
      render :edit, notice: 'Update failed.'
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Deleted product.'
  end

  private
  def product_params
    params.require(:product).permit(:name,
                                    :description,
                                    :price,
                                    :gst,
                                    :quantity,
                                    :image,
                                    :remove_image)
  end
  
end
