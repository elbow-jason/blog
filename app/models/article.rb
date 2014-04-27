class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5,
                              maximum: 24}
end
