Rails.application.routes.draw do
  #get 'welcome/index'
  post 'welcome/reply'
 #  resource :welcome do
 #  		collection do
 #    	post 'reply'
 #  		end
	# end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
