class UserAreaSection < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :area, optional: true
    belongs_to :section, optional: true
end
