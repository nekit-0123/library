Rails.application.routes.draw do




  get 'employees/list'
  get 'employees/new'
  post 'employees/create'
  patch 'employees/update'
  get 'employees/list'
  get 'employees/show'
  get 'employees/edit'
  get 'employees/delete'
  get 'employees/update'


  get 'book/list'
  get 'book/new'
  post 'book/create'
  patch 'book/update'
  get 'book/list'
  get 'book/show'
  get 'book/edit'
  get 'book/delete'
  get 'book/update'




  get 'lib/list'
  get 'lib/new'
  post 'lib/create'
  patch 'lib/update'
  get 'lib/list'
  get 'lib/show'
  get 'lib/edit'
  get 'lib/delete'
  get 'lib/update'



  get 'out/list'
  get 'out/new'
  post 'out/create'
  patch 'out/update'
  get 'out/list'
  get 'out/show'
  get 'out/edit'
  get 'out/delete'
  get 'out/update'
  get 'out/show_subjects'


  get 'user/list'
  get 'user/new'
  post 'user/create'
  patch 'user/update'
  get 'user/list'
  get 'user/show'
  get 'user/edit'
  get 'user/delete'
  get 'user/update'
  get 'user/show_subjects'




end
