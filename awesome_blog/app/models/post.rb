require_relative 'word_counter'
require_relative 'app_stats'

class Post < ApplicationRecord 
    include WordCounter
    include Publishable
end
