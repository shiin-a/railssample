class Memo < ApplicationRecord
    belongs_to :hamster
    validates :body, presence: true
end
