# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# If exists dont create again !
private

def create_coin (description, acronym, url_img = "")
  Coin.find_or_create_by!({ description: "#{description}",
                 acronym: "#{acronym}",
                 url_img: "#{url_img}" })
end

create_coin("Bitcoin", "BTC", "https://thumbs.dreamstime.com/b/logotipo-de-bitcoin-moeda-cripto-115315174.jpg")
create_coin("Ethereum", "ETH", "https://marcas-logos.net/wp-content/uploads/2020/03/ETHEREUM-LOGO.png")
create_coin("Dash", "DASH", "https://cryptologos.cc/logos/dash-dash-logo.png")

