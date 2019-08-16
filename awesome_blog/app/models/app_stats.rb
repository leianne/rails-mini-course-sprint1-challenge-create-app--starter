
class AppStats
    attr_reader :post, :quotes
    
    def initialize(posts, quotes)
        @posts = Post.all
        @quotes = Quote.all
    end

    def posts_count
        count = @posts.count
    end

    def quotes_count
        @quotes.count
    end

    def posts_word_count
        count = 0
        for post in @posts
            count += post.body.length
        end
        return count
    end

    def quotes_word_count
        count = 0
        for quote in @quotes
            count += quote.body.length
        end
        return count
    end

    def total_count
        return  @posts.count +  @quotes.count
    end

    def total_word_count
        posts = self.posts_word_count
        quotes = self.quotes_word_count
        return posts +  quotes
    end
end