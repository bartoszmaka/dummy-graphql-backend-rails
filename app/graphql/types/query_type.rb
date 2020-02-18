module Types
  class QueryType < Types::BaseObject
    field :users, [Types::UserType], null: false, description: 'returns a list of all users'
    field :articles, [Types::ArticleType], null: false, description: 'returns a list of all articles'
    field :comments, [Types::CommentType], null: false, description: 'returns a list of all comments'

    field :user, Types::UserType, null: true do
      description 'returns an user'
      argument :id, ID, required: true
    end

    field :article, Types::ArticleType, null: true do
      description 'returns an article'
      argument :id, ID, required: true
    end

    field :comment, Types::CommentType, null: true do
      description 'returns an comment'
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def articles
      Article.all
    end

    def comments
      Comment.all
    end

    def user(id:)
      User.find(id)
    end

    def article(id:)
      Article.find(id)
    end

    def comment(id:)
      Comment.find(id)
    end
  end
end
