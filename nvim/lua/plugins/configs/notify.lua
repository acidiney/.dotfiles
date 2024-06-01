return function(_, opts)
  local notify = require "notify"
  opts.background_colour = "#000"
  notify.setup(opts)
  vim.notify = notify
end
