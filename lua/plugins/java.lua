return {
  'nvim-java/nvim-java',
  config = function()
    require('java').setup({
      root_markers = {
        'settings.gradle', 'settings.gradle.kts', 'pom.xml',
        'build.gradle', 'mvnw', 'gradlew', 'build.gradle.kts',
        'src', -- fallback for flat/no-build-tool projects like this one
      },
    })
    vim.lsp.enable('jdtls')
  end,
}
