class UserAreaSection < ApplicationRecord
    belongs_to :user
    belongs_to :area
    belongs_to :section
end
