Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.destroy_all
Cocktail.create(name: "Morito", stars: 3, image_url: "https://static.750g.com/images/660-auto/b520523117d647dab6b842a36f4cc7f5/mojito-le-vrai.jpg")
Cocktail.create(name: "Mule de Moscou", stars: 3, image_url: "https://www.papillesetpupilles.fr/wp-content/uploads/2019/07/Moscow-Mule-%C2%A9-Brent-Hofacker-shutterstock.jpg")
Cocktail.create(name: "Diabolo menthe", stars: 5, image_url: "https://www.papillesetpupilles.fr/wp-content/uploads/2017/04/Diabolo-menthec-Catzie-licence.jpg")

# # Cocktail.doses.create(description: "6cl de ",ingredient:, cocktail:)
# Cocktail.doses.create(description: ,ingredient:, cocktail:)
# Cocktail.doses.create(description: ,ingredient:, cocktail:)
# Cocktail.doses.create(description: ,ingredient:, cocktail:)
# Cocktail.doses.create(description: ,ingredient:, cocktail:)
