function _kubens_install --on-event kubens_install
  __kubens.init
end

function _kubens_update --on-event kubens_update
  __kubens.reset
end

function _kubens_uninstall --on-event kubens_uninstall
  __kubens.destroy
end