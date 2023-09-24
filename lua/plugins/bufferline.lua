local bufferline_status_ok, bufferline = pcall(require, "bufferline")
if not bufferline_status_ok then
    return
end

bufferline.setup {
    options = {
        mode = "buffers",                -- set to "tabs" to only show tabpages instead
        numbers = "ordinal",             -- "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d",   -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        sort_by = "insert_at_end",
        separator_style = "thin",        -- "slant" | "slope" | "thick" | "thin" | { "any", "any" },
        show_buffer_icons = true,        -- disable filetype icons for buffers
        offsets = {
            {
                filetype = "NvimTree",
                text = "NvimTree",
                highlights = "NvimTreeNormal",
                padding = 1,
            }
        },
    }
}
