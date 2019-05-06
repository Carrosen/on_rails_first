class Comment < ApplicationRecord
  belongs_to :article, optional: true

  validates_presence_of :body
  validates :commenter, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
end
