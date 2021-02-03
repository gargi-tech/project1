class BookController < ApplicationController
	def list1
		@books = Book.all
end

def customer
	@customers = Customer.all

def show
	@book = Book.find(params[:id])
end

def edit
	@book = Book.find(params[:id])
end

def update
	@book = Book.find(params[:id])
	id = @book.id

	if @book.update_attributes(book_params)
		
		redirect_to(action: 'list1')
	else
		render('edit')

	end
end

def delete
	@book = Book.find(params[:id])
end

def new1
	@customer = Customer.new
end
def login
	@customer=Customer.find(params[:id])
	if @customer.email==@customer_params[:email]
		if @customer.password==@customer_params[:pass]
			redirect_to(action:'book/save')
		else
			render('Login Successful!')
		end
		end
	end


def destroy
	bk= Book.find(params[:id])
	bk.destroy

def new
	@book = Book.new
end

def create
	@book = Book.new(book_params)
	if @book.save
		redirect_to(action: 'list1')
	else
		flash[:notice]="Error:Record not Created"
		render(action: 'new')
	end
end

def book_params
	params.require(:books).permit(:name,:author,:price)
	end
end

def login
	params.require(:customers).permit(:email,:pass)
end
end
end




