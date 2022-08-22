-- guess-indent
-- This is the default configuration
require('guess-indent').setup {
  auto_cmd = true,  -- Set to false to disable automatic execution
  filetype_exclude = {  -- A list of filetypes for which the auto command gets disabled
    "netrw",
    "tutor",
  },
  buftype_exclude = {  -- A list of buffer types for which the auto command gets disabled
    "help",
    "nofile",
    "terminal",
    "prompt",
  },
}



-- hop.nvim
require('hop').setup { }



-- which-key.nvim
require('which-key').setup { }



-- nvim-bqf
require('bqf').setup { }
