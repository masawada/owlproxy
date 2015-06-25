require "settingslogic"

CONFIG_PATH=".owlproxy.yml"

module OwlProxy
  class Settings < Settingslogic
    source "#{Dir.home}/#{CONFIG_PATH}"
    load!
  end
end
