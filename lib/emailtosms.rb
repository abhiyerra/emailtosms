require 'emailtosms/carrier'

class EmailToSMS
  VERSION = '0.1.0'

  def initialize smtp, from
    @smtp = smtp
    @from = from
  end

  def send_sms message, subject, contacts
    msg = "From: #{@from}\n"

    to = nil
    if contacts == Array 
      to = contacts.collect { |c| Carrier::get_email(c) } 
      msg << "To: #{to.join(', ')}\n"
    else
      to = Carrier::get_email(contacts)
      msg << "To: #{to}\n"
    end

    msg << "Subject: #{subject}\n" if subject
    msg << "\n"
    msg << "#{message}\n" 

    @smtp.start do |smtp|
      smtp.send_message msg, @from, to
    end
  end
end
