module RecipesHelper
  def recipes_with_ingredients(ingredients)
    @array = []
    Recipe.all.each do |recipe|
      if recipe.has_at_least_one_ingredient(ingredients)
        @array.push(recipe)
      end
    end
    @array
  end
end
