Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks # this creates tasks_path -> /tasks. the tasks_path is then used in the index.html.erb as one of the link_to arguments
  get 'tasks/:id', to: 'tasks#show', as: :task # this creates task_path -> /task. the task_path is then used in the index.html.erb as one of the link_to arguments
  post 'tasks', to: 'tasks#create', as: :new
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update', as: :update
  delete 'tasks/:id', to: 'tasks#destroy'
end

# task_path(task) -> /tasks/1
