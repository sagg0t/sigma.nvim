" clear cache so this reloads changes.
" useful for development
" lua package.loaded['sigma'] = nil
" lua package.loaded['sigma.theme'] = nil
" lua package.loaded['sigma.colors'] = nil
" lua package.loaded['sigma.util'] = nil
lua package.loaded['sigma.config'] = nil

lua require('sigma').colorscheme()
