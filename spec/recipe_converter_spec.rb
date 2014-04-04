require 'rspec'
require './lib/recipe_converter'

describe RecipeConverter do
  it 'should initialize with a list of ingredients to convert' do
    recipe_converter = RecipeConverter.new([{:sugar => 20}, {:salt => 30}])
    expect(recipe_converter.ingredients).to eq [{:sugar => 20}, {:salt => 30}]
  end

  it 'should convert grams to tablespoons' do
    recipe_converter = RecipeConverter.new([{:sugar => 15}, {:salt => 30}])
    expect(recipe_converter.to_tablespoons).to eq [{:sugar => 1}, {:salt => 2}]
  end

  it 'should convert grams to cups' do
    recipe_converter = RecipeConverter.new([{:sugar => 240}, {:salt => 480}])
    expect(recipe_converter.to_cups).to eq [{:sugar => 1}, {:salt => 2}]
  end
end