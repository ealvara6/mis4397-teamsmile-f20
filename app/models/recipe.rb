class Recipe < ApplicationRecord
    acts_as_favoritable
    include PgSearch::Model
    
    pg_search_scope :search_ingredients, against: :ingredients
    pg_search_scope :search_restricions, against: :restrictions
end
