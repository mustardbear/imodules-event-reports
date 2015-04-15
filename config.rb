# Determines which messages are sent to standard out
LOG_LEVEL = Logger::DEBUG

# The directory where configuration files are located
CONFIG_DIRECTORY = "./config/"

# The names of the configuration files for each event that can be processed
EVENTS = {r15: "reunion15.rb", sample: "sample.rb"}


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
