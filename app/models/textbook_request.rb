class TextbookRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :textbook
end
