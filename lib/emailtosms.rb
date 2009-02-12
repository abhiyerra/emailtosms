require 'emailtosms/carrier'

class EmailToSMS
  VERSION = '0.1.1'

  def initialize smtp, from
    @smtp = smtp
    @from = from
  end

  def send_sms(*args)
    to = args.first[:to]
    subject = args.first[:subject]
    message = args.first[:message]

    msg = "From: #{@from}\n"

    if to.class == Array 
      to = to.collect { |c| Carrier::get_email(c) } 
      msg << "To: #{to.join(', ')}\n"
    else
      to = Carrier::get_sms_email(to)
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
