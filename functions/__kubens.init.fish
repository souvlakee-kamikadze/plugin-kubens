function __kubens.init
  function __kubens.create_abbr -d "Create kubens plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]
    abbr -a $name $body
    set -a __kubens_plugin_abbreviations $name
  end

  set -q __kubens_plugin_initialized; and exit 0

  set -U __kubens_plugin_abbreviations

  # kubens abbreviations

  # This command is used a LOT both below and in daily life
  __kubens.create_abbr kns         kubens

  # Cleanup declared functions
  functions -e __kubens.create_abbr

  # Mark kubens plugin as initialized
  set -U __kubens_plugin_initialized (date)
end