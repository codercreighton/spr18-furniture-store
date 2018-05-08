Rails.application.routes.draw do
  root 'inventory#all_products'

  get 'one_product' =>'inventory#one_product'

  get 'by_category' => 'inventory#by_category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
