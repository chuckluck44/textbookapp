class TextbookMatch < ActiveRecord::Base
  belongs_to :from_user_id, class_name: "User"
  belongs_to :to_user_id, class_name: "User"
  belongs_to :textbook
end
