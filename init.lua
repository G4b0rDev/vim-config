if vim.fn.has('nvim') == 1 and vim.fn.executable('nvr') == 1 then
    vim.env.GIT_EDITOR = "nvr -cc split --remote-wait-silent +'set bufhidden=wipe'"
end

require('core')
require('initlazy')

