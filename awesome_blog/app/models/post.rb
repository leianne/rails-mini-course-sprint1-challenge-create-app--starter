require_relative 'word_counter'
class Post < ApplicationRecord
    include WordCounter
end
