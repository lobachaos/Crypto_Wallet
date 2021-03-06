# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

private

# If exists dont create again !
def create_coin (description, acronym, url_img = "", mining_type = MiningType.all.sample)
  Coin.find_or_create_by!({ description: "#{description}",
                            acronym: "#{acronym}",
                            url_img: "#{url_img}",
                            mining_type: mining_type })
end

def create_mining_type(description, acronym = "")
  MiningType.find_or_create_by!({ description: "#{description}",
                                  acronym: "#{acronym}" })
end

def set_tipo_mineracao(acronym)
  MiningType.find_by(acronym: "#{acronym}")

end

create_mining_type("Proof Of Work", "PoW")
create_mining_type("Proof Of Stake", "PoS")
create_mining_type("Proof Of Capacity", "PoC")

create_coin("Bitcoin", "BTC", "https://thumbs.dreamstime.com/b/logotipo-de-bitcoin-moeda-cripto-115315174.jpg", set_tipo_mineracao("PoW"))
create_coin("Ethereum", "ETH", "https://marcas-logos.net/wp-content/uploads/2020/03/ETHEREUM-LOGO.png", set_tipo_mineracao("PoS"))
create_coin("Dash", "DASH", "https://cryptologos.cc/logos/dash-dash-logo.png", set_tipo_mineracao("PoC"))
