class Types::QueryType < Types::BaseObject
  description "root query"
  
  field :authors, [AuthorType], null: true do
    description "gets all authors"
  end

  field :author, AuthorType, null: true do
    description "Find an author by id"
    argument :id, ID, required: true
  end
  
  def authors
    Author.all
  end

  def author(id:)
    Author.find(id)
  end
end
