User.create(name: "Brandon", username: "cat", password: "dog")
User.create(name: "bonnie", username: "Bonniecakes", password: "pw")
User.create(name: "adamhands", username: "adam", password: "pw")
User.create(name: "hannahdavis", username: "hannah", password: "pw")
User.create(name: "buckley", username: "willbuck", password: "pw")

# cupcake comes from the model name, price and user_id comes from db migrate
# attbutes can be found in schema.rb
Cupcake.create(name: "suger", price: "3", user_id: 1)
Cupcake.create(name: "lowfat", price: "5", user_id: 2)
Cupcake.create(name: "lowsuger", price: "2", user_id: 3)
Cupcake.create(name: "lowcarbs", price: "5", user_id: 4)
Cupcake.create(name: "exsuger", price: "7", user_id: 5)
