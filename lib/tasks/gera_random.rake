namespace :gera_random do
  desc "gerar dados aleatórios"
  task random: :enviroment do
    recipes_count = Recipe.count
    Recipe.scoped.limit(1).offset(rand(users_count)).first
  end
end
