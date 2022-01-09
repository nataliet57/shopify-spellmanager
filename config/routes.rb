Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :spells
	resources :spellclasses
	resources :books
	root to: 'static_pages#home'
	get 'spells/:id/add_to_book', to: 'spells#add_to_book', as: 'add_to_book'
	get 'spells/:id/add_spell_to_book_id', to: 'books#add_spell_to_book_id', as: 'add_spell_to_book_id'
	delete 'books/:id/spells/:id/remove_spell_from_book', to: 'spells#remove_spell_from_book', as: 'remove_spell_from_book'
	
	post 'spells/:id/put_spell_id_in_book', to: 'books#spells_in_book', as: 'put_spell_id_in_book'
	
	post 'spells/:id/direct_add_to_book', to: 'books#spell_in_books', as: 'direct_add_to_book'

end
