class RailsGraphqlApiTemplateSchema < GraphQL::Schema
  query(Types::QueryType)
  mutation(Types::MutationType)
end
