class Comment < ApplicationRecord
  belongs_to :article, optional: true

  validates_presence_of :commenter, :body
end
