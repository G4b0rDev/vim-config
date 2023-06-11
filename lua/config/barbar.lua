require'bufferline'.setup {
    -- Enable/Disable animations
    animation = false,

    -- Enable/Disable auto-hiding the tab bar when there is a single buffer
    auto_hide = false,

    -- Enable/Disable current/total tabpages indicator (top right corner)
    tappages = false,

    -- Enable/Disable clickable tabs
    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = false,

    -- Exclude buffers from the tabline
    exclude_ft = {},
    exclude_name = {},

    -- Hide inactive buffers and file extensions
    -- Other Options are `current` and `visible`
    hide = {
        extensions = false,
        inactive = false,
    },

    -- Enable/Disable icons
    -- if set to 'numbers' will show buffer index in the tabline
    -- if set to 'both', will show buffer index and icons in the tabline
    -- icons = true,
    icons = {
        buffer_index = false,
        buffer_number = false,
        button = '', -- Remove '' icon
    },

    -- If set, the icon color will follow its corresponding buffer highlight group.
    -- By default, the Buffer/Icon group is linked to the Buffer/group (see Highlighting below).
    -- Otherwise, it will take it's default value as defined by devicons
    icon_custom_colors = false,

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer
    insert_at_end = true,
    insert_at_start = false,

    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 2,

    -- Set the minimum padding width with wich to surround each tab
    minimum_padding = 4,

    -- Set the maximum buffer name length
    maximum_length = 30,

    -- If set, the letters for each buffer in buffer-pick mode will be assigned based on their name.
    -- Otherwise or in case all letters are already assigned, the behavior is to assign letters in order of usability
    -- ( see order below)
    semantic_letters = true,

    -- New buffer letters are assigned in this order.
    -- This order is optimal for the qwerty keyboard layout but might need adjustment for other layouts.
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

    -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
    -- where "X" is the buffer number. But only a static string is accepted here
    no_name_title = nil,
}
