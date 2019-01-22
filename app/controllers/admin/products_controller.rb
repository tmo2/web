class Admin::ProductsController < Admin::BaseController
  def index
    @products = Product.all
  end

  def create
    product.create(product_params)
    redirect_to :back
  end

  private
  def product_params
    params.require(:product).permit(
      :maker_id, :name, :description, :price
    )
  end
end
