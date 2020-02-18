module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :created_at, String, null: false
    field :updated_at, String, null: false
    field :articles, [Types::ArticleType], null: true
    field :comments, [Types::CommentType], null: true
    field :articles_count, Integer, null: false

    def articles_count
      object.articles.count
    end
  end
end
