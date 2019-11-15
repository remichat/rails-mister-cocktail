Ingredient.destroy_all
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.destroy_all
file = URI.open('https://static.750g.com/images/660-auto/b520523117d647dab6b842a36f4cc7f5/mojito-le-vrai.jpg')
article = Cocktail.new(name: 'Miroto', stars: 3)
article.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
article.save

file = URI.open('https://www.papillesetpupilles.fr/wp-content/uploads/2017/04/Diabolo-menthec-Catzie-licence-1150x0.jpg')
article = Cocktail.new(name: 'Diabolo Menthe', stars: 5)
article.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
article.save

file = URI.open('https://cdn.diffords.com/contrib/stock-images/2018/5/20/2018ffe7ab4ebbc48d2f34715c870cce5a10.jpg')
article = Cocktail.new(name: 'Mule de Moscou', stars: 5)
article.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
article.save

file = URI.open('https://static.cuisineaz.com/610x610/i147916-sex-on-the-beach.jpeg')
article = Cocktail.new(name: 'Sex in the woods', stars: 5)
article.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
article.save
