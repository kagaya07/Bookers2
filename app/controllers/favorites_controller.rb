class FavoritesController < ApplicationController

	def create
		book = Book.find(params[:book_id])
        favorite = Favorite.new
        favorite.book_id = book.id
        favorite.user_id = current_user.id
        favorite.save
        redirect_to books_path
	end

	def destroy
		book = Book.find(params[:book_id])
        favorite = Favorite.find_by( user_id: current_user.id, book_id: book.id)
        favorite.destroy
        redirect_to books_path
	end

end
