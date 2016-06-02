class TextbookOffer < ActiveRecord::Base
  belongs_to :user
  belongs_to :textbook
end
