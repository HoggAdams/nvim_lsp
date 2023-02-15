-- leap config

require("leap").add_default_mappings()

-- Disable auto jump first match

-- require('leap').opts.safe_labels = {}

require("leap").opts.highlight_unlabeled_phase_one_targets = true

vim.keymap.set({"x", "o", "n"}, ".", "<Plug>(leap-forward-to)")

vim.keymap.set({"x", "o", "n"}, ",", "<Plug>(leap-backward-to)")
