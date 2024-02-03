local basePlugins = require('plugin.base')
local codePlugins = require('plugin.code')

function TableConcat(t1,t2)
    for i=1,#t2 do
        t1[#t1+1] = t2[i]
    end
    return t1
end

local plugins = {}

TableConcat(plugins, basePlugins)
TableConcat(plugins, codePlugins)

require("lazy").setup(plugins)
