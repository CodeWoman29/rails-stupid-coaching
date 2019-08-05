Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'questions#ask' # always the first one

  # First page is a form with an input, where a user can type a question to ask the Coach
  get 'ask',   to: 'questions#ask'

  # After submitting the form, the user is redirected to a new page where she/he will see his question and the coach answer.
  get 'answer', to: 'questions#answer'
end
