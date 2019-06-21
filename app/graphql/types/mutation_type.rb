module Types
  class MutationType < Types::BaseObject
    field :createMovie, mutation: Mutations::CreateMovie
    field :createBook, mutation: Mutations::CreateBook
  end
end
