class Strain < ApplicationRecord
    has_many :assemblies
#tiene muchos wines atraves de la tabla assemblies
    has_many :wines, through: :assemblies, dependent: :destroy
end
