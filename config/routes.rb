Tipy::Application.routes.draw do
  root "tips#new"
  get 'results', to: 'tips#calculate', as: 'results'
  post 'tips/calculate'
end
