module Types
  class ReviewType < Types::BaseObject
    field :content, String, null: true
    field :movie, MovieType.connection_type, null:true
    field :book, BookType.connection_type, null:true
  end
end
