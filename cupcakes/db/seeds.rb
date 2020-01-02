User.create(name: "Brandon", username: "cat", password: "dog")
User.create(name: "bonnie", username: "Bonniecakes", password: "pw")
# cupcake comes from the model name, price and user_id comes from db migrate
# attbutes can be found in schema.rb
Cupcake.create(name: "suger", price: "3", user_id: 1)
