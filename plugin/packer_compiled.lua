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
    config = { "\27LJ\2\2‚\4\0\0\3\0\t\0\0146\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0029\0\3\0005\1\4\0005\2\5\0=\2\6\0015\2\a\0=\2\b\1B\0\2\1K\0\1\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\18\19icon_close_tab\bï™•\28icon_separator_inactive\bâ–Ž\23icon_custom_colors\1\20maximum_padding\3\1\20insert_at_start\1\21semantic_letters\2\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\rclosable\2\14auto_hide\1\19maximum_length\3\30\16icon_pinned\bï¤‚\nicons\2\26icon_separator_active\bâ–Ž\14animation\2\14clickable\2\rtabpages\2\18insert_at_end\1\28icon_close_tab_modified\bâ—\nsetup\15bufferline\27myCustom.keymap.barbar\frequire\0" },
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
    config = { "\27LJ\2\2T\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\17winhighlight\2\15cursorline\1\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\2u\0\0\2\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0016\0\0\0'\1\4\0B\0\2\1K\0\1\0\24myCustom.keymap.hop\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\2w\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\2e\0\0\3\0\4\0\t6\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\2\3\0B\1\2\1K\0\1\0 myCustom.keymap.lsp.lspsaga\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2\5\0\0\4\0 \0/6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\n\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2=\2\v\0015\2\r\0005\3\f\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\2=\2\25\0015\2\26\0004\3\0\0=\3\14\0024\3\0\0=\3\16\0025\3\27\0=\3\18\0025\3\28\0=\3\20\0024\3\0\0=\3\22\0024\3\0\0=\3\24\2=\2\29\0014\2\0\0=\2\30\0014\2\0\0=\2\31\1B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\1\0\4\17globalstatus\1\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2¾\3\0\0\b\0\23\00026\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\1\5\0B\0\2\0029\1\6\0005\2\14\0009\3\a\0009\3\b\0034\4\6\0005\5\t\0>\5\1\0045\5\n\0>\5\2\0045\5\v\0>\5\3\0045\5\f\0>\5\4\0045\5\r\0>\5\5\4B\3\2\2=\3\b\0026\3\4\0'\4\15\0B\3\2\2=\3\16\2B\1\2\0019\1\6\0009\1\17\1'\2\18\0005\3\20\0009\4\16\0009\4\19\0049\4\17\4B\4\1\2=\4\16\0039\4\a\0009\4\b\0044\5\3\0005\6\21\0>\6\1\0054\6\3\0005\a\22\0>\a\1\6B\4\3\2=\4\b\3B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\fcmdline\fmapping\28myCustom.keymap.lsp.cmp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\nvsnip\fsources\vconfig\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\2\30\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\topen\31\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\nclose\31\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\ncloseÏ\2\1\0\4\0\17\0%6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\0016\0\0\0'\1\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\1\5\0B\0\2\0016\0\0\0'\1\6\0B\0\2\0026\1\0\0'\2\4\0B\1\2\0029\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0022\0\0€K\0\1\0\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\28myCustom.keymap.lsp.dap\ndapui&~/.virtualenvs/debugpy/bin/python\nsetup\15dap-python\frequire\0" },
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
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\2¾\4\0\5\18\0\19\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2€+\5\1\0X\6\1€+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\n\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18€'\n\5\0\18\v\n\0009\n\6\n\18\f\t\0)\r\1\0\0\r\4\0X\r\2€+\r\1\0X\14\1€+\r\2\0\4\5\r\0X\r\2€'\r\a\0X\14\1€'\r\b\0B\n\4\2\18\6\n\0X\n\14€\t\t\0\0X\n\v€\b\4\0\0X\n\2€+\n\1\0X\v\1€+\n\2\0\4\5\n\0X\n\2€'\6\a\0X\n\1€'\6\b\0X\n\1€'\6\t\0006\n\n\0008\v\3\1B\n\2\3\15\0\2\0X\f\27€\21\f\1\0\6\6\t\0X\r\t€'\r\v\0\18\14\r\0009\r\6\r\18\15\6\0\18\16\3\0\18\17\f\0B\r\5\2\18\a\r\0X\r\a€'\r\f\0\18\14\r\0009\r\6\r\18\15\3\0\18\16\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\r\0>\14\1\r5\14\14\0>\a\1\14>\14\2\r\18\b\r\0X\f\14€'\f\15\0\18\r\f\0009\f\6\f\18\14\6\0\18\15\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\16\0>\r\1\f5\r\17\0>\a\1\r>\r\2\f\18\b\f\0009\f\18\0)\r\0\0\23\14\0\n\23\15\0\v\18\16\b\0\18\17\2\0B\f\6\1K\0\1\0\fsetVirt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\bâ–¼\bâ–²\vformat\t%d%s\babs\tmath\18searchforward\6v\bvim\2w\1\0\3\0\a\0\f6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0029\0\3\0005\1\5\0003\2\4\0=\2\6\1B\0\2\1K\0\1\0\18override_lens\1\0\0\0\nsetup\fhlslens\28myCustom.keymap.hlslens\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\2š\6\0\0\v\0*\0P6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0025\1\3\0006\2\0\0'\3\4\0B\2\2\0029\2\5\0026\3\6\0009\3\a\0039\3\b\0039\3\t\3B\3\1\0A\2\0\0026\3\6\0009\3\n\0036\4\6\0009\4\n\0049\4\v\4'\5\f\0&\4\5\4=\4\v\0036\3\6\0009\3\n\0036\4\6\0009\4\n\0049\4\v\4'\5\r\0&\4\5\4=\4\v\0036\3\0\0'\4\14\0B\3\2\0029\3\15\0039\3\16\0035\4\17\0=\1\18\4=\2\19\4B\3\2\0016\3\0\0'\4\14\0B\3\2\0029\3\20\0039\3\16\0035\4\21\0=\1\18\4=\2\19\4B\3\2\0016\3\0\0'\4\14\0B\3\2\0029\3\22\0039\3\16\0035\4(\0005\5&\0005\6\24\0005\a\23\0=\a\25\0065\a\27\0005\b\26\0=\b\28\a=\a\29\0065\a!\0006\b\6\0009\b\30\b9\b\31\b'\t \0+\n\2\0B\b\3\2=\b\"\a=\a#\0065\a$\0=\a%\6=\6'\5=\5)\4B\3\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\16sumneko_lua\1\0\0\18rust_analyzer\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig*:/home/ubuntu/lua-language-server/bin\29:/home/ubuntu/.local/bin\tPATH\benv\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\1\26debounce_text_changes\3–\1+myCustom.keymap.lsp.lspconfig-onattach\26myCustom.autocmds.lsp\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2Ç\1\0\0\3\0\t\0\0186\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0029\0\3\0005\1\4\0005\2\5\0=\2\6\1B\0\2\0016\0\0\0'\1\a\0B\0\2\0026\1\0\0'\2\b\0B\1\2\2K\0\1\0\21bufferline.state\21nvim-tree.events\tview\1\0\1\tside\nright\1\0\1\18open_on_setup\2\nsetup\14nvim-tree\29myCustom.keymap.nvimTree\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2Î\3\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\20\0\0\6c\blua\bcpp\tjava\vpython\trust\bsql\tyaml\bvue\tjson\vkotlin\bcss\thtml\tbash\ncmake\15dockerfile\tscss\15javascript\15typescript\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    config = { "\27LJ\2\2_\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\1K\0\1\0\31myCustom.autocmds.undoTree\29myCustom.keymap.undoTree\frequire\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-auto-save"] = {
    config = { "\27LJ\2\2+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\14auto_save\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-deep-space"] = {
    config = { "\27LJ\2\2¨\2\0\0\2\0\b\0\0256\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\1\0'\1\3\0B\0\2\0016\0\0\0009\0\1\0'\1\4\0B\0\2\0016\0\0\0009\0\1\0'\1\5\0B\0\2\0016\0\0\0009\0\1\0'\1\6\0B\0\2\0016\0\0\0009\0\1\0'\1\a\0B\0\2\1K\0\1\0008:highlight MatchParen  guifg=#56adb7 guibg=#51617d -:highlight Cursor guifg=red guibg=greeen\30let g:deepspace_italics=1\28:colorscheme deep-space\22set termguicolors\24set background=dark\bcmd\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-deep-space",
    url = "https://github.com/tyrannicaltoucan/vim-deep-space"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
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
  ["vim-wordmotion"] = {
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-wordmotion",
    url = "https://github.com/chaoren/vim-wordmotion"
  },
  ["vim-yankstack"] = {
    config = { "\27LJ\2\2\0\0\2\0\6\0\b6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\1\5\0B\0\2\1K\0\1\0\30myCustom.keymap.yankstack\frequire!custom_bind_in_yankstack.lua\23yankstack_map_keys\6g\bvim\0" },
    loaded = true,
    path = "/home/ubuntu/.local/share/nvim/site/pack/packer/start/vim-yankstack",
    url = "https://github.com/maxbrunsfeld/vim-yankstack"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
try_loadstring("\27LJ\2\2E\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rNvimTree\27Illuminate_ftblacklist\6g\bvim\0", "setup", "vim-illuminate")
time([[Setup for vim-illuminate]], false)
time([[packadd for vim-illuminate]], true)
vim.cmd [[packadd vim-illuminate]]
time([[packadd for vim-illuminate]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\2u\0\0\2\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\0016\0\0\0'\1\4\0B\0\2\1K\0\1\0\24myCustom.keymap.hop\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2Î\3\0\0\4\0\14\0\0176\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\6\0=\2\a\0015\2\b\0005\3\t\0=\3\n\2=\2\v\0015\2\f\0=\2\r\1B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgnn\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\2\1\20\0\0\6c\blua\bcpp\tjava\vpython\trust\bsql\tyaml\bvue\tjson\vkotlin\bcss\thtml\tbash\ncmake\15dockerfile\tscss\15javascript\15typescript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2¾\3\0\0\b\0\23\00026\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\1\5\0B\0\2\0029\1\6\0005\2\14\0009\3\a\0009\3\b\0034\4\6\0005\5\t\0>\5\1\0045\5\n\0>\5\2\0045\5\v\0>\5\3\0045\5\f\0>\5\4\0045\5\r\0>\5\5\4B\3\2\2=\3\b\0026\3\4\0'\4\15\0B\3\2\2=\3\16\2B\1\2\0019\1\6\0009\1\17\1'\2\18\0005\3\20\0009\4\16\0009\4\19\0049\4\17\4B\4\1\2=\4\16\0039\4\a\0009\4\b\0044\5\3\0005\6\21\0>\6\1\0054\6\3\0005\a\22\0>\a\1\6B\4\3\2=\4\b\3B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\fcmdline\fmapping\28myCustom.keymap.lsp.cmp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\nvsnip\fsources\vconfig\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2Ç\1\0\0\3\0\t\0\0186\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0029\0\3\0005\1\4\0005\2\5\0=\2\6\1B\0\2\0016\0\0\0'\1\a\0B\0\2\0026\1\0\0'\2\b\0B\1\2\2K\0\1\0\21bufferline.state\21nvim-tree.events\tview\1\0\1\tside\nright\1\0\1\18open_on_setup\2\nsetup\14nvim-tree\29myCustom.keymap.nvimTree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\2‚\4\0\0\3\0\t\0\0146\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0029\0\3\0005\1\4\0005\2\5\0=\2\6\0015\2\a\0=\2\b\1B\0\2\1K\0\1\0\17exclude_name\1\2\0\0\17package.json\15exclude_ft\1\2\0\0\15javascript\1\0\18\19icon_close_tab\bï™•\28icon_separator_inactive\bâ–Ž\23icon_custom_colors\1\20maximum_padding\3\1\20insert_at_start\1\21semantic_letters\2\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\rclosable\2\14auto_hide\1\19maximum_length\3\30\16icon_pinned\bï¤‚\nicons\2\26icon_separator_active\bâ–Ž\14animation\2\14clickable\2\rtabpages\2\18insert_at_end\1\28icon_close_tab_modified\bâ—\nsetup\15bufferline\27myCustom.keymap.barbar\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2w\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\31show_current_context_start\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: vim-deep-space
time([[Config for vim-deep-space]], true)
try_loadstring("\27LJ\2\2¨\2\0\0\2\0\b\0\0256\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\1\0'\1\3\0B\0\2\0016\0\0\0009\0\1\0'\1\4\0B\0\2\0016\0\0\0009\0\1\0'\1\5\0B\0\2\0016\0\0\0009\0\1\0'\1\6\0B\0\2\0016\0\0\0009\0\1\0'\1\a\0B\0\2\1K\0\1\0008:highlight MatchParen  guifg=#56adb7 guibg=#51617d -:highlight Cursor guifg=red guibg=greeen\30let g:deepspace_italics=1\28:colorscheme deep-space\22set termguicolors\24set background=dark\bcmd\bvim\0", "config", "vim-deep-space")
time([[Config for vim-deep-space]], false)
-- Config for: vim-yankstack
time([[Config for vim-yankstack]], true)
try_loadstring("\27LJ\2\2\0\0\2\0\6\0\b6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\1\5\0B\0\2\1K\0\1\0\30myCustom.keymap.yankstack\frequire!custom_bind_in_yankstack.lua\23yankstack_map_keys\6g\bvim\0", "config", "vim-yankstack")
time([[Config for vim-yankstack]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\2\2T\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\2\17winhighlight\2\15cursorline\1\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2\5\0\0\4\0 \0/6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\n\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2=\2\v\0015\2\r\0005\3\f\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\2=\2\25\0015\2\26\0004\3\0\0=\3\14\0024\3\0\0=\3\16\0025\3\27\0=\3\18\0025\3\28\0=\3\20\0024\3\0\0=\3\22\0024\3\0\0=\3\24\2=\2\29\0014\2\0\0=\2\30\0014\2\0\0=\2\31\1B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bî‚°\nright\bî‚²\25component_separators\1\0\2\tleft\bî‚±\nright\bî‚³\1\0\4\17globalstatus\1\25always_divide_middle\2\ntheme\tauto\18icons_enabled\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\2\30\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\topen\31\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\nclose\31\0\0\1\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1À\ncloseÏ\2\1\0\4\0\17\0%6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\0016\0\0\0'\1\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\1\5\0B\0\2\0016\0\0\0'\1\6\0B\0\2\0026\1\0\0'\2\4\0B\1\2\0029\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0022\0\0€K\0\1\0\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\28myCustom.keymap.lsp.dap\ndapui&~/.virtualenvs/debugpy/bin/python\nsetup\15dap-python\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\2e\0\0\3\0\4\0\t6\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\2\3\0B\1\2\1K\0\1\0 myCustom.keymap.lsp.lspsaga\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\2š\6\0\0\v\0*\0P6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0025\1\3\0006\2\0\0'\3\4\0B\2\2\0029\2\5\0026\3\6\0009\3\a\0039\3\b\0039\3\t\3B\3\1\0A\2\0\0026\3\6\0009\3\n\0036\4\6\0009\4\n\0049\4\v\4'\5\f\0&\4\5\4=\4\v\0036\3\6\0009\3\n\0036\4\6\0009\4\n\0049\4\v\4'\5\r\0&\4\5\4=\4\v\0036\3\0\0'\4\14\0B\3\2\0029\3\15\0039\3\16\0035\4\17\0=\1\18\4=\2\19\4B\3\2\0016\3\0\0'\4\14\0B\3\2\0029\3\20\0039\3\16\0035\4\21\0=\1\18\4=\2\19\4B\3\2\0016\3\0\0'\4\14\0B\3\2\0029\3\22\0039\3\16\0035\4(\0005\5&\0005\6\24\0005\a\23\0=\a\25\0065\a\27\0005\b\26\0=\b\28\a=\a\29\0065\a!\0006\b\6\0009\b\30\b9\b\31\b'\t \0+\n\2\0B\b\3\2=\b\"\a=\a#\0065\a$\0=\a%\6=\6'\5=\5)\4B\3\2\1K\0\1\0\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\16sumneko_lua\1\0\0\18rust_analyzer\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig*:/home/ubuntu/lua-language-server/bin\29:/home/ubuntu/.local/bin\tPATH\benv\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\1\26debounce_text_changes\3–\1+myCustom.keymap.lsp.lspconfig-onattach\26myCustom.autocmds.lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-auto-save
time([[Config for vim-auto-save]], true)
try_loadstring("\27LJ\2\2+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\14auto_save\6g\bvim\0", "config", "vim-auto-save")
time([[Config for vim-auto-save]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\2_\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\1K\0\1\0\31myCustom.autocmds.undoTree\29myCustom.keymap.undoTree\frequire\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\2¾\4\0\5\18\0\19\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2€+\5\1\0X\6\1€+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\n\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18€'\n\5\0\18\v\n\0009\n\6\n\18\f\t\0)\r\1\0\0\r\4\0X\r\2€+\r\1\0X\14\1€+\r\2\0\4\5\r\0X\r\2€'\r\a\0X\14\1€'\r\b\0B\n\4\2\18\6\n\0X\n\14€\t\t\0\0X\n\v€\b\4\0\0X\n\2€+\n\1\0X\v\1€+\n\2\0\4\5\n\0X\n\2€'\6\a\0X\n\1€'\6\b\0X\n\1€'\6\t\0006\n\n\0008\v\3\1B\n\2\3\15\0\2\0X\f\27€\21\f\1\0\6\6\t\0X\r\t€'\r\v\0\18\14\r\0009\r\6\r\18\15\6\0\18\16\3\0\18\17\f\0B\r\5\2\18\a\r\0X\r\a€'\r\f\0\18\14\r\0009\r\6\r\18\15\3\0\18\16\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\r\0>\14\1\r5\14\14\0>\a\1\14>\14\2\r\18\b\r\0X\f\14€'\f\15\0\18\r\f\0009\f\6\f\18\14\6\0\18\15\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\16\0>\r\1\f5\r\17\0>\a\1\r>\r\2\f\18\b\f\0009\f\18\0)\r\0\0\23\14\0\n\23\15\0\v\18\16\b\0\18\17\2\0B\f\6\1K\0\1\0\fsetVirt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\bâ–¼\bâ–²\vformat\t%d%s\babs\tmath\18searchforward\6v\bvim\2w\1\0\3\0\a\0\f6\0\0\0'\1\1\0B\0\2\0016\0\0\0'\1\2\0B\0\2\0029\0\3\0005\1\5\0003\2\4\0=\2\6\1B\0\2\1K\0\1\0\18override_lens\1\0\0\0\nsetup\fhlslens\28myCustom.keymap.hlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
