class SpellsController < ApplicationController
  def index
    @spells = Spell.all.order(level: :asc, title: :asc)
  end

  def create
    spell_params = params.require(:spell).permit(:title, :level, :school_id, :concentration, :description, :spellclass_ids => [])
    @spell = Spell.new(spell_params)

    if @spell.save
      redirect_to spells_url, notice: 'Successfully added ' + @spell.title + ' to All Spells'
      return
    else
      render :new
    end
  end

  def new
    @spell = Spell.new
  end

  def edit
      @spell = Spell.find params[:id] 
  end

  def show
      @spell = Spell.find params[:id] 
  end

  def update
    @spell = Spell.find params[:id]
    spell_params = params.require(:spell).permit(:title, :level, :school_id, :concentration, :description, :spellclass_ids => [])
    if @spell.update(spell_params)
      redirect_to spells_url, notice: 'Successfully edited  ' + @spell.title
      return
    else
      render :edit
    end
  end

  def add_to_book
    @spell = Spell.find params[:id]
  end

  def destroy
    @spell = Spell.find params[:id] 
    @spell.destroy
    redirect_to spells_url, notice: 'Successfully deleted ' + @spell.title
  end
	  
  def remove_spell_from_book
	  spell = Spell.find params[:spell_id]
	  book = Book.find params[:id]
	  book.spells.delete(spell)
	  redirect_to books_url, notice: 'Successfully removed ' + spell.title + ' from ' + book.name
	  
  end


end
