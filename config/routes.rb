Rails.application.routes.draw do
  get 'proxy/input'
  root 'proxy#input'
  get '/generate_random_array' => 'proxy#generate_random_array'
end