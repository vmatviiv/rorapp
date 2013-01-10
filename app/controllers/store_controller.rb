class StoreController < ApplicationController
  skip_before_filter :authorize

  def index
    @vovlang = params[:set_locale]
    mylang = params[:set_locale]        
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      @cart = current_cart
    end

 
  end
end

