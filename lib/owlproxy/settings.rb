require "settingslogic"
require "fileutils"

CONFIG_FILE=".owlproxy.yml"
CONFIG_PATH="#{Dir.home}/#{CONFIG_FILE}"

module OwlProxy
  # init config file
  src = "#{File.dirname(__FILE__)}/config/owlproxy.yml.example"
  dst = CONFIG_PATH
  FileUtils.cp src, dst unless File.exist? dst

  class Settings < Settingslogic
    source CONFIG_PATH
    load!
  end
end

