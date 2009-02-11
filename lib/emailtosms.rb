require 'carrier'

class EmailToSMS
  VERSION = '0.1.0'

  @smtp = nil
  @from = 'EmailToSMS@example.com'

  def initialize smtp, from
    @smtp = smtp
    @from = from
  end

  def send_sms msg, subject, contacts
    msg = "From: #{@from}\n"

    to = nil
    if contacts == Array 
      to = contacts.collect { |c| Carrier::get_email(c) } 
      msg << "To: #{to.join(', ')}"
    else
      to = Carrier::get_email(contacts)
      msg << "To: #{to}"
    end

    msg << "Subject: #{subject}\n" unless subject.nil?
    msg << "\n"
    msg << "#{msg}" 

    @smtp.start do |smtp|
      smtp.send_message msg, from, to
    end
  end
end
