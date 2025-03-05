
# slint-preview.nvim

A Neovim plugin for live previewing **Slint UI** files with `slint-viewer`.

## 🚀 Features
- **Auto-refresh on save**: Automatically reloads `slint-viewer` when saving `.slint` files.
- **Manual start option**: Start previewing with `<leader>sp` or `:SlintPreview`.
- **Ensures only one instance runs**: Prevents multiple previews from launching.
- **Asynchronous execution**: Runs in the background without blocking Neovim.

---

## 📦 Installation

### Lazy.nvim
```lua
{
  "yourname/slint-preview.nvim",
  config = function()
    require("slint-preview").setup()
  end
}
```

### Packer.nvim
```lua

use {
  "yourname/slint-preview.nvim",
  config = function()
    require("slint-preview").setup()
  end
}
```

## 🎮 Usage
### Start Live Preview

 - Keymap: Press <leader>sp
 - Command: Run :SlintPreview


### Auto-refresh on Save

 - Simply save (:w) a .slint file while slint-viewer is running.


### Stop Preview

 - Close the slint-viewer window manually.


## ⚙️ Configuration
### Default Settings

```lua
require("slint-preview").setup({
    auto_refresh = true, -- Auto-refresh `slint-viewer` on save
    keymap = "<leader>sp" -- Keybinding to start preview
})
```

### Custom Keymap

```lua
require("slint-preview").setup({
    keymap = "<leader>sv"
})
```

### Disable Auto-refresh

```lua
require("slint-preview").setup({
    auto_refresh = false
})
```


## 🛠️ Requirements

 - Neovim 0.7+
 - Slint Viewer (cargo install slint-viewer)
 - Linux/macOS/WSL (Wayland/X11 compatible)


## 🌟 Contributing

Feel free to open issues or submit PRs on GitHub!
We're also open to testers for various platforms
