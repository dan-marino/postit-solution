module ApplicationHelper
  def fix_url(str)
    (/^https?:\/\/.*/.match(str)) ? str : "https://" + str
  end

  def display_date_time(dt)
    dt.strftime("%m/%d/%Y %I:%M%P %Z")
  end
end
