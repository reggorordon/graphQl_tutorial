module Types
  class MovieType < Types::BaseObject
    field :title, String, null: true
    field :summary, String, null: true
    field :year, Integer, null: true
    field :reviews, [ReviewType], null:true
  end
end
