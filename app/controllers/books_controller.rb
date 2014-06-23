class BooksController < ApplicationController
 
def first
end
  def new
@book =Book.new
  end
def create
@book = Book.new(book_params)
name=params[:book][:photo].original_filename
if @book.save
@book.update(:photo => name)
redirect_to @book
else
render 'new'
end
end
def female
	@books = Book.where(gender: "female")
	render 'female'
	end

def male
	@books = Book.where(gender: "male")
	render 'female'
	end
	
def book_params
File.open(fu, "wb") { |f| f.write(params[:book][:photo].read) }
params.require(:book).permit(:firstname, :lastname, :emailid, :phonenumber,:address,:gender)
end
def show
@book = Book.find(params[:id])
end
def index
@books =Book.all
end
def edit
@book = Book.find(params[:id])
end
def update
@book =Book.find(params[:id])
name=params[:book][:photo].original_filename
 @book.update(:photo => name)
if @book.update(book_params)
redirect_to @book
else
render 'edit'
end
end
def destroy
@book = Book.find(params[:id])
@book.destroy
redirect_to books_path
end
def fu
name=params[:book][:photo].original_filename
 directory = "public/data"
  return path = File.join(directory,name)
	end

end