function __kubens.destroy
  for ab in $__kubens_plugin_abbreviations
      abbr -e $ab
  end
  set -Ue __kubens_plugin_abbreviations
  set -Ue __kubens_plugin_initialized
end