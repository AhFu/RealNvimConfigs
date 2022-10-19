-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/hokhk/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/hokhk/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/hokhk/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/hokhk/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/hokhk/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["any-jump.vim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/any-jump.vim",
    url = "https://github.com/pechorin/any-jump.vim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n∫\3\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\18\14animation\2\14auto_hide\1\21semantic_letters\2\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\26icon_separator_active\b‚ñé\23icon_custom_colors\1\nicons\2\14clickable\2\rclosable\2\rtabpages\2\19maximum_length\3\30\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\nsetup\15bufferline\27myCustom.keymap.barbar\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17winhighlight\2\15cursorline\1\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nq\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\1K\0\1\0\24myCustom.keymap.hop\1\0\1\28jump_on_sole_occurrence\1\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kotlin-vim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/kotlin-vim",
    url = "https://github.com/udalov/kotlin-vim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\ne\0\0\4\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\3\3\0B\1\2\1K\0\1\0 myCustom.keymap.lsp.lspsaga\18init_lsp_saga\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nê\5\0\0\5\0 \0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\14\0034\4\0\0=\4\16\0035\4\27\0=\4\18\0035\4\28\0=\4\20\0034\4\0\0=\4\22\0034\4\0\0=\4\24\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim·\3\1\0\n\0\27\00066\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\14\0009\4\a\0009\4\b\0044\6\6\0005\a\t\0>\a\1\0065\a\n\0>\a\2\0065\a\v\0>\a\3\0065\a\f\0>\a\4\0065\a\r\0>\a\5\6B\4\2\2=\4\b\0036\4\4\0'\6\15\0B\4\2\2=\4\16\0035\4\18\0003\5\17\0=\5\19\4=\4\20\3B\1\2\0019\1\6\0009\1\21\1'\3\22\0005\4\24\0009\5\16\0009\5\23\0059\5\21\5B\5\1\2=\5\16\0049\5\a\0009\5\b\0054\a\3\0005\b\25\0>\b\1\a4\b\3\0005\t\26\0>\t\1\bB\5\3\2=\5\b\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\fcmdline\fsnippet\vexpand\1\0\0\0\fmapping\28myCustom.keymap.lsp.cmp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\nvsnip\fsources\vconfig\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose‘\b\1\0\r\0,\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0029\2\17\0005\3\19\0005\4\20\0=\4\21\3=\3\18\0026\2\22\0005\4\23\0B\2\2\4X\5\19Ä9\a\24\0004\b\3\0005\t\25\0006\n\26\0009\n\27\n9\n\28\nB\n\1\2=\n\29\t5\n\30\0=\n\31\t>\t\1\b5\t \0006\n\0\0'\f!\0B\n\2\0029\n\"\n=\n#\t>\t\2\b<\b\6\aE\5\3\3R\5Î9\2\17\0005\3%\0005\4&\0=\4\21\3=\3$\0026\2\0\0'\4'\0B\2\2\0029\2(\2'\4)\0005\5+\0005\6*\0=\6$\5B\2\3\0012\0\0ÄK\0\1\0\1\0\0\1\3\0\0\15typescript\bvue4/home/hokhk/ts/vite-project/.vscode/launch.json\18load_launchjs\19dap.ext.vscode\1\2\0\0</home/hokhk/vscode-firefox-debug/dist/adapter.bundle.js\1\0\2\fcommand\tnode\ttype\15executable\ffirefox\14processId\17pick_process\14dap.utils\1\0\3\frequest\vattach\tname\22Attach to process\ttype\nnode2\routFiles\1\2\0\0\25/home/ubuntu/ts/*.js\bcwd\vgetcwd\afn\bvim\1\0\a\fprogram\f${file}\rprotocol\14inspector\frequest\vlaunch\ttype\nnode2\fconsole\23integratedTerminal\tname\vLaunch\15sourceMaps\2\19configurations\1\2\0\0\15javascript\vipairs\targs\1\2\0\0009/home/ubuntu/vscode-node-debug2/out/src/nodeDebug.js\1\0\2\fcommand\tnode\ttype\15executable\nnode2\radapters\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\28myCustom.keymap.lsp.dap\ndapui&~/.virtualenvs/debugpy/bin/python\nsetup\15dap-python\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\næ\4\0\5\19\0\19\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2Ä+\5\1\0X\6\1Ä+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\v\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18Ä'\n\5\0\18\f\n\0009\n\6\n\18\r\t\0)\14\1\0\0\14\4\0X\14\2Ä+\14\1\0X\15\1Ä+\14\2\0\4\5\14\0X\14\2Ä'\14\a\0X\15\1Ä'\14\b\0B\n\4\2\18\6\n\0X\n\14Ä\t\t\0\0X\n\vÄ\b\4\0\0X\n\2Ä+\n\1\0X\v\1Ä+\n\2\0\4\5\n\0X\n\2Ä'\6\a\0X\n\1Ä'\6\b\0X\n\1Ä'\6\t\0006\n\n\0008\f\3\1B\n\2\3\15\0\2\0X\f\27Ä\21\f\1\0\6\6\t\0X\r\tÄ'\r\v\0\18\15\r\0009\r\6\r\18\16\6\0\18\17\3\0\18\18\f\0B\r\5\2\18\a\r\0X\r\aÄ'\r\f\0\18\15\r\0009\r\6\r\18\16\3\0\18\17\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\r\0>\14\1\r5\14\14\0>\a\1\14>\14\2\r\18\b\r\0X\f\14Ä'\f\15\0\18\14\f\0009\f\6\f\18\15\6\0\18\16\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\16\0>\r\1\f5\r\17\0>\a\1\r>\r\2\f\18\b\f\0009\f\18\0)\14\0\0\23\15\0\n\23\16\0\v\18\17\b\0\18\18\2\0B\f\6\1K\0\1\0\fsetVirt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\b‚ñº\b‚ñ≤\vformat\t%d%s\babs\tmath\18searchforward\6v\bvim\2w\1\0\4\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\5\0003\3\4\0=\3\6\2B\0\2\1K\0\1\0\18override_lens\1\0\0\0\nsetup\fhlslens\28myCustom.keymap.hlslens\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n∑\n\0\0\r\0<\0à\0016\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0025\1\3\0006\2\4\0009\2\5\0029\2\6\0029\2\a\2B\2\1\0029\3\b\0025\4\n\0=\4\t\0036\3\0\0'\5\v\0B\3\2\0029\3\f\3\18\5\2\0B\3\2\2\18\2\3\0006\3\4\0009\3\r\0036\4\4\0009\4\r\0049\4\14\4'\5\15\0&\4\5\4=\4\14\0036\3\4\0009\3\r\0036\4\4\0009\4\r\0049\4\14\4'\5\16\0&\4\5\4=\4\14\0036\3\0\0'\5\17\0B\3\2\0029\3\18\0039\3\19\0035\5\20\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\23\0039\3\19\0035\5\24\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\25\0039\3\19\0035\5+\0005\6)\0005\a\27\0005\b\26\0=\b\28\a5\b\30\0005\t\29\0=\t\31\b=\b \a5\b$\0006\t\4\0009\t!\t9\t\"\t'\v#\0+\f\2\0B\t\3\2=\t%\b=\b&\a5\b'\0=\b(\a=\a*\6=\6,\5=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3-\0039\3\19\0035\5.\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3/\0039\3\19\0035\0050\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\0031\0039\3\19\0035\0052\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\0033\0039\3\19\0035\0055\0005\0064\0=\0066\0055\0068\0005\a7\0=\a9\6=\6:\5=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3;\0039\3\19\0034\5\0\0B\3\2\1K\0\1\0\vbashls\17init_options\15typescript\1\0\0\1\0\1\15serverPathB/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js\14filetypes\1\0\0\1\b\0\0\15typescript\15javascript\20javascriptreact\20typescriptreact\bvue\tjson\tsass\nvolar\1\0\0\remmet_ls\1\0\0\njdtls\1\0\0\27kotlin_language_server\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\16sumneko_lua\1\0\0\18rust_analyzer\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig*:/home/ubuntu/lua-language-server/bin\29:/home/ubuntu/.local/bin\tPATH\benv\25default_capabilities\17cmp_nvim_lsp\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\1\0\1\26debounce_text_changes\3ñ\1+myCustom.keymap.lsp.lspconfig-onattach\26myCustom.autocmds.lsp\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n¥\2\0\0\6\0\15\0\0246\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0005\3\5\0=\3\6\0025\3\n\0005\4\b\0005\5\a\0=\5\t\4=\4\v\3=\3\f\2B\0\2\0016\0\0\0'\2\r\0B\0\2\0026\1\0\0'\3\14\0B\1\2\2K\0\1\0\21bufferline.state\21nvim-tree.events\factions\15expand_all\1\0\0\fexclude\1\0\1\25max_folder_discovery\3¨\2\1\4\0\0\t.git\17node_modules\nbuild\tview\1\0\1\tside\nright\1\0\1\18open_on_setup\2\nsetup\14nvim-tree\29myCustom.keymap.nvimTree\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nŒ\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\2\1\20\0\0\6c\blua\bcpp\tjava\vpython\trust\bsql\tyaml\bvue\tjson\vkotlin\bcss\thtml\tbash\ncmake\15dockerfile\tscss\15javascript\15typescript\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-ufo"] = {
    config = { "\27LJ\2\n˘\2\0\5\23\0\v\0I4\5\0\0'\6\0\0\18\b\6\0009\6\1\6!\t\1\2B\6\3\0026\a\2\0009\a\3\a9\a\4\a\18\t\6\0B\a\2\2!\b\a\3)\t\0\0006\n\5\0\18\f\0\0B\n\2\4X\r/Ä:\15\1\0146\16\2\0009\16\3\0169\16\4\16\18\18\15\0B\16\2\2 \17\16\t\1\17\b\0X\17\6Ä6\17\6\0009\17\a\17\18\19\5\0\18\20\14\0B\17\3\1X\17\31Ä\18\17\4\0\18\19\15\0!\20\t\bB\17\3\2\18\15\17\0:\17\2\0146\18\6\0009\18\a\18\18\20\5\0004\21\3\0>\15\1\21>\17\2\21B\18\3\0016\18\2\0009\18\3\0189\18\4\18\18\20\15\0B\18\2\2\18\16\18\0 \18\16\t\1\18\b\0X\18\fÄ\18\18\6\0'\19\b\0\18\21\19\0009\19\t\19!\22\t\b!\22\16\22B\19\3\2&\6\19\18X\n\3Ä \t\16\tE\r\3\3R\rœ6\n\6\0009\n\a\n\18\f\5\0005\r\n\0>\6\1\rB\n\3\1L\5\2\0\1\3\0\0\0\fMoreMsg\brep\6 \vinsert\ntable\vipairs\20strdisplaywidth\afn\bvim\vformat\r ÔïÅ %d º\1\0\2\6\1\t\0\0266\2\0\0\18\4\0\0B\2\2\2\a\2\1\0X\2\14Ä\18\4\0\0009\2\2\0'\5\3\0B\2\3\2\15\0\2\0X\3\bÄ6\2\4\0'\4\5\0B\2\2\0029\2\6\2\18\4\1\0-\5\0\0D\2\3\0X\2\6Ä6\2\4\0'\4\a\0B\2\2\0029\2\b\2\18\4\0\0D\2\2\0K\0\1\0\0¿\vreject\fpromise\rgetFolds\bufo\frequire\25UfoFallbackException\nmatch\vstring\ttype$\0\1\5\1\1\0\4-\1\0\0\18\3\0\0'\4\0\0D\1\3\0\1¿\15treesitter \0\1\5\1\1\0\4-\1\0\0\18\3\0\0'\4\0\0D\1\3\0\1¿\vindentm\1\1\6\0\b\0\0173\1\0\0006\2\1\0'\4\2\0B\2\2\0029\2\3\2'\4\4\0\18\5\0\0B\2\3\2\18\4\2\0009\2\5\0023\5\6\0B\2\3\2\18\4\2\0009\2\5\0023\5\a\0002\0\0ÄD\2\3\0\0\0\ncatch\blsp\rgetFolds\bufo\frequire\0Æ\3\1\0\a\0\23\00066\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0)\1c\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\v\0'\6\f\0B\4\2\0029\4\r\4B\0\4\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\14\0006\4\v\0'\6\f\0B\4\2\0029\4\15\4B\0\4\0016\0\0\0009\0\1\0'\1\17\0=\1\16\0006\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\18\0003\1\19\0006\2\v\0'\4\f\0B\2\2\0029\2\20\0025\4\21\0=\0\22\4B\2\2\1K\0\1\0\27fold_virt_text_handler\1\0\0\nsetup\0\0006eob: ,fold: ,foldopen:Ôëº,foldsep: ,foldclose:Ôë†\14fillchars\18closeAllFolds\azM\17openAllFolds\bufo\frequire\azR\6n\bset\vkeymap\15foldenable\19foldlevelstart\14foldlevel\0061\15foldcolumn\6o\bvim\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    config = { "\27LJ\2\n_\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\31myCustom.autocmds.undoTree\29myCustom.keymap.undoTree\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-auto-save"] = {
    config = { "\27LJ\2\n+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\14auto_save\6g\bvim\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-auto-save",
    url = "https://github.com/907th/vim-auto-save"
  },
  ["vim-clap"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-clap",
    url = "https://github.com/liuchengxu/vim-clap"
  },
  ["vim-deep-space"] = {
    config = { "\27LJ\2\n≠\4\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0*:highlight foldColumn guifg='#323c4d'+:highlight TSVariable   guifg=#9aa7bd ':highlight LineNr   guifg=#51617d &:highlight Folded   guifg=#733417':highlight Comment   guifg=#7d3b1d8:highlight MatchParen  guifg=#56adb7 guibg=#51617d -:highlight Cursor guifg=red guibg=greeen\30let g:deepspace_italics=1\28:colorscheme deep-space\22set termguicolors\24set background=dark\bcmd\bvim\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-deep-space",
    url = "https://github.com/tyrannicaltoucan/vim-deep-space"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29myCustom.keymap.surround\frequire\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["vim-yankstack"] = {
    config = { "\27LJ\2\n\0\0\3\0\6\0\b6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\1K\0\1\0\30myCustom.keymap.yankstack\frequire!custom_bind_in_yankstack.lua\23yankstack_map_keys\6g\bvim\0" },
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vim-yankstack",
    url = "https://github.com/maxbrunsfeld/vim-yankstack"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/hokhk/.local/share/nvim/site/pack/packer/start/vista.vim",
    url = "https://github.com/liuchengxu/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
try_loadstring("\27LJ\2\nE\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rNvimTree\27Illuminate_ftblacklist\6g\bvim\0", "setup", "vim-illuminate")
time([[Setup for vim-illuminate]], false)
time([[packadd for vim-illuminate]], true)
vim.cmd [[packadd vim-illuminate]]
time([[packadd for vim-illuminate]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nê\5\0\0\5\0 \0/6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\3=\3\25\0025\3\26\0004\4\0\0=\4\14\0034\4\0\0=\4\16\0035\4\27\0=\4\18\0035\4\28\0=\4\20\0034\4\0\0=\4\22\0034\4\0\0=\4\24\3=\3\29\0024\3\0\0=\3\30\0024\3\0\0=\3\31\2B\0\2\1K\0\1\0\15extensions\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\1\2\0\0\rNvimTree\23section_separators\1\0\2\tleft\bÓÇ∞\nright\bÓÇ≤\25component_separators\1\0\2\tleft\bÓÇ±\nright\bÓÇ≥\1\0\4\18icons_enabled\2\25always_divide_middle\2\17globalstatus\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nŒ\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\21node_incremental\bgrn\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\2\1\20\0\0\6c\blua\bcpp\tjava\vpython\trust\bsql\tyaml\bvue\tjson\vkotlin\bcss\thtml\tbash\ncmake\15dockerfile\tscss\15javascript\15typescript\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\n_\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\31myCustom.autocmds.undoTree\29myCustom.keymap.undoTree\frequire\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim·\3\1\0\n\0\27\00066\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\1\6\0005\3\14\0009\4\a\0009\4\b\0044\6\6\0005\a\t\0>\a\1\0065\a\n\0>\a\2\0065\a\v\0>\a\3\0065\a\f\0>\a\4\0065\a\r\0>\a\5\6B\4\2\2=\4\b\0036\4\4\0'\6\15\0B\4\2\2=\4\16\0035\4\18\0003\5\17\0=\5\19\4=\4\20\3B\1\2\0019\1\6\0009\1\21\1'\3\22\0005\4\24\0009\5\16\0009\5\23\0059\5\21\5B\5\1\2=\5\16\0049\5\a\0009\5\b\0054\a\3\0005\b\25\0>\b\1\a4\b\3\0005\t\26\0>\t\1\bB\5\3\2=\5\b\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\vpreset\6:\fcmdline\fsnippet\vexpand\1\0\0\0\fmapping\28myCustom.keymap.lsp.cmp\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\1\0\1\tname\nvsnip\fsources\vconfig\nsetup\bcmp\frequire\1\4\0\0\tmenu\fmenuone\rnoselect\16completeopt\bopt\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: vim-yankstack
time([[Config for vim-yankstack]], true)
try_loadstring("\27LJ\2\n\0\0\3\0\6\0\b6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\1K\0\1\0\30myCustom.keymap.yankstack\frequire!custom_bind_in_yankstack.lua\23yankstack_map_keys\6g\bvim\0", "config", "vim-yankstack")
time([[Config for vim-yankstack]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
try_loadstring("\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose‘\b\1\0\r\0,\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\a\0009\2\b\0029\2\t\0023\3\v\0=\3\n\0029\2\a\0009\2\f\0029\2\r\0023\3\14\0=\3\n\0029\2\a\0009\2\f\0029\2\15\0023\3\16\0=\3\n\0029\2\17\0005\3\19\0005\4\20\0=\4\21\3=\3\18\0026\2\22\0005\4\23\0B\2\2\4X\5\19Ä9\a\24\0004\b\3\0005\t\25\0006\n\26\0009\n\27\n9\n\28\nB\n\1\2=\n\29\t5\n\30\0=\n\31\t>\t\1\b5\t \0006\n\0\0'\f!\0B\n\2\0029\n\"\n=\n#\t>\t\2\b<\b\6\aE\5\3\3R\5Î9\2\17\0005\3%\0005\4&\0=\4\21\3=\3$\0026\2\0\0'\4'\0B\2\2\0029\2(\2'\4)\0005\5+\0005\6*\0=\6$\5B\2\3\0012\0\0ÄK\0\1\0\1\0\0\1\3\0\0\15typescript\bvue4/home/hokhk/ts/vite-project/.vscode/launch.json\18load_launchjs\19dap.ext.vscode\1\2\0\0</home/hokhk/vscode-firefox-debug/dist/adapter.bundle.js\1\0\2\fcommand\tnode\ttype\15executable\ffirefox\14processId\17pick_process\14dap.utils\1\0\3\frequest\vattach\tname\22Attach to process\ttype\nnode2\routFiles\1\2\0\0\25/home/ubuntu/ts/*.js\bcwd\vgetcwd\afn\bvim\1\0\a\fprogram\f${file}\rprotocol\14inspector\frequest\vlaunch\ttype\nnode2\fconsole\23integratedTerminal\tname\vLaunch\15sourceMaps\2\19configurations\1\2\0\0\15javascript\vipairs\targs\1\2\0\0009/home/ubuntu/vscode-node-debug2/out/src/nodeDebug.js\1\0\2\fcommand\tnode\ttype\15executable\nnode2\radapters\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\bdap\28myCustom.keymap.lsp.dap\ndapui&~/.virtualenvs/debugpy/bin/python\nsetup\15dap-python\frequire\0", "config", "nvim-dap")
time([[Config for nvim-dap]], false)
-- Config for: vim-clap
time([[Config for vim-clap]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "vim-clap")
time([[Config for vim-clap]], false)
-- Config for: vim-deep-space
time([[Config for vim-deep-space]], true)
try_loadstring("\27LJ\2\n≠\4\0\0\3\0\r\0-6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0*:highlight foldColumn guifg='#323c4d'+:highlight TSVariable   guifg=#9aa7bd ':highlight LineNr   guifg=#51617d &:highlight Folded   guifg=#733417':highlight Comment   guifg=#7d3b1d8:highlight MatchParen  guifg=#56adb7 guibg=#51617d -:highlight Cursor guifg=red guibg=greeen\30let g:deepspace_italics=1\28:colorscheme deep-space\22set termguicolors\24set background=dark\bcmd\bvim\0", "config", "vim-deep-space")
time([[Config for vim-deep-space]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nq\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\1K\0\1\0\24myCustom.keymap.hop\1\0\1\28jump_on_sole_occurrence\1\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\ne\0\0\4\0\4\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\0\0'\3\3\0B\1\2\1K\0\1\0 myCustom.keymap.lsp.lspsaga\18init_lsp_saga\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
try_loadstring("\27LJ\2\n˘\2\0\5\23\0\v\0I4\5\0\0'\6\0\0\18\b\6\0009\6\1\6!\t\1\2B\6\3\0026\a\2\0009\a\3\a9\a\4\a\18\t\6\0B\a\2\2!\b\a\3)\t\0\0006\n\5\0\18\f\0\0B\n\2\4X\r/Ä:\15\1\0146\16\2\0009\16\3\0169\16\4\16\18\18\15\0B\16\2\2 \17\16\t\1\17\b\0X\17\6Ä6\17\6\0009\17\a\17\18\19\5\0\18\20\14\0B\17\3\1X\17\31Ä\18\17\4\0\18\19\15\0!\20\t\bB\17\3\2\18\15\17\0:\17\2\0146\18\6\0009\18\a\18\18\20\5\0004\21\3\0>\15\1\21>\17\2\21B\18\3\0016\18\2\0009\18\3\0189\18\4\18\18\20\15\0B\18\2\2\18\16\18\0 \18\16\t\1\18\b\0X\18\fÄ\18\18\6\0'\19\b\0\18\21\19\0009\19\t\19!\22\t\b!\22\16\22B\19\3\2&\6\19\18X\n\3Ä \t\16\tE\r\3\3R\rœ6\n\6\0009\n\a\n\18\f\5\0005\r\n\0>\6\1\rB\n\3\1L\5\2\0\1\3\0\0\0\fMoreMsg\brep\6 \vinsert\ntable\vipairs\20strdisplaywidth\afn\bvim\vformat\r ÔïÅ %d º\1\0\2\6\1\t\0\0266\2\0\0\18\4\0\0B\2\2\2\a\2\1\0X\2\14Ä\18\4\0\0009\2\2\0'\5\3\0B\2\3\2\15\0\2\0X\3\bÄ6\2\4\0'\4\5\0B\2\2\0029\2\6\2\18\4\1\0-\5\0\0D\2\3\0X\2\6Ä6\2\4\0'\4\a\0B\2\2\0029\2\b\2\18\4\0\0D\2\2\0K\0\1\0\0¿\vreject\fpromise\rgetFolds\bufo\frequire\25UfoFallbackException\nmatch\vstring\ttype$\0\1\5\1\1\0\4-\1\0\0\18\3\0\0'\4\0\0D\1\3\0\1¿\15treesitter \0\1\5\1\1\0\4-\1\0\0\18\3\0\0'\4\0\0D\1\3\0\1¿\vindentm\1\1\6\0\b\0\0173\1\0\0006\2\1\0'\4\2\0B\2\2\0029\2\3\2'\4\4\0\18\5\0\0B\2\3\2\18\4\2\0009\2\5\0023\5\6\0B\2\3\2\18\4\2\0009\2\5\0023\5\a\0002\0\0ÄD\2\3\0\0\0\ncatch\blsp\rgetFolds\bufo\frequire\0Æ\3\1\0\a\0\23\00066\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0)\1c\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\6\0006\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0006\4\v\0'\6\f\0B\4\2\0029\4\r\4B\0\4\0016\0\0\0009\0\a\0009\0\b\0'\2\t\0'\3\14\0006\4\v\0'\6\f\0B\4\2\0029\4\15\4B\0\4\0016\0\0\0009\0\1\0'\1\17\0=\1\16\0006\0\0\0009\0\1\0'\1\3\0=\1\2\0003\0\18\0003\1\19\0006\2\v\0'\4\f\0B\2\2\0029\2\20\0025\4\21\0=\0\22\4B\2\2\1K\0\1\0\27fold_virt_text_handler\1\0\0\nsetup\0\0006eob: ,fold: ,foldopen:Ôëº,foldsep: ,foldclose:Ôë†\14fillchars\18closeAllFolds\azM\17openAllFolds\bufo\frequire\azR\6n\bset\vkeymap\15foldenable\19foldlevelstart\14foldlevel\0061\15foldcolumn\6o\bvim\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\2\n∫\3\0\0\3\0\5\0\n6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\18\14animation\2\14auto_hide\1\21semantic_letters\2\fletters:asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP\19icon_close_tab\bÔôï\28icon_separator_inactive\b‚ñé\26icon_separator_active\b‚ñé\23icon_custom_colors\1\nicons\2\14clickable\2\rclosable\2\rtabpages\2\19maximum_length\3\30\20maximum_padding\3\1\20insert_at_start\1\18insert_at_end\1\16icon_pinned\bÔ§Ç\28icon_close_tab_modified\b‚óè\nsetup\15bufferline\27myCustom.keymap.barbar\frequire\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\31show_current_context_start\2\25show_current_context\2\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: vim-surround
time([[Config for vim-surround]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29myCustom.keymap.surround\frequire\0", "config", "vim-surround")
time([[Config for vim-surround]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17winhighlight\2\15cursorline\1\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n∑\n\0\0\r\0<\0à\0016\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0025\1\3\0006\2\4\0009\2\5\0029\2\6\0029\2\a\2B\2\1\0029\3\b\0025\4\n\0=\4\t\0036\3\0\0'\5\v\0B\3\2\0029\3\f\3\18\5\2\0B\3\2\2\18\2\3\0006\3\4\0009\3\r\0036\4\4\0009\4\r\0049\4\14\4'\5\15\0&\4\5\4=\4\14\0036\3\4\0009\3\r\0036\4\4\0009\4\r\0049\4\14\4'\5\16\0&\4\5\4=\4\14\0036\3\0\0'\5\17\0B\3\2\0029\3\18\0039\3\19\0035\5\20\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\23\0039\3\19\0035\5\24\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3\25\0039\3\19\0035\5+\0005\6)\0005\a\27\0005\b\26\0=\b\28\a5\b\30\0005\t\29\0=\t\31\b=\b \a5\b$\0006\t\4\0009\t!\t9\t\"\t'\v#\0+\f\2\0B\t\3\2=\t%\b=\b&\a5\b'\0=\b(\a=\a*\6=\6,\5=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3-\0039\3\19\0035\5.\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3/\0039\3\19\0035\0050\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\0031\0039\3\19\0035\0052\0=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\0033\0039\3\19\0035\0055\0005\0064\0=\0066\0055\0068\0005\a7\0=\a9\6=\6:\5=\1\21\5=\2\22\5B\3\2\0016\3\0\0'\5\17\0B\3\2\0029\3;\0039\3\19\0034\5\0\0B\3\2\1K\0\1\0\vbashls\17init_options\15typescript\1\0\0\1\0\1\15serverPathB/usr/local/lib/node_modules/typescript/lib/tsserverlibrary.js\14filetypes\1\0\0\1\b\0\0\15typescript\15javascript\20javascriptreact\20typescriptreact\bvue\tjson\tsass\nvolar\1\0\0\remmet_ls\1\0\0\njdtls\1\0\0\27kotlin_language_server\rsettings\1\0\0\bLua\1\0\0\14telemetry\1\0\1\venable\1\14workspace\flibrary\1\0\0\5\26nvim_get_runtime_file\bapi\16diagnostics\fglobals\1\0\0\1\2\0\0\bvim\fruntime\1\0\0\1\0\1\fversion\vLuaJIT\16sumneko_lua\1\0\0\18rust_analyzer\17capabilities\nflags\1\0\0\nsetup\fpyright\14lspconfig*:/home/ubuntu/lua-language-server/bin\29:/home/ubuntu/.local/bin\tPATH\benv\25default_capabilities\17cmp_nvim_lsp\1\0\2\24dynamicRegistration\1\20lineFoldingOnly\2\17foldingRange\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\1\0\1\26debounce_text_changes\3ñ\1+myCustom.keymap.lsp.lspconfig-onattach\26myCustom.autocmds.lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-auto-save
time([[Config for vim-auto-save]], true)
try_loadstring("\27LJ\2\n+\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\1\0=\1\2\0K\0\1\0\14auto_save\6g\bvim\0", "config", "vim-auto-save")
time([[Config for vim-auto-save]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\næ\4\0\5\19\0\19\1f6\5\0\0009\5\1\0059\5\2\5\b\5\0\0X\5\2Ä+\5\1\0X\6\1Ä+\5\2\0,\6\b\0006\t\3\0009\t\4\t\18\v\4\0B\t\2\2)\n\1\0\1\n\t\0X\n\18Ä'\n\5\0\18\f\n\0009\n\6\n\18\r\t\0)\14\1\0\0\14\4\0X\14\2Ä+\14\1\0X\15\1Ä+\14\2\0\4\5\14\0X\14\2Ä'\14\a\0X\15\1Ä'\14\b\0B\n\4\2\18\6\n\0X\n\14Ä\t\t\0\0X\n\vÄ\b\4\0\0X\n\2Ä+\n\1\0X\v\1Ä+\n\2\0\4\5\n\0X\n\2Ä'\6\a\0X\n\1Ä'\6\b\0X\n\1Ä'\6\t\0006\n\n\0008\f\3\1B\n\2\3\15\0\2\0X\f\27Ä\21\f\1\0\6\6\t\0X\r\tÄ'\r\v\0\18\15\r\0009\r\6\r\18\16\6\0\18\17\3\0\18\18\f\0B\r\5\2\18\a\r\0X\r\aÄ'\r\f\0\18\15\r\0009\r\6\r\18\16\3\0\18\17\f\0B\r\4\2\18\a\r\0004\r\3\0005\14\r\0>\14\1\r5\14\14\0>\a\1\14>\14\2\r\18\b\r\0X\f\14Ä'\f\15\0\18\14\f\0009\f\6\f\18\15\6\0\18\16\3\0B\f\4\2\18\a\f\0004\f\3\0005\r\16\0>\r\1\f5\r\17\0>\a\1\r>\r\2\f\18\b\f\0009\f\18\0)\14\0\0\23\15\0\n\23\16\0\v\18\17\b\0\18\18\2\0B\f\6\1K\0\1\0\fsetVirt\1\3\0\0\0\17HlSearchLens\1\3\0\0\6 \vIgnore\f[%s %d]\1\3\0\0\0\21HlSearchLensNear\1\3\0\0\6 \vIgnore\f[%d/%d]\15[%s %d/%d]\vunpack\5\b‚ñº\b‚ñ≤\vformat\t%d%s\babs\tmath\18searchforward\6v\bvim\2w\1\0\4\0\a\0\f6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\5\0003\3\4\0=\3\6\2B\0\2\1K\0\1\0\18override_lens\1\0\0\0\nsetup\fhlslens\28myCustom.keymap.hlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n¥\2\0\0\6\0\15\0\0246\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0029\0\3\0005\2\4\0005\3\5\0=\3\6\0025\3\n\0005\4\b\0005\5\a\0=\5\t\4=\4\v\3=\3\f\2B\0\2\0016\0\0\0'\2\r\0B\0\2\0026\1\0\0'\3\14\0B\1\2\2K\0\1\0\21bufferline.state\21nvim-tree.events\factions\15expand_all\1\0\0\fexclude\1\0\1\25max_folder_discovery\3¨\2\1\4\0\0\t.git\17node_modules\nbuild\tview\1\0\1\tside\nright\1\0\1\18open_on_setup\2\nsetup\14nvim-tree\29myCustom.keymap.nvimTree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
