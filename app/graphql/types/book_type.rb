module Types
  class BookType < Types::BaseObject
    field :title, String, null: true
    field :summary, String, null: true
    field :year, Integer, null: true
    field :reviews, [Types::ReviewType], null:true
  end
end
