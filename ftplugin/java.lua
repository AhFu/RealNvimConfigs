-- If you started neovim within `~/dev/xy/project-1` this would resolve to `project-1`
--local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

--local project_name = vim.fn.fnamemodify(require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}), ':p:h:t')
local currrent_buffer_dir=vim.fn.expand('%:p:h')
local workspace_dir = '/home/hokhk/.config/nvim/ftplugin/jdtls-workspace' .. currrent_buffer_dir


local config = {
    cmd = {
        'java', -- or '/path/to/java17_or_newer/bin/java'
            -- depends on if `java` is in your $PATH env variable and if it points to the right version.
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', '/home/hokhk/.local/jdt-language-server/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
        '-configuration', '/home/hokhk/.local/jdt-language-server/config_linux',
        '-data', workspace_dir
    },
    root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'})
}
require('jdtls').start_or_attach(config)
