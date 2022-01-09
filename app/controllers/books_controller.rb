class BooksController < ApplicationController
  def index
    @books = Book.order_by params[:order_by]
#       @books = Book.all.order(name: :asc)
  end

  def create
	book_params = params.require(:book).permit(:name)
	@book = Book.new(book_params)

	if @book.save
	  redirect_to books_url, notice: 'Successfully added '+ @book.name+ ' to All Books '
	  return
	else
	  render :new
	end
  end


  def new
    @book = Book.new
  end

  def edit
  end

  def show
      @book = Book.find params[:id] 
  end

  def update
    @book = Book.find params[:id]
    book_params = params.require(:book).permit(:title, :spells)
    if @book.update(book_params)
      redirect_to @book, notice: @book.name + ' was successfully updated.'
      return
    else
      render :edit
    end
  end
	
  def add_spell_to_book_id
    @book = Book.find params[:id]
    @spells = Spell.all.order(level: :asc, title: :asc)
  end
	
  def spell_in_books
	  spell = Spell.find params[:spell_id]
	  book = Book.find params[:id]
	  book.spells.push spell
	  redirect_to book_path(book), notice: 'Successfully added ' + spell.title + " to " + book.name 

  end


  def spells_in_book
	  spell = Spell.find params[:id]
	  book = Book.find params[:spell][:book_id]
	  spellbook = book.spells
	  if spellbook.exists?(spell.id)
		  redirect_to add_to_book_path(spell), notice: spell.title + ' already exists in ' + book.name
	  else 
		  book.spells.push spell
		  redirect_to spells_url, notice: 'Successfully added ' + spell.title + " to " + book.name 
	  end

  end


  def destroy
    @book = Book.find params[:id]
    @book.destroy
    redirect_to books_url, notice: 'Successfully deleted ' + @book.name
  end
end
