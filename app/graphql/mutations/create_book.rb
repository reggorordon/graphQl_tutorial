module Mutations
  class Mutations::CreateBook < GraphQL::Schema::Mutation

        description "Adding a Book"
        argument :title, String, required: true
        argument :summary, String, required: true
        argument :year, Integer, required: true
        
        field :createBook,Types::BookType, null:false

    def resolve(title:, summary:, year:)
        movie = Book.create(title: title, summary: summary, year: year)
        rescue ActiveRecord::RecordInvalid => e
        # this would catch all validation errors and translate them to GraphQL::ExecutionError
        GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end