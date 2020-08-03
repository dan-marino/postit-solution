module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : "http://" + str
  end

  def display_date_time(dt)
    dt.strftime("%m/%d/%Y %I:%M%P %Z")
  end
end
