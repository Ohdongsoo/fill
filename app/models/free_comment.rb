class FreeComment < ApplicationRecord
    belongs_to :user
    belongs_to :freepost
end
