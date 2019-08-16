require_relative 'word_counter'

class Quote < ApplicationRecord
    include WordCounter
    include Publishable

end
