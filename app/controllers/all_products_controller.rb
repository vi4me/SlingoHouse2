class AllProductsController < ApplicationController

  def index
  	@product = Product.all
    @q = Product.ransack(params[:q])
    @products = @q.result.order('created_at DESC')
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:price, :name, :pr_description, :favorit, images_attributes: [:id, :file, :_destroy])
  end
end
