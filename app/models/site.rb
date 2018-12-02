class Site < ApplicationRecord
    has_one_attached :certchain
    has_one_attached :privkey

    validates :name, :port, presence: true
    validates :name, uniqueness: { case_sensitive: false }
    validates :port, numericality: { only_integer: true, less_than_or_equal_to: 65535, greater_than: 0}
end
