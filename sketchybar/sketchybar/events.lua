-- Create all events here
local events = {
  -- Front app events
  front_app_switched = Sbar.add("event", "front_app_switched"),
  swap_menus_and_spaces = Sbar.add("event", "swap_menus_and_spaces"),

  -- System monitor events
  cpu_update = Sbar.add("event", "cpu_update"),
  memory_update = Sbar.add("event", "memory_update"),
  disk_update = Sbar.add("event", "disk_update"),
  network_update = Sbar.add("event", "network_update"),

  -- Media player events
  media_change = Sbar.add("event", "media_change")
}

return events

