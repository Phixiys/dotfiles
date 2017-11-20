###*
 * theme extensions
###
configureTheming = () ->
  atom.commands.add 'atom-workspace', 'themes:toggle-dark', () ->
    atom.config.set('core.themes', ['one-dark-ui', 'oceanic-next'])

  atom.commands.add 'atom-workspace', 'themes:toggle-light', () ->
    atom.config.set('core.themes', ['one-light-ui', 'one-light-syntax'])
