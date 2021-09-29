class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    line = @line.split(":")
    return line[1].strip
  end

  def log_level
    line = @line.split(":")
    return line[0].tr("[]", "").downcase
  end

  def reformat
    line = @line.split(":")
    new_message = "#{line[1].strip} (#{line[0].tr("[]", "").downcase})"
    return new_message
  end
end
