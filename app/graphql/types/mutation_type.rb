class Types::MutationType < Types::BaseObject
  # Authors
  field :create_author, mutation: Mutations::CreateAuthor
  field :update_author, mutation: Mutations::UpdateAuthor
  field :delete_author, mutation: Mutations::DeleteAuthor

  # Books
  field :create_book, mutation: Mutations::CreateBook
  field :update_book, mutation: Mutations::UpdateBook
  field :delete_book, mutation: Mutations::DeleteBook
end
