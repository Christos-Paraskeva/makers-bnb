require 'date'

def format_date(date)
  mydate = date
  mydate_obj = Date::strptime(mydate, '%d/%m/%Y')
  "#{mydate_obj}"
end
