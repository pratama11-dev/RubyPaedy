class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
  end

  include CurrentCart
    before_action :set_cart
    def index
    @products = Product.order(:title)
  end
end
