# Determines which messages are sent to standard out
LOG_LEVEL = Logger::INFO

# The directory where configuration files are located
CONFIG_DIRECTORY = "./config/"

# The names of the configuration files for each event that can be processed
EVENTS = {
  r15: "reunion15.rb", 
  r16: "reunion16.rb",
  r17: "reunion17.rb",
  r18: "reunion18.rb",
  r19: "reunion19.rb",
  r22: "reunion22.rb",
  sample: "sample.rb",
  uva15: "uva15.rb"
}


# Method called to set up the logging format
def configure_logging(logger)
  logger.level = LOG_LEVEL
  logger.datetime_format = '%Y-%m-%d %H:%M:%S'
  logger.formatter = proc do |severity, datetime, progname, msg|
    color = case severity
      when "DEBUG" then :light_white
      when "INFO" then :light_yellow
      when "WARN" then :light_red
      when "ERROR" then :blue
      when "FATAL" then :magenta
      when "UNKNOWN" then :cyan
    end
    "#{datetime}: #{msg.colorize(color)}\n"
  end
  logger
end
