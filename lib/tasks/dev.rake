namespace :dev do
  desc "Prepara o ambiente de Desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Executando Task ...", format: :bouncing)
      spinner.auto_spin
       %x(rails db:drop db:create db:migrate db:seed)
      spinner.success("Finalizado!")
    else
      puts "Voce nao está no Ambiente de Desenvolvimento"
    end
  end

end
