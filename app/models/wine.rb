class Wine < ApplicationRecord
    validates :name, presence: true
    has_many :assemblies
    has_many :strains, through: :assemblies, dependent: :destroy
    belongs_to :user
    has_many :critics
    has_many :oenologists, through: :critics
    accepts_nested_attributes_for :assemblies, :critics
end
