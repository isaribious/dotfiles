local cmp = require("cmp")

lvim.builtin.cmp.mapping["<C-d>"] = cmp.mapping.complete()
lvim.builtin.cmp.mapping["<C-f>"] = function() end
lvim.builtin.cmp.mapping["<C-e>"] = cmp.mapping.close()
lvim.builtin.cmp.mapping["<C-c>"] = cmp.mapping.abort()
lvim.builtin.cmp.mapping["<C-j>"] = function() end
lvim.builtin.cmp.mapping["<C-k>"] = function() end

-- cmp.setup.cmdline('/', {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = 'buffer' }
--   }
-- })

-- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(':', {
--   mapping = cmp.mapping.preset.cmdline({
--     ["<C-k>"] = cmp.mapping.select_prev_item(),
--     ["<C-j>"] = cmp.mapping.select_next_item(),
--     -- ["<C-d>"] = cmp.mapping.complete(),
--     ["<C-d>"] = cmp.mapping.complete(),
--     -- ["<C-e>"] = cmp.mapping.abort(),

--     ["<CR>"] = cmp.mapping.close(),
--     -- ['<CR>'] = cmp.mapping.confirm({ select = false }),
--   }),
--   sources = cmp.config.sources({
--     -- { name = 'path' }
--   }, {
--     { name = 'cmdline' }
--   })
-- })
