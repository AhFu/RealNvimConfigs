-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ubuntu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    config = { "\27LJ\2\nÇ\4\0\0\4\0\t\0\0146\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0005\3\5\0=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\18\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\21semantic_letters\2\19maximum_length\3\30\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\26icon_separator_active\b‚ñé\23icon_custom_colors\1\nicons\2\14clickable\2\rclosable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\15bufferline\27myCustom.keymap.barbar\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\15cursorline\1\17winhighlight\2\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\ne\0\0\4\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\3\3\0B\1\2\1K\0\1\0 myCustom.keymap.lsp.lspsaga\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nê\5\0\0\5\0 \0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\14\0034\4\0\0=\4\16\0035\4\27\0=\4\18\0035\4\28\0=\4\20\0034\4\0\0=\4\22\0034\4\0\0=\4\24\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\1\0\4\ntheme\tauto\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\næ\3\0\0\n\0\23\00026\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\14\0009\4\a\0009\4\b\0044\6\6\0005\a\t\0>\a\1\0065\a\n\0>\a\2\0065\a\v\0>\a\3\0065\a\f\0>\a\4\0065\a\r\0>\a\5\6B\4\2\2=\4\b\0036\4\4\0'\6\15\0B\4\2\2=\4\16\3B\1\2\0019\1\6\0009\1\17\1'\3\18\0005\4\20\0009\5\16\0009\5\19\0059\5\17\5B\5\1\2=\5\16\0049\5\a\0009\5\b\0054\a\3\0005\b\21\0>\b\1\a4\b\3\0005\t\22\0>\t\1\bB\5\3\2=\5\b\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\fcmdline\fmapping\28myCustom.keymap.lsp.cmp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\nvsnip\fsources\vconfig\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-cursorline"] = {
    config = { "\27LJ\2\nπ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15cursorword\ahl\1\0\1\14underline\2\1\0\2\venable\2\15min_length\3\3\15cursorline\1\0\0\1\0\3\vnumber\1\venable\2\ftimeout\3Ë\a\nsetup\20nvim-cursorline\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
    url = "https://github.com/yamatsum/nvim-cursorline"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\ncloseœ\2\1\0\4\0\17\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0022\0\0ÄK\0\1\0\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\28myCustom.keymap.lsp.dap\ndapui&~/.virtualenvs/debugpy/bin/python\nsetup\15dap-python\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n\4\0\0\r\0%\0=6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\0026\3\0\0'\5\t\0B\3\2\0029\3\n\0039\3\v\0035\5\f\0=\1\r\5=\2\14\5B\3\2\0016\3\0\0'\5\t\0B\3\2\0029\3\15\0039\3\v\0035\5\16\0=\1\r\5=\2\14\5B\3\2\0016\3\0\0'\5\t\0B\3\2\0029\3\17\0039\3\v\0035\5#\0005\6!\0005\a\19\0005\b\18\0=\b\20\a5\b\22\0005\t\21\0=\t\23\b=\b\24\a5\b\28\0006\t\5\0009\t\25\t9\t\26\t'\v\27\0+\f\2\0B\t\3\2=\t\29\b=\b\30\a5\b\31\0=\b \a=\a\"\6=\6$\5B\3\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\16sumneko_lua\1\0\0\18rust_analyzer\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\1\26debounce_text_changes\3ñ\1+myCustom.keymap.lsp.lspconfig-onattach\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n«\1\0\0\4\0\t\0\0186\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0005\3\5\0=\3\6\2B\0\2\0016\0\0\0'\2\a\0B\0\2\0026\1\0\0'\3\b\0B\1\2\2K\0\1\0\21bufferline.state\21nvim-tree.events\tview\1\0\1\tside\nright\1\0\1\18open_on_setup\2\nsetup\14nvim-tree\29myCustom.keymap.nvimTree\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n•\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\20\0\0\6c\blua\bcpp\tjava\vpython\trust\bsql\tyaml\bvue\tjson\vkotlin\bcss\thtml\tbash\ncmake\15dockerfile\tscss\15javascript\15typescript\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-auto-save"] = {
    config = { "\27LJ\2\n+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\14auto_save\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-deep-space"] = {
    config = { "\27LJ\2\n®\2\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0008:highlight MatchParen  guifg=#56adb7 guibg=#51617d -:highlight Cursor guifg=red guibg=greeen\30let g:deepspace_italics=1\28:colorscheme deep-space\22set termguicolors\24set background=dark\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-deep-space",
    url = "https://github.com/tyrannicaltoucan/vim-deep-space"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-yankstack"] = {
    config = { "\27LJ\2\n\0\0\3\0\6\0\b6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\1K\0\1\0\30myCustom.keymap.yankstack\frequire!custom_bind_in_yankstack.lua\23yankstack_map_keys\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-yankstack",
    url = "https://github.com/maxbrunsfeld/vim-yankstack"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\nÇ\4\0\0\4\0\t\0\0146\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0005\3\5\0=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\18\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\21semantic_letters\2\19maximum_length\3\30\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\26icon_separator_active\b‚ñé\23icon_custom_colors\1\nicons\2\14clickable\2\rclosable\2\rtabpages\2\14auto_hide\1\14animation\2\nsetup\15bufferline\27myCustom.keymap.barbar\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\ne\0\0\4\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\3\3\0B\1\2\1K\0\1\0 myCustom.keymap.lsp.lspsaga\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-cursorline
time([[Config for nvim-cursorline]], true)
try_loadstring("\27LJ\2\nπ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\15cursorword\ahl\1\0\1\14underline\2\1\0\2\venable\2\15min_length\3\3\15cursorline\1\0\0\1\0\3\vnumber\1\venable\2\ftimeout\3Ë\a\nsetup\20nvim-cursorline\frequire\0", "config", "nvim-cursorline")
time([[Config for nvim-cursorline]], false)
-- Config for: vim-auto-save
time([[Config for vim-auto-save]], true)
try_loadstring("\27LJ\2\n+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\14auto_save\6g\bvim\0", "config", "vim-auto-save")
time([[Config for vim-auto-save]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nê\5\0\0\5\0 \0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\14\0034\4\0\0=\4\16\0035\4\27\0=\4\18\0035\4\28\0=\4\20\0034\4\0\0=\4\22\0034\4\0\0=\4\24\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\1\0\4\ntheme\tauto\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\15cursorline\1\17winhighlight\2\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n\4\0\0\r\0%\0=6\0\0\0'\2\1\0B\0\2\0025\1\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\0026\4\5\0009\4\6\0049\4\a\0049\4\b\4B\4\1\0A\2\0\0026\3\0\0'\5\t\0B\3\2\0029\3\n\0039\3\v\0035\5\f\0=\1\r\5=\2\14\5B\3\2\0016\3\0\0'\5\t\0B\3\2\0029\3\15\0039\3\v\0035\5\16\0=\1\r\5=\2\14\5B\3\2\0016\3\0\0'\5\t\0B\3\2\0029\3\17\0039\3\v\0035\5#\0005\6!\0005\a\19\0005\b\18\0=\b\20\a5\b\22\0005\t\21\0=\t\23\b=\b\24\a5\b\28\0006\t\5\0009\t\25\t9\t\26\t'\v\27\0+\f\2\0B\t\3\2=\t\29\b=\b\30\a5\b\31\0=\b \a=\a\"\6=\6$\5B\3\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\16sumneko_lua\1\0\0\18rust_analyzer\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\1\26debounce_text_changes\3ñ\1+myCustom.keymap.lsp.lspconfig-onattach\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\næ\3\0\0\n\0\23\00026\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\14\0009\4\a\0009\4\b\0044\6\6\0005\a\t\0>\a\1\0065\a\n\0>\a\2\0065\a\v\0>\a\3\0065\a\f\0>\a\4\0065\a\r\0>\a\5\6B\4\2\2=\4\b\0036\4\4\0'\6\15\0B\4\2\2=\4\16\3B\1\2\0019\1\6\0009\1\17\1'\3\18\0005\4\20\0009\5\16\0009\5\19\0059\5\17\5B\5\1\2=\5\16\0049\5\a\0009\5\b\0054\a\3\0005\b\21\0>\b\1\a4\b\3\0005\t\22\0>\t\1\bB\5\3\2=\5\b\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\fcmdline\fmapping\28myCustom.keymap.lsp.cmp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\nvsnip\fsources\vconfig\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-yankstack
time([[Config for vim-yankstack]], true)
try_loadstring("\27LJ\2\n\0\0\3\0\6\0\b6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\1K\0\1\0\30myCustom.keymap.yankstack\frequire!custom_bind_in_yankstack.lua\23yankstack_map_keys\6g\bvim\0", "config", "vim-yankstack")
time([[Config for vim-yankstack]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\ncloseœ\2\1\0\4\0\17\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0022\0\0ÄK\0\1\0\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\28myCustom.keymap.lsp.dap\ndapui&~/.virtualenvs/debugpy/bin/python\nsetup\15dap-python\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n•\2\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\20\0\0\6c\blua\bcpp\tjava\vpython\trust\bsql\tyaml\bvue\tjson\vkotlin\bcss\thtml\tbash\ncmake\15dockerfile\tscss\15javascript\15typescript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-deep-space
time([[Config for vim-deep-space]], true)
try_loadstring("\27LJ\2\n®\2\0\0\3\0\b\0\0256\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\1K\0\1\0008:highlight MatchParen  guifg=#56adb7 guibg=#51617d -:highlight Cursor guifg=red guibg=greeen\30let g:deepspace_italics=1\28:colorscheme deep-space\22set termguicolors\24set background=dark\bcmd\bvim\0", "config", "vim-deep-space")
time([[Config for vim-deep-space]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n«\1\0\0\4\0\t\0\0186\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0005\3\5\0=\3\6\2B\0\2\0016\0\0\0'\2\a\0B\0\2\0026\1\0\0'\3\b\0B\1\2\2K\0\1\0\21bufferline.state\21nvim-tree.events\tview\1\0\1\tside\nright\1\0\1\18open_on_setup\2\nsetup\14nvim-tree\29myCustom.keymap.nvimTree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
