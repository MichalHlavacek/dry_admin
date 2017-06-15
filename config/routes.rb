DryAdmin::Engine.routes.draw do
	root 'dashboards#index'
	get    ':model' => 'resources#index'
	post   ':model' => 'resources#create'
	get    ':model/new' => 'resources#new'
	get    ':model/:id/edit' => 'resources#edit'
	get    ':model/:id' => 'resources#show'
	patch  ':model/:id' => 'resources#update'
	put    ':model/:id' => 'resources#update'
	delete ':model/:id' => 'resources#destroy'
end
