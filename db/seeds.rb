CATEGOREIS  = ["Adult Cats", "Kittens", "Teenagers"]


CATEGOREIS.each do |category|
  c = Category.create(name: category)
  c.posts << Post.create(title: "new cat", description: "Awaits your home")
end
