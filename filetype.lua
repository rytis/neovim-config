
vim.filetype.add({

--
-- Example from: /usr/share/nvim/runtime/lua/vim/filetype/options.lua
--

---    extension = {
---      foo = 'fooscript',
---      bar = function(path, bufnr)
---        if some_condition() then
---          return 'barscript', function(bufnr)
---            -- Set a buffer variable
---            vim.b[bufnr].barscript_version = 2
---          end
---        end
---        return 'bar'
---      end,
---    },
---    filename = {
---      ['.foorc'] = 'toml',
---      ['/etc/foo/config'] = 'toml',
---    },
---    pattern = {
---      ['.*/etc/foo/.*'] = 'fooscript',
---      -- Using an optional priority
---      ['.*/etc/foo/.*%.conf'] = { 'dosini', { priority = 10 } },
---      -- A pattern containing an environment variable
---      ['${XDG_CONFIG_HOME}/foo/git'] = 'git',
---      ['README.(%a+)$'] = function(path, bufnr, ext)
---        if ext == 'md' then
---          return 'markdown'
---        elseif ext == 'rst' then
---          return 'rst'
---        end
---      end,
---    },

    pattern = {
        ['.*/ansible/.*yml'] = 'yaml.ansible',
        ['.*/ansible/.*yaml'] = 'yaml.ansible'
    }

})

