class StoreController < ApplicationController
  skip_before_action :authorize
  
  def index
    @products = Product.order(:title)
  end

  include CurrentCart
    before_action :set_cart
    def index
    @products = Product.order(:title)
  end
end
