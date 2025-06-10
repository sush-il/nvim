
local dapuiconfig = {}

dapuiconfig.layouts = {
    {
      -- Left panel (main debug info)
      elements = {
        { id = "scopes", size = 0.7 },
        { id = "breakpoints", size = 0.3 },
      },
      size = 40,
      position = "left"
    },
    {
      -- Bottom panel (optional)
      elements = {
        { id = "repl", size = 1.0 },
        { id = "controls", size = 0.15 },
      },
      size = 10,
      position = "bottom",
    },
}

return dapuiconfig
