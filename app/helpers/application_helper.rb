module ApplicationHelper
  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Produção"
    else
      "Teste"
    end
  end

  def idioma
    I18n.locale == :en ? "United States" : "Português-Brasil"
  end
end
