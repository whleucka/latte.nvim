# latte.nvim - Brew Up Beautiful PHP Latte Templates in Neovim

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

**latte.nvim** is a Neovim plugin designed to enhance your experience when working with PHP Latte templates. It provides automatic syntax highlighting, a robust parser, and extensibility to streamline your development process.

## Features

- **Syntax Highlighting:** Enjoy automatic syntax highlighting for Latte templates, making your code more readable and error-free.

- **Powerful Parser:** A Latte-specific parser ensures that your templates are accurately interpreted by Neovim, reducing the chances of errors.

- **Customization:** Customize and extend the plugin to match your specific requirements.

## Installation

You can use your favorite plugin manager to install `latte.nvim`. For example, using [vim-plug](https://github.com/junegunn/vim-plug), you can add the following lines to your `init.vim` or `init.lua`:

### vim-plug

```vim
Plug 'whleucka/latte.nvim'
```

Then, run `:PlugInstall` in Neovim to install the plugin.

### Lazy Loading with `folke/lazy.nvim`

If you prefer lazy-loading the plugin for improved startup times, you can use [`folke/lazy.nvim`](https://github.com/folke/lazy.nvim) as follows:

```lua
{
  'whleucka/latte.nvim',
  config = function()
    require'latte'.setup {
      -- Add your configuration options here
    }
  end,
  opts = {
    // Some configuration options
  }
}
```

Remember to replace `'do your setup here'` with any specific setup you want to perform when the plugin is loaded.

## Usage

1. Install and configure `latte.nvim` using the instructions above.
2. Open a PHP Latte template file in Neovim.
3. Enjoy automatic syntax highlighting and parsing.

## Configuration

You can further customize the behavior of `latte.nvim` by adding configurations in your `init.vim` or `init.lua`:

```lua
```

## Contributing

Contributions are welcome! Please read our [contribution guidelines](CONTRIBUTING.md) for details on how to get started.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

