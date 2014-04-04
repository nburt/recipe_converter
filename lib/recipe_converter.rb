class RecipeConverter
  attr_reader :ingredients

  def initialize(ingredients)
    @ingredients = ingredients
  end

  def to_tablespoons
    @ingredients.each do |ingredient|
      ingredient.each do |name ,grams|
        ingredient[name] = grams / 15
      end
    end
    @ingredients
  end
end