class OrdersController < ApplicationController
  
  def index

  end
  
  def create

  end

  def update
  end

  private

  def order_params
    params.permit(:price,:quantity , :customer, plate: {})
  end
end
