class Author < ApplicationRecord
    has_many :books
    validate :name, uniquess: true
end
