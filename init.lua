
  vim.env.GIT_EDITOR = "nvr -cc split --remote-wait-silent +'set bufhidden=wipe'"
end

require("core")
require("initlazy")
