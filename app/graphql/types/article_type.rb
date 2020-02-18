module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :content, String, null: true
    field :user, Types::UserType, null: false
    field :comments, [Types::CommentType], null: false

    def written_by
      object.user.email
    end
  end
end
