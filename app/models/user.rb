
class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :reactions, dependent: :destroy
  end
  
  # app/models/post.rb
  class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :reactions, dependent: :destroy
  end
  
  # app/models/comment.rb
  class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post
  end
  
  # app/models/reaction.rb
  class Reaction < ApplicationRecord
    belongs_to :user
    belongs_to :post
  end
  
end
