class Admin < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
