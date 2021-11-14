namespace :dev do
  desc "Prepara o ambiente de Desenvolvimento"
  task setup: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end

end
