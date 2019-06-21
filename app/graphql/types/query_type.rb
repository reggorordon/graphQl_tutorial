module Types
  class QueryType < Types::BaseObject

      field :movies, [MovieType], null:true do 
        description "all the movies "
      end
      def movies
        Movie.all
      end

      field :movie, MovieType, null:true do 
        description "a movie"
        argument :id, ID, required:true
      end
      def movie(id:)
          Movie.find(id)
      end


      field :search_movie_by_year, [MovieType], null: false do
            argument :year, Integer, required: false, default_value:1975
      end
      def search_movie_by_year(year:)
        if year
          Movie.where(year: year)
        else
          Movie.all.limit(10)
        end
      end

      field :search_movie_by_title, [MovieType], null: false do
          argument :title, String, required: false
      end
      def search_movie_by_title(title: nil)
        if title
          Movie.where(title: title)
        else
          Movie.all.limit(10)
        end
      end

        field :books, [BookType], null:true do 
        description "all the Books "
      end
      def books
        Book.all
      end

      field :book, BookType, null:true do 
        description "a book"
        argument :id, ID, required:true
      end
      def book(id:)
          Book.find(id)
      end

  end
end
