return {
  black = 0xff141b1e,   -- Dark background
  white = 0xffedecee,   -- Light text
  red = 0xffff6d6d,     -- Bright red
  green = 0xff61ffca,   -- Soft green
  blue = 0xff82e2ff,    -- Light blue
  yellow = 0xfff8c471,  -- Soft yellow
  orange = 0xffffca85,  -- Light orange
  magenta = 0xfff694ff, -- Soft magenta
  grey = 0xff6d6d6d,    -- Grey
  teal = 0xff82e2ff,    -- Teal (same as blue)
  purple = 0xffa277ff,  -- Soft purple
  transparent = 0x00000000,

  bar = {
    bg = 0xe621202e,     -- Dark bar background
    border = 0xff29263c, -- Bar border color
  },

  popup = {
    bg = 0xe621202e,    -- Popup background
    border = 0xff6d6d6d -- Popup border color
  },

  spaces = {
    active = 0xff3d375e,  -- Active space color
    inactive = 0x0029263c -- Inactive space color
  },

  bg1 = 0xff141b1e, -- Main background color
  bg2 = 0xff29263c, -- Secondary background color

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}

