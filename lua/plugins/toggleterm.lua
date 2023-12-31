require("toggleterm").setup {
    open_mapping = [[<M-\>]],
    insert_mappings = true,
    shade_terminals = false,
    -- direction = 'horizontal',
    direction = 'float',
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return 116
      end
    end
}
