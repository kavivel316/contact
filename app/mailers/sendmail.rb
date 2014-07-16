class Sendmail < ActionMailer::Base
  default from: "kavivel316@gmail.com"
  def send_email(book)
    @book= book
    mail( :to => "#{book.emailid}",
    :subject => 'Thanks for Creating contact in Report Bee' )
  end
end
