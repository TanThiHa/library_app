class CartsController < ApplicationController
  before_action :load_book, only: [:add_to_cart, :remove_cart]
  def index; end

  def add_to_cart
    if check_in?(@book)
      if @book.quantity == 0
        flash[:danger] = "Sách hiện đang hết!"
      else
        cart << @book
      end
    end
    redirect_to carts_path
  end

  def remove_cart
    cart.delete_if { |x| x['id'] == @book.id }
    redirect_to carts_path
  end

  def empty_cart
    cart.clear
    redirect_to carts_path
  end

  private

  def load_book
    @book = Book.find_by id: params[:id]
    return if @book
    redirect_to root_path
  end
end
