require 'rspec'
require './lib/recipe_converter'

describe RecipeConverter do
  it 'should initialize with a list of ingredients to convert' do
    recipe_converter = RecipeConverter.new([{:sugar => 20}, {:salt => 30}])
    expect(recipe_converter.ingredients).to eq [{:sugar => 20}, {:salt => 30}]
  end
end