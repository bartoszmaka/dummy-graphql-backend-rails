module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :user, Types::UserType, null: false
    field :article, Types::ArticleType, null: false

    def written_by
      object.user.email
    end
  end
end
