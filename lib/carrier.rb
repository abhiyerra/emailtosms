module Carrier
  CARRIERS = {
    "AT&T" => "txt.att.net",
    "Verizon" => "vtext.com",
    "T-Mobile" => "tmomail.net",
    "Sprint" => "messaging.sprintpcs.com",
    "Nextel" => "messaging.nextel.com",
    "Virgin Mobile" => "vmobl.com"
  }

  def self.get_email contact
    "#{contact[:number]}@#{CARRIERS[contact[:carrier]]}"
  end
end
