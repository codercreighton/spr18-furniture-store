class InventoryController < ApplicationController
  def all_products
  	@products = Product.all

  	@ordered_products = Product.all.order(price: :desc).limit(3)
  end

  def one_product
  	@product = Product.find(params[:id])
  end

  def by_category
  	@products = Product.where(category: params[:category])

  	@category = params[:category]
  end
end
