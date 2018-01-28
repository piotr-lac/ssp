class AdmMailer < ApplicationMailer
  def new_data
    mail subject: "Dodano nowe dane", to: piotr.lac@gmail.com
  end
end
