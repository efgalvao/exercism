defmodule DateParser do
  def day() do
    "^\\d{1,2}"
  end

  def month() do
    "^\\d{1,2}"
  end

  def year() do
    "\\d{4}"
  end

  def day_names() do
    "^\w*\\b"
  end

  def month_names() do
    "^\w*\\b"
  end

  def capture_day() do
    "^(?<day>\\d{1,2})"
  end

  def capture_month() do
    "(?<month>\\d{1,2})" 
  end

  def capture_year() do
    "(?<year>\\d{4})$"
  end

  def capture_day_name() do
    "^(?<day_name>\\w*\\b)"
  end

  def capture_month_name() do
    "^(?<month_name>\\w*\\b)"
  end

  def capture_numeric_date() do
    "^(?<day>\\d{1,2})\\/(?<month>\\d{1,2})\\/(?<year>\\d{4})"
  end

  def capture_month_name_date() do
    "^(?<month_name>\\w*\\b)\\s(?<day>\\w*)\\,\\s(?<year>\\d{4})"
  end

  def capture_day_month_name_date() do
    "^(?<day_name>\\w*\\b)\\,\\s(?<month_name>\\w*)\\s(?<day>\\d{1,2})\\,\\s(?<year>\\d{4})"
  end

  def match_numeric_date() do
    ~r/^(?<day>\d{1,2})\/(?<month>\d{1,2})\/(?<year>\d{4})$/
  end

  def match_month_name_date() do
    ~r/^(?<month_name>\w*\b)\s(?<day>\w*)\,\s(?<year>\d{4})$/
  end

  def match_day_month_name_date() do
    ~r/^(?<day_name>\w*\b)\,\s(?<month_name>\w*)\s(?<day>\d{1,2})\,\s(?<year>\d{4})$/
  end
end
