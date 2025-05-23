local icons = require("icons")
local colors = require("colors")
local settings = require("settings")

local battery = Sbar.add("item", "widgets.battery", {
  position = "right",
  update_freq = 2,
  icon = {
    drawing = true,
  },
  label = {
    drawing = false,
  },
  padding_right = settings.item_padding,
  padding_left = settings.item_padding,
})

local remaining_time = Sbar.add("item", {
  position = "popup." .. battery.name,
  label = {
    font = {
      family = settings.font.numbers,
      style = settings.font.style_map["Bold"],
      size = settings.font.sizes.numbers
    },
    string = "??:??h",
    padding_right = settings.item_padding,
    padding_left = settings.item_padding,
  },
})


battery:subscribe({ "routine", "power_source_change", "system_woke" }, function()
  Sbar.exec("pmset -g batt", function(batt_info)
    local icon = "!"
    local label = "?"

    local found, _, charge = batt_info:find("(%d+)%%")
    if found then
      charge = tonumber(charge)
      label = charge .. "%"
    end

    local color = colors.white
    local charging, _, _ = batt_info:find("AC Power")

    if charging then
      icon = icons.battery.charging
      color = colors.green
    else
      if found and charge > 80 then
        icon = icons.battery._100
      elseif found and charge > 60 then
        icon = icons.battery._75
      elseif found and charge > 40 then
        icon = icons.battery._50
      elseif found and charge > 20 then
        icon = icons.battery._25
        color = colors.orange
      else
        icon = icons.battery._0
        color = colors.red
      end
    end

    local lead = ""
    if found and charge < 10 then
      lead = "0"
    end

    battery:set({
      icon = {
        string = icon,
        color = color
      },
      label = {
        drawing = false,
        string = lead .. label
      },
    })
  end)
end)

battery:subscribe("mouse.clicked", function(env)
  local drawing = battery:query().popup.drawing
  battery:set({ popup = { drawing = "toggle", align = "center" } })

  if drawing == "off" then
    Sbar.exec("pmset -g batt", function(batt_info)
      local found, _, remaining = batt_info:find(" (%d+:%d+) remaining")
      local label = found and remaining:gsub(":", ".") .. "hrs Remaining" or "00:00 Remaining"
      remaining_time:set({ label = { string = label } })
    end)
  end
end)

