class Types::QueryType < Types::BaseObject
  description "root query"
  
  # -- Authors --
  field :authors, [AuthorType], null: true do
    description "gets all authors"
  end

  field :author, AuthorType, null: true do
    description "Find an author by id"
    argument :id, ID, required: true
  end

  # -- Books --
  field :books, [BookType], null: true do
    description "Get all books"
  end

  field :book, BookType, null: true do
    description "Find a book by id"
    argument :id, ID, required: true
  end
  
  def authors
    Author.all
  end

  def author(id:)
    Author.find(id)
  end

  def books
    Book.all
  end

  def book(id:)
    Book.find(id)
  end
end
