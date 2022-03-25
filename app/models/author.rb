class Author < ActiveRecord::Base
  has_many :posts, foreign_key: true

end
