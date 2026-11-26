-- Bluen Library 2.0.0 - the UI layer of BASED Hub, extracted.
-- Kernel, motion, theme, assets, ui, config, controls, window and the island, as they are in the hub; nothing restyled.
-- Only what a library needs was touched: the global name, the brand words (B.BRAND), where files live, and the
-- hub-only rows of the Settings page (films, the keyboard map) were left out.
--
--   local Bluen = loadstring(readfile("BluenLibrary.lua"))()
--   Bluen.start({ Title = "Bluen", Tag = "library" })
--   Bluen.page({ id = "main", title = "Main", group = "Hub", build = function(page)
--     local s = page:section({ title = "Controls" })
--     s:toggle({ id = "main.on", label = "Enabled" })
--   end })
local B = { VERSION = "2.0.0", BUILD = "bluen-library", NAME = "Bluen Library" }
B.BRAND = { word = "BLUEN", tag = "library" }
B.MANIFEST = {["files"]={["fonts/Archivo-ExpandedBlack.ttf"]="a55ca833",["fonts/Archivo-ExpandedBold.ttf"]="ffbf2077",["fonts/GeistMono-Medium.ttf"]="8332ab04",["fonts/GeistMono-Regular.ttf"]="c192a4ad",["fonts/InstrumentSerif-Italic.ttf"]="cfeb4692",["fonts/InstrumentSerif-Regular.ttf"]="760dce2e",["fonts/Inter-Bold.ttf"]="6fe5683d",["fonts/Inter-Medium.ttf"]="ad5bac14",["fonts/Inter-Regular.ttf"]="ec9fcd4d",["fonts/Inter-SemiBold.ttf"]="186e2a94",["fonts/Monocraft.ttf"]="0a54bca7",["fonts/ProggyClean.ttf"]="472c72d3",["fonts/ProggyTiny.ttf"]="c5ee3a40",["fx/bh_flight_pack.lua"]="d7594695",["img/arrow_2978718f.png"]="2978718f",["img/chevron_5862bda1.png"]="5862bda1",["img/dot_88aed008.png"]="88aed008",["img/esp_box_af236fc2.png"]="af236fc2",["img/esp_corner_57de7310.png"]="57de7310",["img/esp_glow_4714e388.png"]="4714e388",["img/esp_round_0a2b8705.png"]="0a2b8705",["img/glow_b92f0e11.png"]="b92f0e11",["img/grain_ccc6d981.png"]="ccc6d981",["img/icons_1fa63544.png"]="1fa63544",["img/line_d9684f60.png"]="d9684f60",["img/line_glow_b4fb854c.png"]="b4fb854c",["img/noise_b6e30457.png"]="b6e30457",["img/ring_1541da6c.png"]="1541da6c",["img/shock_3531fe60.png"]="3531fe60",["img/speedlines_64815646.png"]="64815646",["img/vignette_94d218e2.png"]="94d218e2",["img/wm_A_ace1a1fc.png"]="ace1a1fc",["img/wm_B_e3ad8d5d.png"]="e3ad8d5d",["img/wm_D_0312b32a.png"]="0312b32a",["img/wm_E_f66e6465.png"]="f66e6465",["img/wm_S_3daf2f74.png"]="3daf2f74",["img/wm_hub_604a3cba.png"]="604a3cba",["sfx/bh_click.ogg"]="3fd39a5b",["sfx/bh_close.ogg"]="827837c5",["sfx/bh_fly_boom.ogg"]="39b42154",["sfx/bh_fly_land.ogg"]="9e0889fa",["sfx/bh_fly_takeoff.ogg"]="04b9cbfd",["sfx/bh_fly_wind.ogg"]="fe17eb5d",["sfx/bh_hit_bell.ogg"]="589e0d98",["sfx/bh_hit_blip.ogg"]="a200d2ba",["sfx/bh_hit_chirp.ogg"]="16667041",["sfx/bh_hit_clack.ogg"]="8a9ffa7e",["sfx/bh_hit_coin.ogg"]="3d458f74",["sfx/bh_hit_ding.ogg"]="4413c30a",["sfx/bh_hit_glass.ogg"]="71701f8e",["sfx/bh_hit_kill_bass.ogg"]="fdaf9a05",["sfx/bh_hit_kill_chime.ogg"]="f5fc778e",["sfx/bh_hit_kill_coins.ogg"]="003c96e4",["sfx/bh_hit_kill_gong.ogg"]="b5a250bf",["sfx/bh_hit_kill_sweep.ogg"]="814df70a",["sfx/bh_hit_pop.ogg"]="35af5b1d",["sfx/bh_hit_punch.ogg"]="62c63220",["sfx/bh_hit_snap.ogg"]="9d0f6f51",["sfx/bh_hit_thud.ogg"]="82420e99",["sfx/bh_hit_tick.ogg"]="bff8fe87",["sfx/bh_hit_zap.ogg"]="fd9f125d",["sfx/bh_hover.ogg"]="bf7df59b",["sfx/bh_open.ogg"]="3a6618eb",["sfx/bh_saved.ogg"]="778f174a",["sfx/bh_tab.ogg"]="2b9384b9",["sfx/bh_toggle_off.ogg"]="f55696b4",["sfx/bh_toggle_on.ogg"]="0fab2e62"},["icons"]={["image"]="img/icons_1fa63544.png",["cell"]=48,["cols"]=20,["map"]={["house"]=0,["layout-dashboard"]=1,["gamepad-2"]=2,["crosshair"]=3,["eye"]=4,["eye-off"]=5,["wind"]=6,["users"]=7,["user"]=8,["globe"]=9,["earth"]=10,["settings"]=11,["settings-2"]=12,["search"]=13,["x"]=14,["minus"]=15,["plus"]=16,["check"]=17,["chevron-down"]=18,["chevron-up"]=19,["chevron-right"]=20,["chevron-left"]=21,["chevrons-up-down"]=22,["ellipsis"]=23,["sliders-horizontal"]=24,["palette"]=25,["keyboard"]=26,["bell"]=27,["save"]=28,["download"]=29,["upload"]=30,["trash-2"]=31,["copy"]=32,["refresh-cw"]=33,["rotate-ccw"]=34,["power"]=35,["shield"]=36,["shield-check"]=37,["zap"]=38,["sparkles"]=39,["film"]=40,["clapperboard"]=41,["volume-2"]=42,["volume-x"]=43,["play"]=44,["pause"]=45,["skip-forward"]=46,["user-check"]=47,["user-x"]=48,["map-pin"]=49,["navigation"]=50,["target"]=51,["scan"]=52,["bone"]=53,["heart-pulse"]=54,["ruler"]=55,["tag"]=56,["plane"]=57,["footprints"]=58,["arrow-up"]=59,["arrow-down"]=60,["arrow-right"]=61,["arrow-left"]=62,["ghost"]=63,["mouse-pointer-click"]=64,["mouse-pointer-2"]=65,["sun"]=66,["moon"]=67,["cloud-fog"]=68,["clock"]=69,["camera"]=70,["monitor"]=71,["gauge"]=72,["wifi"]=73,["server"]=74,["link"]=75,["log-out"]=76,["shuffle"]=77,["lock"]=78,["lock-open"]=79,["info"]=80,["triangle-alert"]=81,["circle-alert"]=82,["circle-check"]=83,["circle"]=84,["star"]=85,["pin"]=86,["command"]=87,["corner-down-left"]=88,["hand"]=89,["maximize-2"]=90,["minimize-2"]=91,["panel-left"]=92,["layers"]=93,["box"]=94,["package"]=95,["puzzle"]=96,["code"]=97,["terminal"]=98,["flask-conical"]=99,["wand-sparkles"]=100,["swords"]=101,["sword"]=102,["rocket"]=103,["flame"]=104,["contrast"]=105,["droplet"]=106,["droplets"]=107,["blend"]=108,["type"]=109,["history"]=110,["folder"]=111,["file-json"]=112,["clipboard"]=113,["clipboard-paste"]=114,["external-link"]=115,["grip-vertical"]=116,["filter"]=117,["list"]=118,["grid-2x2"]=119,["image"]=120,["music"]=121,["timer"]=122,["activity"]=123,["radar"]=124,["focus"]=125,["aperture"]=126,["scan-eye"]=127,["view"]=128,["binoculars"]=129,["locate"]=130,["locate-fixed"]=131,["route"]=132,["compass"]=133,["anchor"]=134,["feather"]=135,["square"]=136,["square-dashed"]=137,["person-standing"]=138,["move"]=139,["move-3d"]=140,["orbit"]=141,["trees"]=142,["mountain"]=143,["lightbulb"]=144,["sunrise"]=145,["bug"]=146,["wrench"]=147,["hammer"]=148,["cpu"]=149,["hard-drive"]=150,["database"]=151,["cloud"]=152,["cloud-download"]=153,["circle-dot"]=154,["dot"]=155,["badge-check"]=156,["crown"]=157,["gem"]=158,["trophy"]=159,["flag"]=160,["bookmark"]=161,["heart"]=162,["skull"]=163,["axe"]=164,["bomb"]=165,["car"]=166,["leaf"]=167,["snowflake"]=168,["plug"]=169,["radio"]=170,["signal"]=171,["fingerprint"]=172,["key-round"]=173,["key"]=174,["door-open"]=175,["app-window"]=176,["fullscreen"]=177,["expand"]=178,["shrink"]=179,["rotate-3d"]=180,["scaling"]=181,["pipette"]=182,["paintbrush"]=183,["brush"]=184,["eraser"]=185,["wand"]=186,["magnet"]=187,["waypoints"]=188,["git-branch"]=189,["share-2"]=190,["send"]=191,["message-circle"]=192,["at-sign"]=193,["hash"]=194,["circle-user"]=195,["user-round"]=196,["users-round"]=197,["id-card"]=198,["megaphone"]=199,["apple"]=200,["tree-pine"]=201,["sprout"]=202,["glasses"]=203,["scan-line"]=204,["vibrate"]=205,["proportions"]=206,["ratio"]=207,["spline"]=208,["arrow-up-right"]=209,["circle-play"]=210,["circle-pause"]=211,["circle-x"]=212,["circle-plus"]=213,["circle-minus"]=214,["toggle-left"]=215,["toggle-right"]=216,["text-cursor-input"]=217,["align-left"]=218,["monitor-smartphone"]=219,["smartphone"]=220,["tablet"]=221,["laptop"]=222,["mouse"]=223,["joystick"]=224,["dices"]=225,["swatch-book"]=226,["sun-moon"]=227,["paint-bucket"]=228,["square-mouse-pointer"]=229,["baseline"]=230,["skip-back"]=231,["repeat"]=232,["repeat-1"]=233,["list-plus"]=234,["list-music"]=235,["list-x"]=236,["headphones"]=237,["disc-3"]=238,["library"]=239,["layout-grid"]=240,["audio-lines"]=241,["folder-open"]=242,["file-music"]=243,["pencil"]=244,["heart-off"]=245,["banknote"]=246,["coins"]=247,["wallet"]=248,["shopping-cart"]=249,["shopping-bag"]=250,["ticket"]=251,["backpack"]=252,["smile"]=253,["unlink"]=254,["hand-coins"]=255,["circle-dollar-sign"]=256,["pocket-knife"]=257,["shirt"]=258,["video"]=259,["badge-dollar-sign"]=260,["hand-fist"]=261,["siren"]=262,["shield-ban"]=263,["bot"]=264,["brain"]=265,["party-popper"]=266,["speaker"]=267,["spray-can"]=268,["drama"]=269,["user-cog"]=270,["map"]=271}},["img"]={["noise"]="img/noise_b6e30457.png",["grain"]="img/grain_ccc6d981.png",["glow"]="img/glow_b92f0e11.png",["vignette"]="img/vignette_94d218e2.png",["line"]="img/line_d9684f60.png",["arrow"]="img/arrow_2978718f.png",["dot"]="img/dot_88aed008.png",["ring"]="img/ring_1541da6c.png",["esp_box"]="img/esp_box_af236fc2.png",["esp_corner"]="img/esp_corner_57de7310.png",["esp_round"]="img/esp_round_0a2b8705.png",["esp_glow"]="img/esp_glow_4714e388.png",["line_glow"]="img/line_glow_b4fb854c.png",["chevron"]="img/chevron_5862bda1.png",["speedlines"]="img/speedlines_64815646.png",["shock"]="img/shock_3531fe60.png"},["wordmark"]={["glyphs"]={{["char"]="B",["image"]="img/wm_B_e3ad8d5d.png",["w"]=606,["h"]=460,["advance"]=558.0},{["char"]="A",["image"]="img/wm_A_ace1a1fc.png",["w"]=621,["h"]=460,["advance"]=572.4},{["char"]="S",["image"]="img/wm_S_3daf2f74.png",["w"]=578,["h"]=460,["advance"]=529.2},{["char"]="E",["image"]="img/wm_E_f66e6465.png",["w"]=564,["h"]=460,["advance"]=516.0},{["char"]="D",["image"]="img/wm_D_0312b32a.png",["w"]=608,["h"]=460,["advance"]=559.8}},["cap"]=412,["pad"]=24,["size"]=600,["hub"]={["image"]="img/wm_hub_604a3cba.png",["w"]=901,["h"]=777,["baseline"]=579.0,["xHeight"]=285.6,["pad"]=24.0}},["sfx"]={["click"]="sfx/bh_click.ogg",["close"]="sfx/bh_close.ogg",["hover"]="sfx/bh_hover.ogg",["open"]="sfx/bh_open.ogg",["saved"]="sfx/bh_saved.ogg",["tab"]="sfx/bh_tab.ogg",["toggle_off"]="sfx/bh_toggle_off.ogg",["toggle_on"]="sfx/bh_toggle_on.ogg",["fly_boom"]="sfx/bh_fly_boom.ogg",["fly_takeoff"]="sfx/bh_fly_takeoff.ogg",["fly_land"]="sfx/bh_fly_land.ogg",["fly_wind"]="sfx/bh_fly_wind.ogg",["hit_tick"]="sfx/bh_hit_tick.ogg",["hit_pop"]="sfx/bh_hit_pop.ogg",["hit_blip"]="sfx/bh_hit_blip.ogg",["hit_clack"]="sfx/bh_hit_clack.ogg",["hit_snap"]="sfx/bh_hit_snap.ogg",["hit_thud"]="sfx/bh_hit_thud.ogg",["hit_punch"]="sfx/bh_hit_punch.ogg",["hit_bell"]="sfx/bh_hit_bell.ogg",["hit_ding"]="sfx/bh_hit_ding.ogg",["hit_glass"]="sfx/bh_hit_glass.ogg",["hit_coin"]="sfx/bh_hit_coin.ogg",["hit_zap"]="sfx/bh_hit_zap.ogg",["hit_chirp"]="sfx/bh_hit_chirp.ogg",["hit_kill_chime"]="sfx/bh_hit_kill_chime.ogg",["hit_kill_bass"]="sfx/bh_hit_kill_bass.ogg",["hit_kill_coins"]="sfx/bh_hit_kill_coins.ogg",["hit_kill_gong"]="sfx/bh_hit_kill_gong.ogg",["hit_kill_sweep"]="sfx/bh_hit_kill_sweep.ogg"},["fx"]={["flight"]="fx/bh_flight_pack.lua"}}
do -- 00_kernel.lua
-- ============================================================================
--  00 kernel   services, ownership, signals, error boundaries, files, helpers
-- ============================================================================
local genv = (type(getgenv) == "function" and getgenv()) or _G
B.genv = genv

-- A second execution replaces the first: the old hub unloads itself completely.
if type(genv.BluenLibrary) == "table" and type(genv.BluenLibrary.unload) == "function" then
  pcall(genv.BluenLibrary.unload, true)
end
genv.BluenLibrary = B
B.alive = true
B.bootClock = os.clock()

local cloneref = type(cloneref) == "function" and cloneref or function(x) return x end
B.cloneref = cloneref
B.S = setmetatable({}, { __index = function(t, name)
  local ok, service = pcall(game.GetService, game, name)
  if not ok or not service then error("Bluen: no service " .. tostring(name), 2) end
  service = cloneref(service)
  rawset(t, name, service)
  return service
end })
local S = B.S
B.LP = S.Players.LocalPlayer

-- ---------------------------------------------------------------- signals
local Signal = {}
Signal.__index = Signal
function Signal.new() return setmetatable({ list = {} }, Signal) end
function Signal:connect(fn)
  local link = { fn = fn, live = true }
  local list = self.list
  list[#list + 1] = link
  return { disconnect = function()
    if not link.live then return end
    link.live = false
    local at = table.find(list, link)
    if at then table.remove(list, at) end
  end }
end
function Signal:fire(...)
  local list = self.list
  if #list == 0 then return end
  for _, link in ipairs(table.clone(list)) do
    if link.live then B.try("signal", link.fn, ...) end
  end
end
B.Signal = Signal

-- ---------------------------------------------------------------- faults
-- Everything user-facing runs inside B.try: a failing feature logs here and the
-- rest of the hub keeps running. Settings > About shows this list.
B.faults = {}
B.onFault = Signal.new()
local lastFault = {}
function B.fault(scope, err)
  scope = tostring(scope)
  -- something failing every frame must not flood the log: one entry a second per scope
  local now = os.clock()
  local previous = lastFault[scope]
  if previous and now - previous.at < 1 then previous.entry.repeats = (previous.entry.repeats or 0) + 1; return end
  local entry = { scope = scope, message = tostring(err), at = now - B.bootClock }
  lastFault[scope] = { at = now, entry = entry }
  local faults = B.faults
  faults[#faults + 1] = entry
  if #faults > 60 then table.remove(faults, 1) end
  warn("[Bluen] " .. entry.scope .. ": " .. entry.message)
  if B.onFault and #B.onFault.list > 0 then
    for _, link in ipairs(table.clone(B.onFault.list)) do pcall(link.fn, entry) end
  end
end
local function trace(e) return tostring(e) .. "\n" .. debug.traceback("", 2) end
-- (2026-11-11: what the call gives back is passed straight on, with no table made for it: this is under every hook
-- the hub has, some forty of them a frame)
local function tried(scope, ok, ...)
  if not ok then B.fault(scope, (...)); return nil end
  return ...
end
function B.try(scope, fn, ...)
  return tried(scope, xpcall(fn, trace, ...))
end
function B.safe(scope, fn)
  return function(...) return B.try(scope, fn, ...) end
end
-- Potassium: calling into game modules drops the thread's Plugin capability and
-- every gethui instance then throws. Callbacks the game invokes call this first.
function B.identity()
  if type(setthreadidentity) == "function" then pcall(setthreadidentity, 8) end
end

-- ---------------------------------------------------------------- ownership
local owned = {}
function B.own(thing)
  owned[#owned + 1] = thing
  return thing
end
-- is this instance the hub's: one it made (B.own), or inside one (its screens, its sound folders, the music's group)
local ownedSet, ownedSeen = {}, 0
function B.owns(instance)
  if #owned < ownedSeen then table.clear(ownedSet); ownedSeen = 0 end
  if #owned ~= ownedSeen then
    for i = ownedSeen + 1, #owned do
      local thing = owned[i]
      if typeof(thing) == "Instance" then ownedSet[thing] = true end
    end
    ownedSeen = #owned
  end
  local node = instance
  while node do
    if ownedSet[node] then return true end
    node = node.Parent
  end
  return false
end
-- What every hooked function costs, by name, while measuring (B.measure): nil the rest of the time,
-- and then a hook costs one look at it. Read with B.measure(seconds) -> lines, worst first.
B.prof = nil
local function charge(scope, seconds)
  local prof = B.prof
  if not prof then return end
  local entry = prof[scope]
  if not entry then entry = { 0, 0, 0 }; prof[scope] = entry end
  entry[1] += seconds
  entry[2] += 1
  if seconds > entry[3] then entry[3] = seconds end
end
B.charge = charge
function B.connect(signal, fn, scope)
  scope = scope or "event"
  local safe = B.safe(scope, fn)
  return B.own(signal:Connect(function(...)
    if not B.prof then return safe(...) end
    local started = os.clock()
    safe(...)
    charge(scope, os.clock() - started)
  end))
end
function B.measure(seconds)
  B.prof = {}
  local frames, started = 0, os.clock()
  local counter = S.RunService.Heartbeat:Connect(function() frames += 1 end)
  task.wait(seconds or 5)
  counter:Disconnect()
  local prof, span = B.prof, os.clock() - started
  B.prof = nil
  local rows = {}
  for scope, entry in pairs(prof) do rows[#rows + 1] = { scope, entry[1], entry[2], entry[3] } end
  table.sort(rows, function(a, b) return a[2] > b[2] end)
  local out = { string.format("%d frames in %.1f s (%.0f fps)", frames, span, frames / math.max(span, 1e-3)) }
  for _, row in ipairs(rows) do
    out[#out + 1] = string.format("%-28s %6.3f ms/frame  %6d calls  worst %.2f ms", row[1], row[2] * 1000 / math.max(frames, 1), row[3], row[4] * 1000)
  end
  return out
end
B.onUnload = Signal.new()
function B.unload()
  if not B.alive then return end
  B.alive = false
  pcall(function() B.onUnload:fire() end)
  for index = #owned, 1, -1 do
    local thing = owned[index]
    pcall(function()
      local kind = typeof(thing)
      if kind == "RBXScriptConnection" then thing:Disconnect()
      elseif kind == "Instance" then thing:Destroy()
      elseif kind == "function" then thing()
      elseif kind == "table" and type(thing.destroy) == "function" then thing:destroy() end
    end)
  end
  table.clear(owned)
  if genv.BluenLibrary == B then genv.BluenLibrary = nil end
end

-- ---------------------------------------------------------------- files
local fs = { root = genv.BLUEN_FOLDER or "Bluen", assetRoot = "BasedHub" }   -- config in Bluen/, fonts + icons + sounds from an existing BASED install
fs.ok = type(writefile) == "function" and type(readfile) == "function" and type(isfile) == "function"
  and type(makefolder) == "function" and type(isfolder) == "function"
local ASSET_DIRS = { fonts = true, img = true, sfx = true, fx = true }
function fs.path(relative)
  local dir = string.match(relative, "^(%w+)/")
  if dir and ASSET_DIRS[dir] and fs.assetRoot ~= fs.root then
    local shared = fs.assetRoot .. "/" .. relative
    if fs.exists(shared) then return shared end
  end
  return fs.root .. "/" .. relative
end
function fs.exists(path)
  if not fs.ok then return false end
  local ok, present = pcall(isfile, path)
  return ok and present == true
end
function fs.isdir(path)
  if not fs.ok then return false end
  local ok, present = pcall(isfolder, path)
  return ok and present == true
end
function fs.mkdir(path)
  if not fs.ok then return false end
  local built = ""
  for part in string.gmatch(path, "[^/\\]+") do
    built = built == "" and part or (built .. "/" .. part)
    if not fs.isdir(built) then pcall(makefolder, built) end
  end
  return fs.isdir(path)
end
function fs.read(path)
  if not fs.exists(path) then return nil end
  local ok, data = pcall(readfile, path)
  return ok and data or nil
end
function fs.write(path, data)
  if not fs.ok then return false end
  local folder = string.match(path, "^(.*)[/\\][^/\\]+$")
  if folder and not fs.isdir(folder) then fs.mkdir(folder) end
  local ok = pcall(writefile, path, data)
  return ok
end
function fs.remove(path)
  if type(delfile) ~= "function" or not fs.exists(path) then return false end
  return (pcall(delfile, path))
end
function fs.list(path)
  if type(listfiles) ~= "function" or not fs.isdir(path) then return {} end
  local ok, files = pcall(listfiles, path)
  if not ok or type(files) ~= "table" then return {} end
  local out = {}
  for _, file in ipairs(files) do out[#out + 1] = (string.gsub(tostring(file), "\\", "/")) end
  table.sort(out)
  return out
end
function fs.readJson(path)
  local data = fs.read(path)
  if not data or data == "" then return nil end
  local ok, value = pcall(S.HttpService.JSONDecode, S.HttpService, data)
  return ok and value or nil
end
function fs.writeJson(path, value)
  local ok, data = pcall(S.HttpService.JSONEncode, S.HttpService, value)
  return ok and fs.write(path, data) or false
end
B.fs = fs

-- ---------------------------------------------------------------- helpers
local util = {}
function util.clamp01(x) return x < 0 and 0 or (x > 1 and 1 or x) end
function util.lerp(a, b, t) return a + (b - a) * t end
function util.map(x, a, b, c, d, clamp)
  local t = (x - a) / (b - a)
  if clamp then t = util.clamp01(t) end
  return c + (d - c) * t
end
function util.round(x, step)
  step = step or 1
  return math.floor(x / step + 0.5) * step
end
function util.hex(text)
  text = string.gsub(text, "#", "")
  return Color3.fromRGB(tonumber(string.sub(text, 1, 2), 16), tonumber(string.sub(text, 3, 4), 16), tonumber(string.sub(text, 5, 6), 16))
end
function util.toHex(color)
  return string.format("%02X%02X%02X", math.floor(color.R * 255 + 0.5), math.floor(color.G * 255 + 0.5), math.floor(color.B * 255 + 0.5))
end
function util.luma(color) return 0.2126 * color.R + 0.7152 * color.G + 0.0722 * color.B end
function util.mix(a, b, t) return a:Lerp(b, t) end
function util.format(value, decimals)
  if decimals and decimals > 0 then return string.format("%." .. decimals .. "f", value) end
  return tostring(math.floor(value + 0.5))
end
function util.comma(n)
  local text = tostring(math.floor(n))
  local out = string.reverse((string.gsub(string.reverse(text), "(%d%d%d)", "%1,")))
  return (string.gsub(out, "^,", ""))
end
function util.copy(value)
  if type(value) ~= "table" then return value end
  local out = {}
  for k, v in pairs(value) do out[k] = util.copy(v) end
  return out
end
function util.keys(t)
  local out = {}
  for k in pairs(t) do out[#out + 1] = k end
  return out
end
-- Cheap fuzzy score for the command palette: every query character must appear
-- in order; contiguous runs and word starts score higher. nil = no match.
function util.fuzzy(query, text)
  query, text = string.lower(query), string.lower(text)
  if query == "" then return 0 end
  local score, at, run = 0, 1, 0
  for i = 1, #query do
    local ch = string.sub(query, i, i)
    local found = string.find(text, ch, at, true)
    if not found then return nil end
    if found == at then run += 1; score += 2 + run else run = 0 end
    if found == 1 or string.find(string.sub(text, found - 1, found - 1), "[%s%p]") then score += 3 end
    score -= (found - at) * 0.05
    at = found + 1
  end
  return score - #text * 0.01
end
function util.debounce(seconds, fn)
  local token = 0
  return function(...)
    token += 1
    local mine = token
    local args = table.pack(...)
    task.delay(seconds, function()
      if mine == token and B.alive then B.try("debounce", fn, table.unpack(args, 1, args.n)) end
    end)
  end
end
-- A ray from one point to another, however far apart. Measured on the client: one ray finds
-- nothing more than 15,000 studs away however long it is asked to be, and says so with nil, not
-- an error. So a long one is cast in lengths the engine can see along. nil means the way is
-- clear (or, past `lengths` of them, further than it is worth looking).
local RAY_REACH = 14000
function util.ray(from, to, params, lengths)
  local offset = to - from
  local distance = offset.Magnitude
  if distance <= RAY_REACH then return workspace:Raycast(from, offset, params) end
  local unit = offset / distance
  local at = 0
  for _ = 1, lengths or 8 do
    local reach = math.min(RAY_REACH, distance - at)
    local hit = workspace:Raycast(from + unit * at, unit * reach, params)
    if hit then return hit end
    at += reach
    if at >= distance - 0.01 then break end
  end
  return nil
end
util.RAY_REACH = RAY_REACH
-- a distance for a label: whole studs with a comma, then thousands, then millions
function util.studs(distance)
  if distance >= 99.95e6 then return string.format("%.0fM", distance / 1e6) end
  if distance >= 999500 then return string.format("%.1fM", distance / 1e6) end
  if distance >= 99950 then return string.format("%.0fk", distance / 1000) end
  if distance >= 9995 then return string.format("%.1fk", distance / 1000) end
  return util.comma(distance + 0.5)
end
function util.randomName()
  local chars = {}
  for i = 1, 12 do chars[i] = string.char(math.random(97, 122)) end
  return table.concat(chars)
end
B.util = util

-- ---------------------------------------------------------------- environment
function B.camera() return workspace.CurrentCamera end
function B.viewport()
  local camera = workspace.CurrentCamera
  return camera and camera.ViewportSize or Vector2.new(1920, 1080)
end
function B.character(player)
  player = player or B.LP
  return player and player.Character
end
function B.humanoid(player)
  local character = B.character(player)
  return character and character:FindFirstChildOfClass("Humanoid")
end
function B.root(player)
  local character = B.character(player)
  if not character then return nil end
  return character:FindFirstChild("HumanoidRootPart") or character.PrimaryPart
end
function B.clipboard(text)
  local set = (type(setclipboard) == "function" and setclipboard) or (type(toclipboard) == "function" and toclipboard)
  if not set then return false end
  return (pcall(set, tostring(text)))
end
B.executor = "Unknown"
pcall(function()
  if type(identifyexecutor) == "function" then B.executor = tostring((identifyexecutor())) end
end)
B.touch = false
pcall(function() B.touch = S.UserInputService.TouchEnabled and not S.UserInputService.MouseEnabled end)

-- The GUI parent: the executor's hidden container when it has one.
function B.host()
  if B._host and B._host.Parent then return B._host end
  local host
  if type(gethui) == "function" then
    local ok, hidden = pcall(gethui)
    if ok and typeof(hidden) == "Instance" then host = hidden end
  end
  if not host then
    local ok, core = pcall(function() return cloneref(game:GetService("CoreGui")) end)
    if ok and core and pcall(function() return core.Name end) then host = core end
  end
  if not host and B.LP then host = B.LP:FindFirstChildOfClass("PlayerGui") or B.LP:WaitForChild("PlayerGui", 5) end
  B._host = host
  return host
end
B.screens = {}
function B.screen(order, name)
  local gui = Instance.new("ScreenGui")
  table.insert(B.screens, gui)
  gui.Name = name or util.randomName()
  gui.ResetOnSpawn = false
  gui.IgnoreGuiInset = true
  gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  gui.DisplayOrder = order or 9000
  pcall(function() gui.ScreenInsets = Enum.ScreenInsets.None end)
  pcall(function() gui.ClipToDeviceSafeArea = false end)
  gui.Parent = B.host()
  return B.own(gui)
end
end
do -- 01_motion.lua
-- ============================================================================
--  01 motion   one render loop: analytic springs, timelines, jobs
--
--  Springs are described the way SwiftUI does it: a duration (how long the move
--  feels) and a bounce (0 = critically damped, 0.3 = lively). They are solved in
--  closed form, so a 20 fps hitch and a 240 fps frame land on the same curve and
--  nothing ever explodes. A spring at rest is removed from the loop: an idle hub
--  costs one empty table scan per frame.
-- ============================================================================
local S, util = B.S, B.util
local Motion = { speed = 1, reduced = false, frame = 0, dt = 1 / 60, smoothDt = 1 / 60, now = os.clock() }
B.Motion = Motion

Motion.presets = {
  quick  = { 0.16, 0 },     -- hover tints, tiny state changes
  snappy = { 0.24, 0.10 },  -- presses, toggles
  smooth = { 0.34, 0 },     -- panels, pages
  gentle = { 0.52, 0 },     -- large surfaces
  bouncy = { 0.40, 0.24 },  -- things that should feel alive
  liquid = { 0.46, 0.30 },  -- the trailing edge of a moving pill
  lazy   = { 0.90, 0 },     -- ambient drift
}

local awake = {}       -- springs that are moving
local stepping = {}    -- the ones being stepped this frame, in a list of their own (see the loop)
local jobs = {}        -- per-frame callbacks
local tweens = {}      -- fixed-duration timelines

-- ---------------------------------------------------------------- springs
local Spring = {}
Spring.__index = Spring

local function tune(spring, preset)
  local p = type(preset) == "table" and preset or Motion.presets[preset or "smooth"] or Motion.presets.smooth
  local duration, bounce = p[1], p[2] or 0
  if Motion.reduced then duration, bounce = duration * 0.55, 0 end
  duration = math.max(duration / Motion.speed, 0.02)
  spring.w0 = 2 * math.pi / duration
  spring.zeta = math.clamp(1 - bounce, 0.08, 1)
end

function Motion.spring(n, preset, onStep, eps)
  local spring = setmetatable({ n = n, x = table.create(n, 0), v = table.create(n, 0), g = table.create(n, 0),
    onStep = onStep, eps = eps or 0.001 }, Spring)
  tune(spring, preset)
  return spring
end
function Spring:snap(values)
  for i = 1, self.n do self.x[i], self.g[i], self.v[i] = values[i], values[i], 0 end
  awake[self] = nil
  if self.onStep then self.onStep(self.x) end
end
function Spring:to(values, preset)
  if preset then tune(self, preset) end
  local g = self.g
  for i = 1, self.n do g[i] = values[i] end
  awake[self] = true
end
function Spring:impulse(index, velocity)
  self.v[index] += velocity
  awake[self] = true
end
function Spring:moving() return awake[self] == true end
function Spring:stop() awake[self] = nil end

local function stepSpring(spring, dt)
  local w0, zeta, eps = spring.w0, spring.zeta, spring.eps
  local x, v, g = spring.x, spring.v, spring.g
  local rest = true
  if zeta < 0.999 then
    local wd = w0 * math.sqrt(1 - zeta * zeta)
    local decay = math.exp(-zeta * w0 * dt)
    local c, s = math.cos(wd * dt), math.sin(wd * dt)
    for i = 1, spring.n do
      local a = x[i] - g[i]
      local b = (v[i] + zeta * w0 * a) / wd
      local y = decay * (a * c + b * s)
      local nv = decay * ((b * wd - a * zeta * w0) * c - (a * wd + b * zeta * w0) * s)
      x[i], v[i] = g[i] + y, nv
      local tolerance = type(eps) == "table" and eps[i] or eps
      if rest and (math.abs(y) > tolerance or math.abs(nv) > tolerance * 20) then rest = false end
    end
  else
    local decay = math.exp(-w0 * dt)
    for i = 1, spring.n do
      local a = x[i] - g[i]
      local k = v[i] + w0 * a
      local y = decay * (a + k * dt)
      local nv = decay * (v[i] - k * w0 * dt)
      x[i], v[i] = g[i] + y, nv
      local tolerance = type(eps) == "table" and eps[i] or eps
      if rest and (math.abs(y) > tolerance or math.abs(nv) > tolerance * 20) then rest = false end
    end
  end
  if rest then
    for i = 1, spring.n do x[i], v[i] = g[i], 0 end
    awake[spring] = nil
  end
  if spring.onStep then spring.onStep(x) end
  if rest and spring.onRest then
    local done = spring.onRest
    spring.onRest = nil
    done()
  end
end

-- ---------------------------------------------------------------- properties
local PX, UNIT = 0.08, 0.0008
local packers = {
  number = { 1, function(value) return { value } end, function(x) return x[1] end, UNIT },
  UDim2 = { 4, function(value) return { value.X.Scale, value.X.Offset, value.Y.Scale, value.Y.Offset } end,
    function(x) return UDim2.new(x[1], x[2], x[3], x[4]) end, { UNIT, PX, UNIT, PX } },
  UDim = { 2, function(value) return { value.Scale, value.Offset } end, function(x) return UDim.new(x[1], x[2]) end, { UNIT, PX } },
  Vector2 = { 2, function(value) return { value.X, value.Y } end, function(x) return Vector2.new(x[1], x[2]) end, UNIT },
  Vector3 = { 3, function(value) return { value.X, value.Y, value.Z } end, function(x) return Vector3.new(x[1], x[2], x[3]) end, UNIT },
  Color3 = { 3, function(value) return { value.R, value.G, value.B } end,
    function(x) return Color3.new(util.clamp01(x[1]), util.clamp01(x[2]), util.clamp01(x[3])) end, 0.002 },
}
-- Properties that must stay inside 0..1: a bouncy spring overshoots, the engine rejects it.
local unitProps = { BackgroundTransparency = true, TextTransparency = true, ImageTransparency = true, Transparency = true,
  GroupTransparency = true, TextStrokeTransparency = true, ScrollBarImageTransparency = true, FillTransparency = true,
  OutlineTransparency = true }

local bound = setmetatable({}, { __mode = "k" })
-- Spring `instance[property]` toward `target`. The spring is kept per
-- (instance, property) and re-aimed in flight, so interrupted motion never jumps.
function Motion.to(instance, property, target, preset, done)
  local packer = packers[typeof(target)]
  if not packer then instance[property] = target; if done then done() end; return nil end
  local map = bound[instance]
  if not map then map = {}; bound[instance] = map end
  local spring = map[property]
  if not spring then
    local unpack, clampUnit = packer[3], unitProps[property]
    spring = Motion.spring(packer[1], preset, function(x)
      local value = unpack(x)
      if clampUnit then value = util.clamp01(value) end
      instance[property] = value
    end, packer[4])
    local current = packer[2](instance[property])
    for i = 1, spring.n do spring.x[i], spring.g[i] = current[i], current[i] end
    map[property] = spring
  end
  spring.onRest = done
  spring:to(packer[2](target), preset)
  return spring
end
function Motion.snap(instance, property, value)
  local map = bound[instance]
  local spring = map and map[property]
  local packer = packers[typeof(value)]
  if spring and packer then
    spring.onRest = nil
    spring:snap(packer[2](value))
  else
    instance[property] = value
  end
end
function Motion.kick(instance, property, index, velocity)
  local map = bound[instance]
  local spring = map and map[property]
  if spring then spring:impulse(index or 1, velocity) end
end
function Motion.target(instance, property)
  local map = bound[instance]
  local spring = map and map[property]
  if not spring then return instance[property] end
  local packer = packers[typeof(instance[property])]
  return packer and packer[3](spring.g) or instance[property]
end

-- ---------------------------------------------------------------- easing + timelines
local ease = {}
function ease.linear(t) return t end
function ease.outCubic(t) return 1 - (1 - t) ^ 3 end
function ease.inCubic(t) return t * t * t end
function ease.inOutCubic(t) return t < 0.5 and 4 * t * t * t or 1 - (-2 * t + 2) ^ 3 / 2 end
function ease.outQuint(t) return 1 - (1 - t) ^ 5 end
function ease.inOutQuint(t) return t < 0.5 and 16 * t ^ 5 or 1 - (-2 * t + 2) ^ 5 / 2 end
function ease.outExpo(t) return t >= 1 and 1 or 1 - 2 ^ (-10 * t) end
function ease.inExpo(t) return t <= 0 and 0 or 2 ^ (10 * t - 10) end
function ease.outBack(t) local c = 1.70158; return 1 + (c + 1) * (t - 1) ^ 3 + c * (t - 1) ^ 2 end
function ease.outSine(t) return math.sin(t * math.pi / 2) end
Motion.ease = ease
-- progress of `t` through the window [from, from + length], eased and clamped
function Motion.window(t, from, length, curve)
  local p = util.clamp01((t - from) / length)
  return curve and curve(p) or p
end

function Motion.tween(duration, curve, step, done)
  local tween = { t = 0, duration = math.max(duration / Motion.speed, 0.001), curve = curve or ease.outCubic, step = step, done = done }
  if Motion.reduced then tween.duration *= 0.5 end
  tweens[#tweens + 1] = tween
  function tween.cancel() tween.dead = true end
  step(tween.curve(0))
  return tween
end

-- ---------------------------------------------------------------- jobs
-- fn(elapsed) every frame, or at `hz` with the time since it last ran.
function Motion.every(fn, hz, scope)
  local job = { fn = fn, interval = hz and 1 / hz or 0, acc = 0, scope = scope or "job" }
  jobs[#jobs + 1] = job
  function job.cancel() job.dead = true end
  return job
end
function Motion.after(seconds, fn, scope)
  local job
  local left = seconds
  job = Motion.every(function(dt)
    left -= dt
    if left <= 0 then job.dead = true; fn() end
  end, nil, scope or "after")
  return job
end

-- ---------------------------------------------------------------- the loop
Motion.stats = { springs = 0, jobs = 0, ms = 0 }
local function frame(dt)
  if not B.alive then return end
  local started = os.clock()
  dt = math.min(dt, 0.1)
  Motion.frame += 1
  Motion.dt = dt
  Motion.smoothDt += (dt - Motion.smoothDt) * 0.08
  Motion.now = started

  -- A spring's step runs code that may start other springs, and a table cannot be given new keys
  -- while it is being walked ("invalid key to 'next'", one frame in thousands): so this frame's
  -- springs are listed first. One started during the frame is stepped from the next; one put to
  -- rest by another before its turn is left alone.
  local measuring = B.prof ~= nil
  local springCount = 0
  for spring in pairs(awake) do
    springCount += 1
    stepping[springCount] = spring
  end
  for index = 1, springCount do
    local spring = stepping[index]
    stepping[index] = nil
    if awake[spring] then
      local ok, err = pcall(stepSpring, spring, dt)
      if not ok then awake[spring] = nil; B.fault("spring", err) end
    end
  end

  local mark = measuring and os.clock()
  if measuring then B.charge("motion.springs", mark - started) end
  local count = #tweens
  if count > 0 then
    for index = count, 1, -1 do
      local tween = tweens[index]
      if tween.dead then
        table.remove(tweens, index)
      else
        tween.t += dt
        local p = util.clamp01(tween.t / tween.duration)
        local ok, err = pcall(tween.step, tween.curve(p))
        if not ok then tween.dead = true; B.fault("tween", err) end
        if p >= 1 and not tween.dead then
          tween.dead = true
          table.remove(tweens, index)
          if tween.done then B.try("tween.done", tween.done) end
        end
      end
    end
  end

  if measuring then B.charge("motion.tweens", os.clock() - mark) end
  count = #jobs
  if count > 0 then
    for index = 1, count do
      local job = jobs[index]
      if job and not job.dead then
        local elapsed = dt
        local run = true
        if job.interval > 0 then
          job.acc += dt
          if job.acc < job.interval then run = false else elapsed = math.min(job.acc, 0.5); job.acc = 0 end
        end
        if run then
          local before = measuring and os.clock()
          local ok, err = pcall(job.fn, elapsed)
          if not ok then job.dead = true; B.fault(job.scope, err) end
          if measuring then B.charge("job." .. job.scope, os.clock() - before) end
        end
      end
    end
    for index = #jobs, 1, -1 do
      if jobs[index].dead then table.remove(jobs, index) end
    end
  end
  local stats = Motion.stats
  stats.springs, stats.jobs, stats.ms = springCount, #jobs, (os.clock() - started) * 1000
end
B.own(S.RunService.RenderStepped:Connect(frame))
Motion._frame = frame
end
do -- 02_theme.lua
-- ============================================================================
--  02 theme    tokens, live bindings
--
--  Surfaces are not solid colours: every fill is the scheme's ink at a low alpha
--  laid over glass, so one set of numbers works on a dark, a black and a light
--  scheme. B.T holds the resolved values; Theme.bind keeps an instance property
--  in step with a token, so accent, scheme and the glass slider all change the
--  whole hub live without rebuilding anything.
-- ============================================================================
local util = B.util
local hex = util.hex
local Theme = { changed = B.Signal.new() }
B.Theme = Theme
local T = {}
B.T = T

Theme.schemes = {
  dark = { label = "Graphite", base = hex("0B0B0F"), ink = hex("F5F4EF"), sub = hex("A9A8B4"), faint = hex("6C6B77"),
    shadow = 0.42, fill = { 0.045, 0.075, 0.115 }, stroke = { 0.085, 0.16 }, dark = true },
  midnight = { label = "Midnight", base = hex("000000"), ink = hex("F5F4EF"), sub = hex("9E9DA9"), faint = hex("62616C"),
    shadow = 0.3, fill = { 0.055, 0.09, 0.13 }, stroke = { 0.10, 0.18 }, dark = true },
  light = { label = "Porcelain", base = hex("F3F2EE"), ink = hex("121216"), sub = hex("56555F"), faint = hex("8C8B95"),
    shadow = 0.72, fill = { 0.05, 0.08, 0.12 }, stroke = { 0.10, 0.18 }, dark = false },
}
Theme.schemeOrder = { "dark", "midnight", "light" }
Theme.accents = {
  { id = "ultraviolet", label = "Ultraviolet", color = hex("8E7DFF") },
  { id = "azure", label = "Azure", color = hex("4DA3FF") },
  { id = "mint", label = "Mint", color = hex("45DDA8") },
  { id = "ember", label = "Ember", color = hex("FF7A45") },
  { id = "rose", label = "Rose", color = hex("FF5C93") },
  { id = "gold", label = "Gold", color = hex("F2C14E") },
  { id = "blood", label = "Blood", color = hex("FF4B4B") },
  { id = "bone", label = "Bone", color = hex("EDEBE4") },
}

Theme.state = { scheme = "dark", accent = hex("8E7DFF"), glass = 0.6, radius = 1, blur = false }

-- type ramp: font key (resolved in B.F by 03 assets) and size in design px
Theme.type = {
  display = { "serifItalic", 34 },
  title = { "serif", 25 },
  heading = { "text600", 15 },
  label = { "text500", 14 },
  body = { "text400", 13 },
  caption = { "text400", 12 },
  eyebrow = { "wideBold", 10 },
  mono = { "mono400", 12 },
  monoBold = { "mono500", 12 },
  button = { "text600", 13 },
  brand = { "wideBlack", 18 },
}

local function resolve()
  local state = Theme.state
  local scheme = Theme.schemes[state.scheme] or Theme.schemes.dark
  local glass = util.clamp01(state.glass)
  T.dark = scheme.dark
  T.base, T.ink, T.sub, T.faint = scheme.base, scheme.ink, scheme.sub, scheme.faint
  -- the iOS 27 control: clear glass at 0, tinted glass at 1. Without real blur
  -- behind it a clear panel is unreadable, so the range tightens.
  local alpha = state.blur and util.lerp(0.5, 0.94, glass) or util.lerp(0.84, 0.975, glass)
  T.baseA = 1 - alpha
  T.panelA = 1 - util.lerp(0.34, 0.62, glass)       -- inner panels: sidebar, popovers
  T.fill1A, T.fill2A, T.fill3A = 1 - scheme.fill[1], 1 - scheme.fill[2], 1 - scheme.fill[3]
  T.strokeA, T.stroke2A = 1 - scheme.stroke[1], 1 - scheme.stroke[2]
  T.shadowA = scheme.shadow
  T.accent = state.accent
  T.accentInk = util.luma(state.accent) > 0.62 and hex("101014") or hex("FFFFFF")
  T.accentSoftA = 0.84
  T.accentDim = state.accent:Lerp(scheme.base, 0.55)
  T.ok, T.warn, T.bad = hex("52D6A0"), hex("F4B45F"), hex("FF6577")
  T.white, T.black = Color3.new(1, 1, 1), Color3.new(0, 0, 0)
  T.rim = scheme.dark and Color3.new(1, 1, 1) or Color3.new(1, 1, 1)
  T.rimA = scheme.dark and 0.5 or 0.1
  T.popover = scheme.base:Lerp(scheme.ink, scheme.dark and 0.07 or 0.0)
  local r = state.radius
  T.rWindow, T.rPanel, T.rCard, T.rControl, T.rSmall = math.floor(26 * r), math.floor(19 * r), math.floor(16 * r), math.floor(11 * r), math.floor(7 * r)
end
resolve()

-- Strong references on purpose. A weak-keyed table of Instances loses entries whenever Lua holds
-- no other reference to that instance's wrapper, even though the instance is alive in the game:
-- measured as labels that kept their dark-scheme colour after switching to the light scheme.
-- Destroyed instances are swept out instead (their Parent is nil for good).
local bindings = {}
local boundAt = {}
-- Keep instance[property] equal to token `key` (optionally through `map`).
function Theme.bind(instance, property, key, map)
  local list = bindings[instance]
  if not list then list = {}; bindings[instance] = list; boundAt[instance] = os.clock() end
  list[property] = { key, map }
  local value = T[key]
  if map then value = map(value, T) end
  instance[property] = value
  return instance
end
function Theme.unbind(instance, property)
  local list = bindings[instance]
  if list then list[property] = nil end
end
-- forget instances that were destroyed (not ones still being assembled)
function Theme.sweep()
  local now = os.clock()
  for instance in pairs(bindings) do
    if instance.Parent == nil and now - boundAt[instance] > 5 then
      bindings[instance], boundAt[instance] = nil, nil
    end
  end
end
function Theme.apply()
  resolve()
  Theme.sweep()
  for instance, list in pairs(bindings) do
    for property, binding in pairs(list) do
      local value = T[binding[1]]
      if binding[2] then value = binding[2](value, T) end
      pcall(function() instance[property] = value end)
    end
  end
  Theme.changed:fire()
end
-- (2026-11-11) A few hundred at a time, ten times a second, instead of every one of them once every 20 s: with the
-- whole hub built that one pass was a 7 ms frame (measured live on Volt, 17,000 Instances), a stutter three times a
-- minute with the menu shut. One taken out is not stepped onto: the next look goes on from the last one still there.
local sweepFrom
function Theme.sweepSome(most)
  local now = os.clock()
  local key = sweepFrom
  if key ~= nil and bindings[key] == nil then key = nil end
  for _ = 1, most or 250 do
    local instance = next(bindings, key)
    if instance == nil then key = nil; break end
    if instance.Parent == nil and now - boundAt[instance] > 5 then
      bindings[instance], boundAt[instance] = nil, nil
    else
      key = instance
    end
  end
  sweepFrom = key
end
B.Motion.every(Theme.sweepSome, 10, "theme.sweep")
function Theme.set(changes)
  local state = Theme.state
  for key, value in pairs(changes) do state[key] = value end
  Theme.apply()
end
function Theme.corner(key) return UDim.new(0, T[key] or 10) end
end
do -- 03_assets.lua
-- ============================================================================
--  03 assets   files on disk -> content ids, fonts, icons, sounds
--
--  Measured on Potassium (2026-10-06): getcustomasset costs 3-5 ms per call on
--  the main thread whatever the file size, the files it copies stay in the
--  client's content folder between sessions, and the id is always
--  <prefix>/<basename>. So a file is registered ONCE, ever; after that its id is
--  built by hand for free. A sentinel is checked at boot because a client update
--  can empty that folder.
-- ============================================================================
local S, fs, util = B.S, B.fs, B.util
local Assets = { ready = false, lite = false, calls = 0 }
B.Assets = Assets
local manifest = B.MANIFEST or { files = {}, icons = { map = {} } }
Assets.manifest = manifest

local canRegister = type(getcustomasset) == "function" and fs.ok
local REGISTRY = fs.path("cache/registry.json")
local registry = { files = {}, seq = {} }
local ids = {}            -- relative path -> content id, or false when unavailable
local seqIds = {}         -- sequence prefix -> { [index] = id }
local seqKnown = {}       -- sequence prefix -> { [index] = true } registered in an earlier session
local dirty = false

local function basename(path) return string.match(path, "[^/\\]+$") or path end
local function prefixOf(id) return string.match(id, "^(rbxasset://[^/]+/)") end

local saveSoon = util.debounce(1.5, function()
  if not dirty then return end
  dirty = false
  local seq = {}
  for key, known in pairs(seqKnown) do
    -- compress the registered indices into [from, to] runs
    local runs, from, last = {}, nil, nil
    local indices = util.keys(known)
    table.sort(indices)
    for _, index in ipairs(indices) do
      if from and index == last + 1 then last = index
      else
        if from then runs[#runs + 1] = { from, last } end
        from, last = index, index
      end
    end
    if from then runs[#runs + 1] = { from, last } end
    seq[key] = runs
  end
  fs.writeJson(REGISTRY, { prefix = registry.prefix, sentinel = registry.sentinel, files = registry.files, seq = seq })
end)
local function touch() dirty = true; saveSoon() end

local function register(path)
  Assets.calls += 1
  local ok, id = pcall(getcustomasset, path)
  if not ok or type(id) ~= "string" or id == "" then return nil end
  local prefix = prefixOf(id)
  if prefix and registry.prefix ~= prefix then
    -- a different content folder: nothing registered before is reachable
    registry.prefix = prefix
    registry.files = {}
    table.clear(seqKnown)
  end
  return id
end

-- Content id for a file under BasedHub/, or nil when it is not installed.
function Assets.id(relative)
  local cached = ids[relative]
  if cached ~= nil then return cached or nil end
  if not canRegister then ids[relative] = false; return nil end
  local name = basename(relative)
  local stamp = manifest.files[relative] or "x"
  local id
  if registry.prefix and registry.files[name] == stamp then
    id = registry.prefix .. name
  else
    id = register(fs.path(relative))
    if id then
      registry.files[name] = stamp
      -- the sentinel must be something PreloadAsync can load and report on: an image
      if string.match(name, "%.png$") or string.match(name, "%.jpg$") then registry.sentinel = name end
      touch()
    end
  end
  ids[relative] = id or false
  return id
end

-- Content id for frame `index` of a numbered sequence ("film/hd/bhf1_h_", 4 digits).
function Assets.frame(pathPrefix, index, digits, extension)
  local cache = seqIds[pathPrefix]
  if not cache then cache = {}; seqIds[pathPrefix] = cache end
  local id = cache[index]
  if id ~= nil then return id or nil end
  if not canRegister then return nil end
  local file = pathPrefix .. string.format("%0" .. (digits or 4) .. "d", index) .. (extension or ".jpg")
  local known = seqKnown[pathPrefix]
  if known and known[index] and registry.prefix then
    id = registry.prefix .. basename(file)
  else
    id = register(fs.path(file))
    if id then
      if not known then known = {}; seqKnown[pathPrefix] = known end
      known[index] = true
      touch()
    end
  end
  cache[index] = id or false
  return id
end
-- true when frame `index` can be had without a getcustomasset call
function Assets.frameIsFree(pathPrefix, index)
  local cache = seqIds[pathPrefix]
  if cache and cache[index] then return true end
  local known = seqKnown[pathPrefix]
  return known ~= nil and known[index] == true and registry.prefix ~= nil
end

function Assets.has(relative) return fs.exists(fs.path(relative)) end

-- ---------------------------------------------------------------- fonts
local FONT_FILES = {
  text400 = { "Inter", "fonts/Inter-Regular.ttf", 400 }, text500 = { "Inter", "fonts/Inter-Medium.ttf", 500 },
  text600 = { "Inter", "fonts/Inter-SemiBold.ttf", 600 }, text700 = { "Inter", "fonts/Inter-Bold.ttf", 700 },
  mono400 = { "GeistMono", "fonts/GeistMono-Regular.ttf", 400 }, mono500 = { "GeistMono", "fonts/GeistMono-Medium.ttf", 500 },
  serif = { "InstrumentSerif", "fonts/InstrumentSerif-Regular.ttf", 400 },
  serifItalic = { "InstrumentSerifItalic", "fonts/InstrumentSerif-Italic.ttf", 400 },
  wideBold = { "ArchivoExpanded", "fonts/Archivo-ExpandedBold.ttf", 700 },
  wideBlack = { "ArchivoExpanded", "fonts/Archivo-ExpandedBlack.ttf", 900 },
  -- the Unnamed menu's: Monocraft (the Minecraft letters), and the two Proggy pixel fonts
  craft = { "Monocraft", "fonts/Monocraft.ttf", 400 },
  proggy = { "ProggyClean", "fonts/ProggyClean.ttf", 400 },
  proggyTiny = { "ProggyTiny", "fonts/ProggyTiny.ttf", 400 },
}
local WEIGHTS = { [400] = "Regular", [500] = "Medium", [600] = "SemiBold", [700] = "Bold", [900] = "Heavy" }
local function builtin(name, weight, style)
  local ok, font = pcall(Font.fromName, name, weight or Enum.FontWeight.Regular, style or Enum.FontStyle.Normal)
  if ok and font then return font end
  return Font.fromEnum(Enum.Font.Gotham)
end
local FALLBACK = {
  text400 = function() return builtin("BuilderSans", Enum.FontWeight.Regular) end,
  text500 = function() return builtin("BuilderSans", Enum.FontWeight.Medium) end,
  text600 = function() return builtin("BuilderSans", Enum.FontWeight.SemiBold) end,
  text700 = function() return builtin("BuilderSans", Enum.FontWeight.Bold) end,
  mono400 = function() return builtin("RobotoMono", Enum.FontWeight.Regular) end,
  mono500 = function() return builtin("RobotoMono", Enum.FontWeight.Medium) end,
  serif = function() return builtin("Merriweather", Enum.FontWeight.Regular) end,
  serifItalic = function() return builtin("Merriweather", Enum.FontWeight.Regular, Enum.FontStyle.Italic) end,
  wideBold = function() return builtin("BuilderExtended", Enum.FontWeight.Bold) end,
  wideBlack = function() return builtin("BuilderExtended", Enum.FontWeight.Heavy) end,
  -- (without the files, the closest Roblox has: its own pixel font, and Arial)
  craft = function() return Font.fromEnum(Enum.Font.Arcade) end,
  proggy = function() return Font.fromEnum(Enum.Font.Code) end,
  proggyTiny = function() return Font.fromEnum(Enum.Font.Code) end,
}
B.F = {}

local function loadFonts()
  -- one family file per family, listing each face's registered .ttf
  local families = {}
  for key, spec in pairs(FONT_FILES) do
    local ttf = Assets.id(spec[2])
    if ttf then
      local family = families[spec[1]]
      if not family then family = { name = spec[1], faces = {}, keys = {} }; families[spec[1]] = family end
      family.faces[#family.faces + 1] = { name = WEIGHTS[spec[3]] or "Regular", weight = spec[3], style = "normal", assetId = ttf }
      family.keys[key] = spec[3]
    end
  end
  for name, family in pairs(families) do
    table.sort(family.faces, function(a, b) return a.weight < b.weight end)
    local relative = "fonts/" .. name .. ".json"
    local ok, json = pcall(S.HttpService.JSONEncode, S.HttpService, { name = name, faces = family.faces })
    if ok then
      local path = fs.path(relative)
      local changed = fs.read(path) ~= json
      if changed then fs.write(path, json) end
      -- the stamp is the json itself: a new prefix or face list re-registers the family file
      manifest.files[relative] = tostring(#json) .. ":" .. tostring(registry.prefix)
      if changed then ids[relative] = nil; registry.files[basename(relative)] = nil end
      local id = Assets.id(relative)
      if id then
        for key, weight in pairs(family.keys) do
          local okFont, font = pcall(Font.new, id, Enum.FontWeight[WEIGHTS[weight] or "Regular"], Enum.FontStyle.Normal)
          if okFont then B.F[key] = font end
        end
      end
    end
  end
  local missing = 0
  for key, make in pairs(FALLBACK) do
    if not B.F[key] then B.F[key] = make(); missing += 1 end
  end
  return missing
end

-- ---------------------------------------------------------------- icons, images, sounds
-- Icons live in one atlas (a single registration): returns image, offset, size.
function Assets.icon(name)
  local atlas = manifest.icons
  local index = atlas and atlas.map and atlas.map[name]
  if not index then return nil end
  local id = Assets.id(atlas.image)
  if not id then return nil end
  local cell = atlas.cell
  return id, Vector2.new((index % atlas.cols) * cell, math.floor(index / atlas.cols) * cell), Vector2.new(cell, cell)
end
-- Images are deployed under a content-hashed file name (a changed picture gets a
-- new id, so a cached texture can never be stale); manifest.img maps name -> file.
function Assets.image(name)
  local file = manifest.img and manifest.img[name]
  return file and Assets.id(file) or nil
end
function Assets.sound(name)
  local file = manifest.sfx and manifest.sfx[name]
  return file and Assets.id(file) or nil
end

-- ---------------------------------------------------------------- boot
function Assets.preload(list, timeout)
  local done = false
  task.spawn(function()
    pcall(function() S.ContentProvider:PreloadAsync(list) end)
    done = true
  end)
  local waited = 0
  while not done and waited < (timeout or 3) do waited += task.wait() end
  return done
end

function Assets.init()
  if not canRegister then
    Assets.lite = true
  else
    local saved = fs.readJson(REGISTRY)
    if type(saved) == "table" and type(saved.prefix) == "string" and type(saved.files) == "table" and type(saved.sentinel) == "string" then
      -- is the content folder we registered into still there?
      local status
      local finished = false
      task.spawn(function()
        pcall(function()
          S.ContentProvider:PreloadAsync({ saved.prefix .. saved.sentinel }, function(_, result) status = result end)
        end)
        finished = true
      end)
      local waited = 0
      while not finished and waited < 2 do waited += task.wait() end
      if status == Enum.AssetFetchStatus.Success then
        registry.prefix, registry.files, registry.sentinel = saved.prefix, saved.files, saved.sentinel
        for key, runs in pairs(type(saved.seq) == "table" and saved.seq or {}) do
          local known = {}
          for _, run in ipairs(runs) do
            for index = run[1], run[2] do known[index] = true end
          end
          seqKnown[key] = known
        end
      end
    end
    Assets.lite = not (manifest.icons and manifest.icons.image and Assets.id(manifest.icons.image))
  end
  Assets.fontsMissing = loadFonts()
  -- the hub's own letters, kept: Settings > Font swaps B.F, and Inter is these again
  B.F0 = table.clone(B.F)
  Assets.ready = true
  return not Assets.lite
end
function Assets.registry() return registry end
end
do -- 04_ui.lua
-- ============================================================================
--  04 ui       instance factory, glass, text, icons, input, popovers, scroll
-- ============================================================================
local S, util, Motion, Theme, T, Assets = B.S, B.util, B.Motion, B.Theme, B.T, B.Assets
local UIS = S.UserInputService
local UI = { fx = { canvas = true, shadow = false, innerStroke = false }, sfxVolume = 0.5, sfxOn = true }
B.UI = UI

-- ---------------------------------------------------------------- capabilities
pcall(function()
  local probe = Instance.new("UIShadow")
  probe.BlurRadius = UDim.new(0, 4)
  probe:Destroy()
  UI.fx.shadow = true
end)
pcall(function()
  local probe = Instance.new("UIStroke")
  probe.BorderStrokePosition = Enum.BorderStrokePosition.Inner
  probe:Destroy()
  UI.fx.innerStroke = true
end)
pcall(function()
  -- a CanvasGroup is drawn at reduced resolution on the lowest quality levels: text goes soft
  local saved = UserSettings():GetService("UserGameSettings").SavedQualityLevel
  if saved ~= Enum.SavedQualitySetting.Automatic and saved.Value <= 2 then UI.fx.canvas = false end
end)

-- ---------------------------------------------------------------- factory
local function applyTheme(instance, map)
  for property, spec in pairs(map) do
    if type(spec) == "table" then Theme.bind(instance, property, spec[1], spec[2]) else Theme.bind(instance, property, spec) end
  end
end
function UI.new(class, props, children)
  local instance = Instance.new(class)
  local parent
  if props then
    for key, value in pairs(props) do
      if key == "Parent" then parent = value
      elseif key == "Theme" then applyTheme(instance, value)
      else instance[key] = value end
    end
  end
  if children then
    for _, child in ipairs(children) do child.Parent = instance end
  end
  if parent then instance.Parent = parent end
  return instance
end
local new = UI.new

function UI.frame(parent, props)
  local frame = Instance.new("Frame")
  frame.BackgroundTransparency = 1
  frame.BorderSizePixel = 0
  if props then
    for key, value in pairs(props) do
      if key == "Theme" then applyTheme(frame, value) else frame[key] = value end
    end
  end
  frame.Parent = parent
  return frame
end
-- radius: a token name ("rCard"), a pixel count, or true for a full pill
function UI.corner(instance, radius)
  local corner = Instance.new("UICorner")
  if radius == true then corner.CornerRadius = UDim.new(1, 0)
  elseif type(radius) == "string" then Theme.bind(corner, "CornerRadius", radius, function(value) return UDim.new(0, value) end)
  else corner.CornerRadius = UDim.new(0, radius or 8) end
  corner.Parent = instance
  return corner
end
function UI.stroke(instance, token, alphaToken, thickness)
  local stroke = Instance.new("UIStroke")
  stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  stroke.Thickness = thickness or 1
  Theme.bind(stroke, "Color", token or "ink")
  if type(alphaToken) == "number" then stroke.Transparency = alphaToken else Theme.bind(stroke, "Transparency", alphaToken or "strokeA") end
  if UI.fx.innerStroke then stroke.BorderStrokePosition = Enum.BorderStrokePosition.Inner end
  stroke.Parent = instance
  return stroke
end
function UI.pad(instance, top, right, bottom, left)
  local pad = Instance.new("UIPadding")
  right = right or top
  bottom = bottom or top
  left = left or right
  pad.PaddingTop, pad.PaddingRight, pad.PaddingBottom, pad.PaddingLeft = UDim.new(0, top), UDim.new(0, right), UDim.new(0, bottom), UDim.new(0, left)
  pad.Parent = instance
  return pad
end
function UI.list(instance, direction, gap, align)
  local layout = Instance.new("UIListLayout")
  layout.FillDirection = direction == "x" and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical
  layout.Padding = UDim.new(0, gap or 0)
  layout.SortOrder = Enum.SortOrder.LayoutOrder
  if align then
    if align.h then layout.HorizontalAlignment = Enum.HorizontalAlignment[align.h] end
    if align.v then layout.VerticalAlignment = Enum.VerticalAlignment[align.v] end
  end
  layout.Parent = instance
  return layout
end
function UI.scaleOf(instance)
  local scale = instance:FindFirstChildOfClass("UIScale")
  if not scale then scale = Instance.new("UIScale"); scale.Parent = instance end
  return scale
end
function UI.gradient(instance, props)
  local gradient = Instance.new("UIGradient")
  for key, value in pairs(props) do gradient[key] = value end
  gradient.Parent = instance
  return gradient
end
function UI.alphaSeq(...)
  local points, args = {}, { ... }
  for i = 1, #args, 2 do points[#points + 1] = NumberSequenceKeypoint.new(args[i], args[i + 1]) end
  return NumberSequence.new(points)
end

-- ---------------------------------------------------------------- text + icons
local STYLE = Theme.type
-- style: a key of Theme.type; color: a token name
function UI.text(parent, text, style, color, props)
  local spec = STYLE[style or "body"] or STYLE.body
  local label = Instance.new("TextLabel")
  label.BackgroundTransparency = 1
  label.BorderSizePixel = 0
  label.FontFace = B.F[spec[1]]
  if UI.fontKey then UI.fontKey[label] = spec[1] end
  label.TextSize = spec[2]
  label.Text = text or ""
  label.TextXAlignment = Enum.TextXAlignment.Left
  label.TextYAlignment = Enum.TextYAlignment.Center
  label.AutomaticSize = Enum.AutomaticSize.XY
  label.Size = UDim2.new()
  Theme.bind(label, "TextColor3", color or "ink")
  if props then
    for key, value in pairs(props) do label[key] = value end
  end
  label.Parent = parent
  return label
end
function UI.icon(parent, name, size, color, props)
  local image = Instance.new("ImageLabel")
  image.BackgroundTransparency = 1
  image.BorderSizePixel = 0
  image.Size = UDim2.fromOffset(size or 18, size or 18)
  image.ScaleType = Enum.ScaleType.Fit
  Theme.bind(image, "ImageColor3", color or "ink")
  local id, offset, rect = Assets.icon(name)
  if id then
    image.Image, image.ImageRectOffset, image.ImageRectSize = id, offset, rect
  end
  if props then
    for key, value in pairs(props) do image[key] = value end
  end
  image.Parent = parent
  return image
end
function UI.setIcon(image, name)
  local id, offset, rect = Assets.icon(name)
  if id then image.Image, image.ImageRectOffset, image.ImageRectSize = id, offset, rect end
end
function UI.image(parent, name, props)
  local image = Instance.new("ImageLabel")
  image.BackgroundTransparency = 1
  image.BorderSizePixel = 0
  image.Image = Assets.image(name) or ""
  if props then
    for key, value in pairs(props) do
      if key == "Theme" then applyTheme(image, value) else image[key] = value end
    end
  end
  image.Parent = parent
  return image
end

-- ---------------------------------------------------------------- glass
-- A translucent surface: tinted fill, fine grain, a top sheen and a rim that
-- catches light. level: "window" (reads the glass slider), "panel", "popover".
function UI.glass(parent, opts)
  opts = opts or {}
  local level = opts.level or "panel"
  local radius = opts.radius or "rPanel"
  local frame = Instance.new("Frame")
  frame.BorderSizePixel = 0
  frame.Name = opts.name or "Glass"
  if level == "window" then
    Theme.bind(frame, "BackgroundColor3", "base")
    Theme.bind(frame, "BackgroundTransparency", "baseA")
  elseif level == "popover" then
    Theme.bind(frame, "BackgroundColor3", "popover")
    frame.BackgroundTransparency = 0.04
  else
    Theme.bind(frame, "BackgroundColor3", "ink")
    Theme.bind(frame, "BackgroundTransparency", opts.fill or "fill1A")
  end
  UI.corner(frame, radius)
  if opts.grain ~= false and Assets.image("noise") then
    local grain = UI.image(frame, "noise", { Name = "Grain", Size = UDim2.fromScale(1, 1), ScaleType = Enum.ScaleType.Tile,
      TileSize = UDim2.fromOffset(128, 128), ImageTransparency = opts.grainAlpha or 0.955, ZIndex = 0, Interactable = false })
    UI.corner(grain, radius)
  end
  if opts.sheen ~= false then
    local sheen = Instance.new("Frame")
    sheen.Name = "Sheen"
    sheen.BorderSizePixel = 0
    sheen.BackgroundColor3 = Color3.new(1, 1, 1)
    sheen.Size = UDim2.fromScale(1, 1)
    sheen.ZIndex = 0
    sheen.Interactable = false
    UI.corner(sheen, radius)
    UI.gradient(sheen, { Rotation = 90, Transparency = UI.alphaSeq(0, opts.sheenAlpha or 0.93, 0.45, 1, 1, 1) })
    sheen.Parent = frame
  end
  local rim = Instance.new("UIStroke")
  rim.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
  rim.Thickness = 1
  rim.Color = Color3.new(1, 1, 1)
  if UI.fx.innerStroke then rim.BorderStrokePosition = Enum.BorderStrokePosition.Inner end
  local rimGradient = UI.gradient(rim, { Rotation = 52,
    Transparency = UI.alphaSeq(0, opts.rimHi or 0.55, 0.32, 0.9, 0.68, 0.93, 1, opts.rimLo or 0.72) })
  rim.Parent = frame
  if opts.shadow and UI.fx.shadow then
    local shadow = Instance.new("UIShadow")
    shadow.BlurRadius = UDim.new(0, opts.shadow == true and 56 or opts.shadow)
    shadow.Offset = UDim2.fromOffset(0, opts.shadowY or 22)
    shadow.Color = Color3.new(0, 0, 0)
    Theme.bind(shadow, "Transparency", "shadowA")
    pcall(function() shadow.ShowBehindParent = false end)
    shadow.Parent = frame
  end
  if opts.props then
    for key, value in pairs(opts.props) do frame[key] = value end
  end
  frame.Parent = parent
  return frame, rimGradient
end

-- A quiet filled surface (cards, rows): ink at a low alpha with a hairline.
function UI.surface(parent, props, radius, fill)
  local frame = Instance.new("Frame")
  frame.BorderSizePixel = 0
  Theme.bind(frame, "BackgroundColor3", "ink")
  Theme.bind(frame, "BackgroundTransparency", fill or "fill1A")
  UI.corner(frame, radius or "rCard")
  if props then
    for key, value in pairs(props) do frame[key] = value end
  end
  frame.Parent = parent
  return frame
end

-- A container that can fade as one. Falls back to a plain frame where a
-- CanvasGroup would soften text; UI.fade then just shows or hides it.
function UI.group(parent, props)
  local group = Instance.new(UI.fx.canvas and "CanvasGroup" or "Frame")
  group.BackgroundTransparency = 1
  group.BorderSizePixel = 0
  if props then
    for key, value in pairs(props) do group[key] = value end
  end
  group.Parent = parent
  return group
end
function UI.fade(group, alpha, preset, done)
  if group:IsA("CanvasGroup") then
    if alpha > 0 then group.Visible = true end
    Motion.to(group, "GroupTransparency", 1 - alpha, preset or "quick", function()
      if alpha <= 0 then group.Visible = false end
      if done then done() end
    end)
  else
    group.Visible = alpha > 0
    if done then done() end
  end
end
function UI.setFade(group, alpha)
  if group:IsA("CanvasGroup") then Motion.snap(group, "GroupTransparency", 1 - alpha) end
  group.Visible = alpha > 0
end

-- ---------------------------------------------------------------- sound
-- (2026-11-14, asked: "for the based's menu hub sfx, switch it to the novoline's sfx instead since it sounds way more
-- premium". The Novoline look is out of the build (based/_retired/menus-1111); its sounds are a set here, and the one the
-- hub ships with. They are Novoline's own, as its source plays them: the menu opening (at 0.9 speed) and shutting (the same
-- sound at 0.7), a change of tab, a notification. It has none of its own for a click or a switch, in that look either: those
-- are the hub's. The window asks for menu_open, menu_close, menu_tab and notify; with the set "based" they are the hub's
-- open, close and tab, and a notification is silent, as it was.)
UI.SETS = {
  novoline = { menu_open = { "rbxassetid://255881176", 0.8, 0.9 }, menu_close = { "rbxassetid://255881176", 0.8, 0.7 },
    menu_tab = { "rbxassetid://1180994874", 0.8, 1 }, notify = { "rbxassetid://255881176", 0.6, 1 } },
  based = {},
}
UI.sfxSet = "novoline"
local OWN = { menu_open = "open", menu_close = "close", menu_tab = "tab" }
local sounds = {}
function UI.sfx(name, volume)
  if not UI.sfxOn or UI.sfxVolume <= 0 or not UI.soundHost then return end
  local theirs = (UI.SETS[UI.sfxSet] or UI.SETS.based)[name]
  if theirs then
    -- (one number is drawn here where the hub's own sound would have drawn one for its pitch, below: the spec's seeded Da
    -- Hood scenarios count on the stream of random numbers being what it was, and the window opening at start is one of
    -- these sounds. Not for a toast: that made no sound of the hub's own, and drew none)
    if OWN[name] then local _ = math.random() end
    return UI.sfxId(theirs[1], theirs[2], theirs[3])
  end
  if name == "notify" then return end
  name = OWN[name] or name
  local id = Assets.sound(name)
  if not id then return end
  local now = os.clock()
  local entry = sounds[name]
  if entry and now - entry.at < 0.04 then return end
  if not entry then
    local sound = Instance.new("Sound")
    sound.SoundId = id
    sound.Parent = UI.soundHost
    entry = { sound = sound, at = 0 }
    sounds[name] = entry
  end
  entry.at = now
  entry.sound.Volume = (volume or 1) * UI.sfxVolume * 0.5
  entry.sound.PlaybackSpeed = 0.97 + math.random() * 0.06
  entry.sound:Play()
end
-- A look's own sound, by its asset id (src/53: Novoline's), at the volume and speed that look plays
-- it at when the hub's sound volume is where it starts (45 %), and louder or softer with it.
function UI.sfxId(id, volume, speed)
  if not UI.sfxOn or UI.sfxVolume <= 0 or not UI.soundHost then return end
  local key = id .. "@" .. tostring(speed or 1)
  local now = os.clock()
  local entry = sounds[key]
  if entry and now - entry.at < 0.04 then return end
  if not entry then
    local sound = Instance.new("Sound")
    sound.SoundId = id
    sound.Parent = UI.soundHost
    entry = { sound = sound, at = 0 }
    sounds[key] = entry
  end
  entry.at = now
  entry.sound.Volume = math.clamp((volume or 1) * UI.sfxVolume / 0.45, 0, 2)
  entry.sound.PlaybackSpeed = speed or 1
  entry.sound.TimePosition = 0
  entry.sound:Play()
end

-- ---------------------------------------------------------------- input
local function isPress(input)
  return input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch
end
UI.isPress = isPress
-- One coordinate space everywhere: the one AbsolutePosition reports. Measured on the client:
-- a ScreenGui that ignores the inset sits at AbsolutePosition (0, -58), InputObject.Position is
-- in that same space, and GetMouseLocation / the camera's viewport are 58 px further down.
function UI.inset() return S.GuiService:GetGuiInset() end
function UI.mouse() return UIS:GetMouseLocation() - S.GuiService:GetGuiInset() end
function UI.point(input) return Vector2.new(input.Position.X, input.Position.Y) end
-- design units -> screen pixels for anything inside the window (set by 06 window)
function UI.unit() return 1 end
function UI.inside(gui, point)
  local p, s = gui.AbsolutePosition, gui.AbsoluteSize
  return point.X >= p.X and point.X <= p.X + s.X and point.Y >= p.Y and point.Y <= p.Y + s.Y
end

-- Attach hover / press / click / alt (right click) handlers to a GuiButton.
function UI.wire(button, handlers)
  local pressing = false
  if handlers.hover then
    button.MouseEnter:Connect(B.safe("ui.hover", function() handlers.hover(true) end))
    button.MouseLeave:Connect(B.safe("ui.hover", function()
      handlers.hover(false)
      if pressing and handlers.press then pressing = false; handlers.press(false) end
    end))
  end
  button.InputBegan:Connect(B.safe("ui.press", function(input)
    if isPress(input) then
      pressing = true
      if handlers.press then handlers.press(true) end
    elseif input.UserInputType == Enum.UserInputType.MouseButton2 and handlers.alt then
      handlers.alt(input)
    end
  end))
  button.InputEnded:Connect(B.safe("ui.press", function(input)
    if isPress(input) and pressing then
      pressing = false
      if handlers.press then handlers.press(false) end
    end
  end))
  if handlers.click then button.Activated:Connect(B.safe("ui.click", function(input) handlers.click(input) end)) end
  return button
end
-- An invisible button laid over `parent`. Only for parents WITHOUT a list layout or automatic
-- width: a full-size child there is laid out as an item and inflates the parent (measured:
-- a 60 px dropdown pill became 550 px). Those use UI.pressable instead.
function UI.button(parent, handlers, props)
  local button = Instance.new("TextButton")
  button.Name = "Hit"
  button.Text = ""
  button.BackgroundTransparency = 1
  button.BorderSizePixel = 0
  button.AutoButtonColor = false
  button.Size = UDim2.fromScale(1, 1)
  button.ZIndex = 5
  if props then
    for key, value in pairs(props) do button[key] = value end
  end
  UI.wire(button, handlers)
  button.Parent = parent
  return button
end
-- A container that is itself the button: children (labels, icons, layouts) go inside it.
function UI.pressable(parent, props, handlers)
  local button = Instance.new("TextButton")
  button.Text = ""
  button.AutoButtonColor = false
  button.BorderSizePixel = 0
  button.BackgroundTransparency = 1
  if props then
    for key, value in pairs(props) do
      if key == "Theme" then applyTheme(button, value) else button[key] = value end
    end
  end
  if handlers then UI.wire(button, handlers) end
  button.Parent = parent
  return button
end

-- Drag with mouse or finger. onMove(position, deltaFromStart); returns nothing.
function UI.drag(handle, onStart, onMove, onEnd)
  handle.InputBegan:Connect(B.safe("ui.drag", function(input)
    if not isPress(input) then return end
    local start = UI.point(input)
    if onStart and onStart(start) == false then return end
    local touch = input.UserInputType == Enum.UserInputType.Touch
    local moved, ended
    local function finish()
      if moved then moved:Disconnect() end
      if ended then ended:Disconnect() end
      moved, ended = nil, nil
      if onEnd then B.try("ui.drag.end", onEnd) end
    end
    moved = UIS.InputChanged:Connect(B.safe("ui.drag.move", function(change)
      if (touch and change == input) or (not touch and change.UserInputType == Enum.UserInputType.MouseMovement) then
        local p = UI.point(change)
        onMove(p, p - start)
      end
    end))
    ended = UIS.InputEnded:Connect(function(finished)
      if finished == input or (not touch and finished.UserInputType == Enum.UserInputType.MouseButton1) then finish() end
    end)
  end))
end

-- ---------------------------------------------------------------- overlay layer
-- Popovers, menus and tooltips live in one full-screen layer above the window.
local popovers = {}
function UI.mountOverlay(gui, scaleSource)
  UI.overlay = UI.frame(gui, { Name = "Overlay", Size = UDim2.fromScale(1, 1), ZIndex = 50 })
  UI.overlayScale = scaleSource
  -- a click anywhere outside the open popover closes it
  B.connect(UIS.InputBegan, function(input)
    if #popovers == 0 then return end
    if isPress(input) or input.UserInputType == Enum.UserInputType.MouseButton2 then
      local point = UI.point(input)
      for index = #popovers, 1, -1 do
        local pop = popovers[index]
        if not UI.inside(pop.frame, point) and not (pop.anchor and UI.inside(pop.anchor, point)) then pop.close() else break end
      end
    elseif input.KeyCode == Enum.KeyCode.Escape then
      popovers[#popovers].close()
    end
  end, "ui.overlay")
end
function UI.closePopovers()
  for index = #popovers, 1, -1 do popovers[index].close(true) end
end
function UI.popoverOpen() return #popovers > 0 end

-- Open a glass panel next to `anchor`. build(content, close) fills it.
-- opts: width, align ("left" | "right" | "center"), gap, side ("below" | "above")
function UI.popover(anchor, opts, build)
  opts = opts or {}
  local scale = UI.overlayScale and UI.overlayScale() or 1
  local width = opts.width or 220
  local pop = { anchor = anchor }
  local holder = UI.frame(UI.overlay, { Name = "Popover", Size = UDim2.fromOffset(width, 0), AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 60 })
  local sizer = Instance.new("UIScale")
  sizer.Scale = scale * 0.92
  sizer.Parent = holder
  local glass = UI.glass(holder, { level = "popover", radius = "rCard", shadow = 34, shadowY = 14, rimHi = 0.62, name = "Panel",
    props = { Size = UDim2.fromScale(1, 0), AutomaticSize = Enum.AutomaticSize.Y } })
  local group = UI.group(glass, { Size = UDim2.fromScale(1, 0), AutomaticSize = Enum.AutomaticSize.Y })
  UI.pad(group, opts.pad or 6)
  UI.list(group, "y", opts.gap or 2)
  pop.frame = holder
  local closed = false
  function pop.close(instant)
    if closed then return end
    closed = true
    local at = table.find(popovers, pop)
    if at then table.remove(popovers, at) end
    if opts.onClose then B.try("popover.close", opts.onClose) end
    if instant then holder:Destroy(); return end
    Motion.to(sizer, "Scale", scale * 0.94, "quick")
    UI.fade(group, 0, "quick")
    Motion.to(glass, "BackgroundTransparency", 1, "quick", function() holder:Destroy() end)
  end
  B.try("popover.build", build, group, pop.close)
  -- place it once its height is known
  local function place()
    local view = B.viewport()
    local a, s = anchor.AbsolutePosition, anchor.AbsoluteSize
    local size = holder.AbsoluteSize
    local w, h = width * scale, math.max(size.Y, 1)
    local x
    if opts.align == "left" then x = a.X elseif opts.align == "center" then x = a.X + s.X / 2 - w / 2 else x = a.X + s.X - w end
    local y = a.Y + s.Y + 6 * scale
    local above = opts.side == "above" or (y + h > view.Y - 8 and a.Y - h - 6 * scale > 8)
    if above then y = a.Y - h - 6 * scale end
    local origin = UI.overlay.AbsolutePosition
    x = math.clamp(x - origin.X, 8, math.max(8, view.X - w - 8))
    y = math.clamp(y - origin.Y, 8, math.max(8, view.Y - h - 8))
    holder.Position = UDim2.fromOffset(x, y)
    return above
  end
  place()
  holder:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() if not closed then place() end end)
  UI.setFade(group, 0)
  UI.fade(group, 1, "quick")
  Motion.to(sizer, "Scale", scale, "snappy")
  popovers[#popovers + 1] = pop
  UI.sfx("open", 0.5)
  return pop
end

-- A simple menu: items = { { label, icon?, hint?, danger?, checked?, run } | "divider" }
-- A long one (more than opts.rows of them, 11 unless said) scrolls, and opens on the one that is checked.
function UI.menu(anchor, items, opts)
  opts = opts or {}
  return UI.popover(anchor, { width = opts.width or 208, align = opts.align, side = opts.side }, function(content, close)
    -- (never taller than the screen: on a small one fewer rows show and the rest scroll)
    local rows = math.max(4, math.min(opts.rows or 11, math.floor((B.viewport().Y / (UI.overlayScale and UI.overlayScale() or 1) - 120) / 34)))
    local found, find = {}, nil
    if #items > rows then
      -- (2026-11-13: a long list also takes a few typed letters, so the one wanted is two keys away)
      local bar = UI.frame(content, { Name = "Find", Size = UDim2.new(1, 0, 0, 30), LayoutOrder = -2, Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill3A" } })
      UI.corner(bar, "rSmall")
      find = UI.new("TextBox", { Name = "Query", BackgroundTransparency = 1, Size = UDim2.new(1, -20, 1, 0), Position = UDim2.fromOffset(10, 0), Text = "",
        PlaceholderText = "Type to find", FontFace = B.F.text400, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left, ClearTextOnFocus = false, ClipsDescendants = true,
        Theme = { TextColor3 = "ink", PlaceholderColor3 = "faint" }, Parent = bar })
      local holder = UI.frame(content, { Name = "Long", Size = UDim2.new(1, 0, 0, rows * 34 - 2), LayoutOrder = -1 })
      local scroller, scroll = UI.scroll(holder, { Size = UDim2.fromScale(1, 1), Name = "Scroll" })
      content = UI.frame(scroller, { Name = "Rows", Size = UDim2.new(1, -9, 0, 0), AutomaticSize = Enum.AutomaticSize.Y })
      UI.list(content, "y", 2)
      find:GetPropertyChangedSignal("Text"):Connect(function()
        local query = string.lower(find.Text)
        for _, entry in ipairs(found) do
          entry.frame.Visible = query == "" or string.find(entry.words, query, 1, true) ~= nil
        end
      end)
      for index, item in ipairs(items) do
        if type(item) == "table" and item.checked then
          task.defer(function() if holder.Parent then scroll.to((index - 4) * 34, true) end end)
          break
        end
      end
    end
    for index, item in ipairs(items) do
      if item == "divider" then
        local line = UI.frame(content, { Size = UDim2.new(1, -12, 0, 1), LayoutOrder = index, Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "strokeA" } })
        line.Position = UDim2.fromOffset(6, 0)
      else
        local row = UI.frame(content, { Size = UDim2.new(1, 0, 0, 32), LayoutOrder = index, Theme = { BackgroundColor3 = "ink" } })
        found[#found + 1] = { frame = row, words = string.lower(tostring(item.label)) }
        UI.corner(row, "rSmall")
        local x = 10
        if item.icon then
          UI.icon(row, item.icon, 16, item.danger and "bad" or "sub", { Position = UDim2.new(0, 10, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5) })
          x = 34
        end
        UI.text(row, item.label, "label", item.danger and "bad" or "ink", { Position = UDim2.new(0, x, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5), TextSize = 13 })
        if item.checked then
          UI.icon(row, "check", 15, "accent", { Position = UDim2.new(1, -10, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5) })
        elseif item.hint then
          UI.text(row, item.hint, "mono", "faint", { Position = UDim2.new(1, -10, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5), TextSize = 11 })
        end
        UI.button(row, {
          hover = function(on) Motion.to(row, "BackgroundTransparency", on and T.fill2A or 1, "quick") end,
          click = function()
            UI.sfx("click", 0.6)
            if not item.keepOpen then close() end
            if item.run then item.run() end
          end,
        })
      end
    end
  end)
end

-- ---------------------------------------------------------------- tooltip
-- One tip for the whole hub, in every look (2026-10-30: nearly every control says what it does when
-- the mouse rests on it). It comes beside what it is about (to its right, else its left, else under
-- it, always on the screen), fades and slides in, and goes straight on to the next thing the mouse
-- rests on without going away first. On a screen of its own, above everything.
local TIP_W, TIP_MIN = 250, 110
local tipGui, tipCard, tipTitle, tipBody, tipFor
local tipToken, tipShown, tipGoneAt = 0, false, -math.huge
local tipHideToken = 0          -- (a pending hide: any show, or a later hide, cancels it)
local function tipBuild()
  if tipCard and tipCard.Parent and tipGui and tipGui.Parent then return true end
  if not B.alive then return false end
  tipGui = B.screen(9950)
  tipCard = Instance.new("CanvasGroup")
  tipCard.Name = "Tip"
  -- (one flat colour, no UIGradient: measured live 2026-10-30, a gradient on a CanvasGroup tints all
  -- that is drawn in it, and the words came out near black on the card)
  -- (the card's colour and its white rim are a frame inside the group, not the group's own: a stroke on
  -- the CanvasGroup itself is drawn outside it, so it never faded with it, and hovering a few controls
  -- quickly left the white rim standing. Seen by the user 2026-11-01)
  tipCard.BackgroundTransparency, tipCard.BorderSizePixel = 1, 0
  tipCard.Size, tipCard.AutomaticSize = UDim2.fromOffset(TIP_W, 0), Enum.AutomaticSize.Y
  tipCard.GroupTransparency, tipCard.Visible = 1, false
  local back = Instance.new("Frame")
  back.Name = "Back"
  back.BackgroundColor3, back.BackgroundTransparency, back.BorderSizePixel = Color3.fromRGB(21, 21, 25), 0, 0
  -- (inset a pixel, so the 1-pixel rim is inside the group's canvas, which clips at its edge)
  back.Position, back.Size, back.ZIndex = UDim2.fromOffset(1, 1), UDim2.new(1, -2, 1, -2), 0
  local corner = Instance.new("UICorner"); corner.CornerRadius = UDim.new(0, 10); corner.Parent = back
  local rim = Instance.new("UIStroke")
  rim.ApplyStrokeMode, rim.Color, rim.Transparency, rim.Thickness = Enum.ApplyStrokeMode.Border, Color3.new(1, 1, 1), 0.86, 1
  rim.Parent = back
  back.Parent = tipCard
  -- (the words in a frame of their own, which the card's height follows: the back is not one of its lines)
  local content = Instance.new("Frame")
  content.Name = "Content"
  content.BackgroundTransparency, content.BorderSizePixel, content.ZIndex = 1, 0, 1
  content.Size, content.AutomaticSize = UDim2.new(1, 0, 0, 0), Enum.AutomaticSize.Y
  content.Parent = tipCard
  local padding = Instance.new("UIPadding")
  padding.PaddingTop, padding.PaddingBottom, padding.PaddingLeft, padding.PaddingRight = UDim.new(0, 8), UDim.new(0, 9), UDim.new(0, 11), UDim.new(0, 11)
  padding.Parent = content
  local layout = Instance.new("UIListLayout"); layout.Padding = UDim.new(0, 2); layout.SortOrder = Enum.SortOrder.LayoutOrder; layout.Parent = content
  local function line(order, font, size, color)
    local label = Instance.new("TextLabel")
    label.BackgroundTransparency, label.BorderSizePixel = 1, 0
    label.Size, label.AutomaticSize = UDim2.new(1, 0, 0, 0), Enum.AutomaticSize.Y
    label.FontFace, label.TextSize, label.TextColor3 = font, size, color
    label.TextWrapped, label.TextXAlignment, label.LayoutOrder = true, Enum.TextXAlignment.Left, order
    label.Text, label.Visible = "", true
    label.Parent = content
    return label
  end
  tipTitle = line(1, B.F.text600, 12, Color3.fromRGB(246, 246, 248))
  tipBody = line(2, B.F.text400, 12, Color3.fromRGB(190, 190, 198))
  tipCard.Parent = tipGui
  return true
end
local TIP_IN = TweenInfo.new(0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TIP_MOVE = TweenInfo.new(0.14, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TIP_OUT = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
local function tipShow(target, title, text)
  if not tipBuild() then return end
  tipTitle.Text, tipTitle.Visible = title or "", title ~= nil and title ~= ""
  tipBody.Text = text
  -- (as wide as its words want, up to TIP_W: a short tip is a small card)
  local width = math.clamp(math.max(#(title or "") * 7.2, #text * 6.3) + 24, TIP_MIN, TIP_W)
  tipCard.Size = UDim2.fromOffset(width, 0)
  local base = tipGui.AbsolutePosition
  local view = tipGui.AbsoluteSize
  local at, size = target.AbsolutePosition - base, target.AbsoluteSize
  local height = (tipTitle.Visible and 16 or 0) + math.ceil(#text * 6.3 / math.max(width - 22, 40)) * 16 + 20
  local x, y = at.X + size.X + 10, at.Y + size.Y / 2 - height / 2
  local from = Vector2.new(-8, 0)
  if x + width > view.X - 8 then
    x, from = at.X - width - 10, Vector2.new(8, 0)
    if x < 8 then
      -- (no room either side: under it, or over it)
      x = math.clamp(at.X + size.X / 2 - width / 2, 8, math.max(view.X - width - 8, 8))
      y, from = at.Y + size.Y + 8, Vector2.new(0, -6)
      if y + height > view.Y - 8 then y, from = at.Y - height - 8, Vector2.new(0, 6) end
    end
  end
  y = math.clamp(y, 8, math.max(view.Y - height - 8, 8))
  local goal = UDim2.fromOffset(math.floor(x), math.floor(y))
  tipHideToken += 1                -- (a hide still waiting to put the card away is for the last one, not this)
  if tipShown and tipCard.Visible then
    -- (already showing: it moves over to the new one)
    S.TweenService:Create(tipCard, TIP_MOVE, { Position = goal, GroupTransparency = 0 }):Play()
  else
    tipCard.Position = goal + UDim2.fromOffset(from.X, from.Y)
    tipCard.GroupTransparency = 1
    tipCard.Visible = true
    S.TweenService:Create(tipCard, TIP_IN, { Position = goal, GroupTransparency = 0 }):Play()
  end
  tipShown = true
end
local function tipHide()
  -- (put away whenever it is up, faded or not: a tip about to come that was called off, the mouse gone on
  -- before it came, left the card up and faded with nothing to put it away, and its rim standing)
  if not (tipCard and (tipShown or tipCard.Visible)) then return end
  if tipShown then tipGoneAt = os.clock() end
  tipShown = false
  tipHideToken += 1
  local mine = tipHideToken
  S.TweenService:Create(tipCard, TIP_OUT, { GroupTransparency = 1 }):Play()
  task.delay(0.12, function() if mine == tipHideToken and not tipShown and tipCard then tipCard.Visible = false end end)
end
-- target: the thing the mouse rests on; text: what it does; title: its name (optional)
function UI.tooltip(target, text, title)
  if type(text) ~= "string" or text == "" then return end
  target.MouseEnter:Connect(function()
    tipToken += 1
    local mine = tipToken
    tipFor = target
    -- (one tip just showing, or just gone: the next comes at once, the way a menu's tips do)
    local quick = tipShown or os.clock() - tipGoneAt < 0.3
    task.delay(quick and 0.02 or 0.35, function()
      if mine ~= tipToken or tipFor ~= target or not B.alive or not target.Parent then return end
      B.try("ui.tip", tipShow, target, title, text)
    end)
  end)
  target.MouseLeave:Connect(function()
    if tipFor ~= target then return end
    tipFor = nil
    tipToken += 1
    local mine = tipToken
    task.delay(0.06, function() if mine == tipToken then tipHide() end end)
  end)
  -- (a click: it has been read; it goes)
  if target:IsA("GuiButton") then target.MouseButton1Down:Connect(function() tipToken += 1; tipFor = nil; tipHide() end) end
end
function UI.hideTip()
  tipToken += 1
  tipFor = nil
  tipHide()
end

-- ---------------------------------------------------------------- scroll
-- A vertical scroller with a spring-driven wheel and a scrollbar: a thumb that says how far down
-- the page is, grows under the pointer, and can be dragged; a press on the track beside it goes
-- there. UI.scrollbar: "always" (it rests faint), "auto" (only while the page moves), "off".
UI.scrollbar = "always"
local scrollers = setmetatable({}, { __mode = "k" })
function UI.setScrollbar(mode)
  UI.scrollbar = mode
  for _, paint in pairs(scrollers) do B.try("ui.scrollbar", paint) end
end
local BAR_REST, BAR_WIDE, BAR_GRIP = 3, 6, 14     -- the thumb at rest and under the pointer, and the strip that takes the pointer
function UI.scroll(parent, props)
  local scroller = Instance.new("ScrollingFrame")
  scroller.BackgroundTransparency = 1
  scroller.BorderSizePixel = 0
  scroller.ScrollBarThickness = 0
  scroller.ScrollingDirection = Enum.ScrollingDirection.Y
  scroller.AutomaticCanvasSize = Enum.AutomaticSize.Y
  scroller.CanvasSize = UDim2.new()
  scroller.ElasticBehavior = Enum.ElasticBehavior.Never
  scroller.ScrollingEnabled = B.touch
  if props then
    for key, value in pairs(props) do scroller[key] = value end
  end
  scroller.Parent = parent
  local thumb = UI.frame(parent, { Name = "Thumb", Size = UDim2.fromOffset(BAR_REST, 40), AnchorPoint = Vector2.new(1, 0), ZIndex = 8,
    Theme = { BackgroundColor3 = "ink" }, BackgroundTransparency = 1 })
  UI.corner(thumb, true)
  local grip = UI.new("TextButton", { Name = "Scrollbar", Text = "", AutoButtonColor = false, BackgroundTransparency = 1, AnchorPoint = Vector2.new(1, 0),
    Size = UDim2.fromOffset(BAR_GRIP, 40), ZIndex = 9, Visible = false, Parent = parent })
  local target = 0
  local spring = Motion.spring(1, "smooth", function(x)
    scroller.CanvasPosition = Vector2.new(0, x[1])
  end, 0.2)
  local function limit()
    return math.max(0, scroller.AbsoluteCanvasSize.Y - scroller.AbsoluteWindowSize.Y)
  end
  local hideToken = 0
  local hovered, dragging, flashing, width = false, false, false, BAR_REST
  local bar = { top = 0, size = 0, span = 0 }       -- the thumb as it was last laid out, in screen pixels
  -- false when there is nothing to scroll, or the bar is switched off
  local function refresh()
    local window, canvas = scroller.AbsoluteWindowSize.Y, scroller.AbsoluteCanvasSize.Y
    local needed = canvas > window + 1 and window > 0 and UI.scrollbar ~= "off"
    if grip.Visible ~= needed then grip.Visible = needed end
    if not needed then thumb.BackgroundTransparency = 1; return false end
    local track = scroller.AbsoluteSize.Y - 12
    local size = math.max(28, track * window / canvas)
    local ratio = scroller.CanvasPosition.Y / math.max(1, canvas - window)
    local unit = UI.unit()
    local right = (scroller.AbsolutePosition.X - parent.AbsolutePosition.X + scroller.AbsoluteSize.X) / unit
    local top = scroller.AbsolutePosition.Y - parent.AbsolutePosition.Y
    thumb.Size = UDim2.fromOffset(width, size / unit)
    thumb.Position = UDim2.new(0, right - 3, 0, (top + 6 + (track - size) * ratio) / unit)
    grip.Size = UDim2.fromOffset(BAR_GRIP, scroller.AbsoluteSize.Y / unit)
    grip.Position = UDim2.new(0, right, 0, top / unit)
    bar.top, bar.size, bar.span = scroller.AbsolutePosition.Y + 6, size, track - size
    return true
  end
  local widen = Motion.spring(1, "snappy", function(x)
    width = x[1]
    refresh()
  end, 0.05)
  widen:snap({ BAR_REST })
  -- how solid the thumb is: held, under the pointer, while the page moves, or at rest
  local function paint()
    if not refresh() then return end
    local alpha = dragging and 0.35 or hovered and 0.5 or flashing and 0.62 or (UI.scrollbar == "always" and 0.82 or 1)
    Motion.to(thumb, "BackgroundTransparency", alpha, alpha >= 0.8 and "gentle" or "quick")
    widen:to({ (dragging or hovered) and BAR_WIDE or BAR_REST })
  end
  scrollers[scroller] = paint
  local function flash()
    flashing = true
    paint()
    hideToken += 1
    local mine = hideToken
    task.delay(0.9, function()
      if mine == hideToken and thumb.Parent then flashing = false; paint() end
    end)
  end
  scroller:GetPropertyChangedSignal("CanvasPosition"):Connect(flash)
  scroller:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function()
    if target > limit() then target = limit(); spring:to({ target }) end
    paint()
  end)
  scroller:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(paint)
  -- the thumb held: the page goes with the pointer, with no spring between them
  local grab = 0
  local function follow(y)
    local ratio = bar.span > 0 and math.clamp((y - grab - bar.top) / bar.span, 0, 1) or 0
    target = ratio * limit()
    spring:snap({ target })
  end
  UI.drag(grip, function(point)
    if not refresh() then return false end
    local at = bar.top + bar.span * (scroller.CanvasPosition.Y / math.max(1, limit()))
    -- on the thumb it is taken where it was pressed; beside it, the thumb comes to the pointer
    grab = (point.Y >= at and point.Y <= at + bar.size) and (point.Y - at) or bar.size * 0.5
    dragging = true
    follow(point.Y)
    paint()
    return true
  end, function(point) follow(point.Y) end, function()
    dragging = false
    paint()
  end)
  grip.MouseEnter:Connect(function() hovered = true; paint() end)
  grip.MouseLeave:Connect(function() hovered = false; paint() end)
  local wheel = B.safe("ui.wheel", function(input)
    if input.UserInputType ~= Enum.UserInputType.MouseWheel or B.touch then return end
    -- An open list (any popover) holds the page under it still: the wheel over it scrolls the list
    -- alone. Before, the page went on scrolling under an open dropdown and left it behind.
    local top = popovers[#popovers]
    if top and not (top.frame and scroller:IsDescendantOf(top.frame)) then return end
    if not spring:moving() then
      spring.x[1], spring.g[1] = scroller.CanvasPosition.Y, scroller.CanvasPosition.Y
      target = scroller.CanvasPosition.Y
    end
    target = math.clamp(target - input.Position.Z * 92, 0, limit())
    spring:to({ target })
  end)
  scroller.InputChanged:Connect(wheel)
  grip.InputChanged:Connect(wheel)        -- (the strip lies over the page's edge: the wheel works there too)
  -- (painted once it is laid out, not only when something about it changes)
  task.defer(function() if scroller.Parent then B.try("ui.scrollbar", paint) end end)
  local api = { frame = scroller, thumb = thumb, grip = grip }
  function api.to(y, instant)
    target = math.clamp(y, 0, limit())
    if instant then spring:snap({ target }) else
      spring.x[1] = scroller.CanvasPosition.Y
      spring:to({ target })
    end
  end
  function api.top(instant) api.to(0, instant) end
  return scroller, api
end

-- ---------------------------------------------------------------- the interface's letters
-- Settings > Font: every word the BASED look writes in one family (its wordmark keeps its own).
-- Done where the letters come from: B.F's keys take the family at their own weight, so whatever is
-- drawn from now on has it, and what is on screen already is moved across once, matched by the
-- face it wore. The other looks keep their own letters (Unnamed has its own font setting).
UI.FAMILIES = {
  { "inter", "Inter (BASED)" },
  { "monocraft", "Monocraft (Minecraft)", function() return B.F0 and B.F0.craft end },
  { "builder", "Builder Sans", "BuilderSans" },
  { "gotham", "Gotham", "GothamSSm" },
  { "montserrat", "Montserrat", "Montserrat" },
  { "nunito", "Nunito", "Nunito" },
  { "ubuntu", "Ubuntu", "Ubuntu" },
  { "titillium", "Titillium", "TitilliumWeb" },
  { "jura", "Jura", "Jura" },
  { "sarpanch", "Sarpanch", "Sarpanch" },
  { "michroma", "Michroma", "Michroma" },
  { "oswald", "Oswald", "Oswald" },
  { "fredoka", "Fredoka", "FredokaOne" },
  { "roboto", "Roboto Mono", "RobotoMono" },
  { "arial", "Arial", function() return Font.fromEnum(Enum.Font.Arial) end },
  { "source", "Source Sans", "SourceSansPro" },
}
-- the keys that follow the pick (the wordmark, wideBlack, stays BASED)
local LETTER_KEYS = { "text400", "text500", "text600", "mono400", "mono500", "wideBold", "serif", "serifItalic" }
local function faceSig(face) return tostring(face.Family) .. "|" .. tostring(face.Weight) .. "|" .. tostring(face.Style) end
function UI.familyOf(id)
  for _, spec in ipairs(UI.FAMILIES) do
    if spec[1] == id then
      local source = spec[3]
      if source == nil then return nil end
      local ok, face = pcall(function()
        if type(source) == "function" then return source() end
        return Font.fromName(source)
      end)
      return ok and typeof(face) == "Font" and face.Family or nil
    end
  end
  return nil
end
-- Which key each text on screen was drawn from (strong, swept): told by its face the first time it
-- is seen, from the hub's own faces (all different), or from the faces in use now. The second can be
-- two keys at once (in one family Inter 400 and Geist 400 are the same face): the body text wins,
-- and texts drawn by UI.text say their key outright. (Matching by face alone turned 381 labels into
-- the serif on the way back to Inter.)
UI.fontKey = {}
function UI.sweepFonts()
  for label in pairs(UI.fontKey) do
    if not label.Parent then UI.fontKey[label] = nil end
  end
end
-- (2026-11-11) the same, a few hundred at a time: all of them in one pass was a frame of several milliseconds every
-- 10 s with the whole hub built. See Theme.sweepSome.
local fontFrom
function UI.sweepFontsSome(most)
  local key = fontFrom
  if key ~= nil and UI.fontKey[key] == nil then key = nil end
  for _ = 1, most or 250 do
    local label = next(UI.fontKey, key)
    if label == nil then key = nil; break end
    if not label.Parent then UI.fontKey[label] = nil else key = label end
  end
  fontFrom = key
end
function UI.setLetters(id)
  if not B.F0 then return end
  local family = UI.familyOf(id)
  local own, now = {}, {}
  for _, key in ipairs(LETTER_KEYS) do
    if B.F0[key] then own[faceSig(B.F0[key])] = own[faceSig(B.F0[key])] or key end
    if B.F[key] then now[faceSig(B.F[key])] = now[faceSig(B.F[key])] or key end
  end
  for label in pairs(UI.fontKey) do
    if not label.Parent then UI.fontKey[label] = nil end
  end
  for _, key in ipairs(LETTER_KEYS) do
    local own = B.F0[key]
    if own then
      if family then
        local ok, face = pcall(Font.new, family, own.Weight, own.Style)
        B.F[key] = ok and face or own
      else
        B.F[key] = own
      end
    end
  end
  -- what is on screen now: each text moved to its key's new face
  -- (the other looks keep their own letters, also where they draw on the HUD)
  local function owns(item) return (B.Unnamed ~= nil and B.Unnamed.owns(item)) or (B.Novoline ~= nil and B.Novoline.owns(item)) end
  for _, gui in ipairs(B.screens or {}) do
    if gui.Parent and not gui:GetAttribute("OwnLetters") then
      for _, item in ipairs(gui:GetDescendants()) do
        if (item:IsA("TextLabel") or item:IsA("TextButton") or item:IsA("TextBox")) and not owns(item) then
          local key = UI.fontKey[item]
          if not key then
            local sig = faceSig(item.FontFace)
            key = own[sig] or now[sig]
            if key then UI.fontKey[item] = key end
          end
          if key and B.F[key] and item.FontFace ~= B.F[key] then item.FontFace = B.F[key] end
        end
      end
    end
  end
end

-- ---------------------------------------------------------------- misc
function UI.divider(parent, order)
  local line = UI.frame(parent, { Name = "Divider", Size = UDim2.new(1, 0, 0, 1), LayoutOrder = order or 0,
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "strokeA" } })
  return line
end
-- Small rounded tag: "NEW", "BETA", a key name...
function UI.badge(parent, text, color, props)
  local badge = UI.frame(parent, { AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.fromOffset(0, 18), Theme = { BackgroundColor3 = color or "accent" },
    BackgroundTransparency = 0.82 })
  UI.corner(badge, 6)
  UI.pad(badge, 0, 6)
  UI.text(badge, text, "eyebrow", color or "accent", { TextSize = 9, Size = UDim2.fromScale(0, 1), AutomaticSize = Enum.AutomaticSize.X })
  if props then
    for key, value in pairs(props) do badge[key] = value end
  end
  return badge
end
end
do -- 05_config.lua
-- ============================================================================
--  05 config   flags, profiles, keybinds
--
--  Every setting is a flag with an id. Ids under "app." are the hub's own
--  preferences (theme, intro, scale) and live in prefs.json; everything else is
--  a feature setting and lives in the active profile, which can be one file for
--  every game or one per game. Writes are debounced; nothing saves per frame.
-- ============================================================================
local S, fs, util = B.S, B.fs, B.util
local UIS = S.UserInputService
local Config = { profile = "default", changed = B.Signal.new(), loaded = B.Signal.new() }
B.Config = Config

local values, defaults, listeners = {}, {}, {}
local binds = {}            -- flag id -> { key = "E", mode = "toggle" | "hold" }
local actions = {}          -- id -> function, for bindable buttons
local stored = { app = {}, profile = {} }   -- raw decoded files, kept so unknown ids survive a save
local storedBinds = {}
Config.values, Config.defaults, Config.binds = values, defaults, binds

local function isApp(id) return string.sub(id, 1, 4) == "app." end
local function encode(value)
  local kind = typeof(value)
  if kind == "Color3" then return { __c = util.toHex(value) } end
  if kind == "EnumItem" then return { __e = tostring(value.EnumType), v = value.Name } end
  if kind == "table" then
    local out = {}
    for k, v in pairs(value) do out[k] = encode(v) end
    return out
  end
  return value
end
local function decode(value)
  if type(value) ~= "table" then return value end
  if type(value.__c) == "string" then
    local ok, color = pcall(util.hex, value.__c)
    return ok and color or nil
  end
  if value.__e then
    local ok, item = pcall(function() return Enum[value.__e][value.v] end)
    return ok and item or nil
  end
  local out = {}
  for k, v in pairs(value) do out[k] = decode(v) end
  return out
end
local function sameType(a, b)
  return typeof(a) == typeof(b)
end

-- What the hub ships with (based/shipped.json, baked in by the build): the settings a fresh
-- executor starts from. A shipped value takes the place of the default written in the code, so
-- a setting someone has saved still wins and Reset comes back to what shipped.
local shipped = type(B.SHIPPED) == "table" and B.SHIPPED or {}
local shippedValues = type(shipped.values) == "table" and shipped.values or {}
local shippedBinds = type(shipped.binds) == "table" and shipped.binds or {}

local function profilePath(name) return fs.path("config/" .. name .. ".json") end
local PREFS = fs.path("prefs.json")

-- Saving. Only what changed here is written, onto what is on disk at that moment: every account
-- open on this PC shares these files, and writing the whole of one client's memory undid what
-- another had just saved. A change made quietly (a test, a bot starting itself) is never written.
-- Whatever is waiting goes out at once on unload and on a teleport, not 0.6 s later or never.
local dirty, dirtyBinds = {}, {}
local pending = false
local function isDefault(id)
  local a, b = values[id], defaults[id]
  if type(a) ~= "table" or type(b) ~= "table" then return a == b end
  for k, v in pairs(a) do if b[k] ~= v then return false end end
  for k, v in pairs(b) do if a[k] ~= v then return false end end
  return true
end
local function flush()
  pending = false
  if next(dirty) == nil and next(dirtyBinds) == nil and (Config.stashed == nil or next(Config.stashed) == nil) then return end
  local appTouched = false
  local prefs = fs.readJson(PREFS)
  prefs = type(prefs) == "table" and prefs or {}
  local app = type(prefs.values) == "table" and prefs.values or stored.app
  local bindOut = type(prefs.binds) == "table" and prefs.binds or nil
  if not bindOut then
    -- (nothing on disk yet: every key there is, the ones that shipped too, or they would be lost)
    bindOut = {}
    for id, bind in pairs(binds) do bindOut[id] = { key = bind.key, mode = bind.mode } end
    appTouched = true
  end
  local disk = fs.readJson(profilePath(Config.profile))
  local profile = (type(disk) == "table" and type(disk.values) == "table") and disk.values or stored.profile
  local profileTouched = false
  for id in pairs(dirty) do
    local bucket = isApp(id) and app or profile
    if values[id] == nil or isDefault(id) then bucket[id] = nil else bucket[id] = encode(values[id]) end
    if isApp(id) then appTouched = true else profileTouched = true end
  end
  for id in pairs(dirtyBinds) do
    local bind = binds[id]
    bindOut[id] = bind and { key = bind.key, mode = bind.mode } or nil
    appTouched = true
  end
  -- (settings this session does not know, from a share code: written as they came, see Config.stash)
  for id, raw in pairs(Config.stashed or {}) do
    local bucket = isApp(id) and app or profile
    if raw == false then bucket[id] = nil else bucket[id] = raw end
    if isApp(id) then appTouched = true else profileTouched = true end
  end
  if Config.stashed then table.clear(Config.stashed) end
  table.clear(dirty)
  table.clear(dirtyBinds)
  stored.app, stored.profile = app, profile
  if appTouched or prefs.profile ~= Config.profileMode then
    fs.writeJson(PREFS, { values = app, binds = bindOut, profile = Config.profileMode })
  end
  if profileTouched then
    fs.writeJson(profilePath(Config.profile), { values = profile, game = game.GameId, saved = os.time() })
  end
  Config.saved:fire()
end
Config.saved = B.Signal.new()
local later = util.debounce(0.6, function() if pending then B.try("config.save", flush) end end)
local function save() pending = true; later() end
function Config.save() save() end
-- write what is waiting now (unload, teleport, a profile switch)
function Config.flush() if pending or next(dirty) or next(dirtyBinds) then B.try("config.flush", flush) end end
function Config.touch(id) dirty[id] = true; save() end
B.onUnload:connect(function() Config.flush() end)

-- Register a flag. Returns its current value (the saved one when there is one).
function Config.define(id, default)
  if defaults[id] ~= nil then return values[id] end
  local ships = decode(shippedValues[id])
  if ships ~= nil and sameType(ships, default) then default = ships end
  defaults[id] = default
  local bucket = isApp(id) and stored.app or stored.profile
  local saved = decode(bucket[id])
  if saved ~= nil and sameType(saved, default) then values[id] = saved else values[id] = default end
  local savedBind = storedBinds[id]
  if savedBind and savedBind.key and not binds[id] then
    binds[id] = { key = savedBind.key, mode = savedBind.mode or "toggle" }
    -- (a switch made after the keys started listening, on a tab built later: its key works at once)
    if Config.reindex then Config.reindex() end
  end
  return values[id]
end
function Config.get(id) return values[id] end
function Config.set(id, value, quiet)
  if defaults[id] == nil then defaults[id] = value end
  local old = values[id]
  if old == value and type(value) ~= "table" then return end
  values[id] = value
  local list = listeners[id]
  if list then
    for _, fn in ipairs(table.clone(list)) do B.try("config." .. id, fn, value, old) end
  end
  if not quiet then
    dirty[id] = true
    Config.changed:fire(id, value)
    save()
  end
end
function Config.reset(id) if defaults[id] ~= nil then Config.set(id, util.copy(defaults[id])) end end
function Config.isDefault(id) return isDefault(id) end
-- fn(value, old) on every change; `now` also calls it once with the current value.
function Config.on(id, fn, now)
  local list = listeners[id]
  if not list then list = {}; listeners[id] = list end
  list[#list + 1] = fn
  if now and values[id] ~= nil then B.try("config." .. id, fn, values[id], nil) end
  return function()
    local at = table.find(list, fn)
    if at then table.remove(list, at) end
  end
end
-- Mirror a set of flags into a plain table that feature loops can read for free:
--   local O = Config.mirror({ enabled = "esp.enabled", range = "esp.range" })
function Config.mirror(map, onChange)
  local out = {}
  for key, id in pairs(map) do
    out[key] = values[id]
    Config.on(id, function(value)
      out[key] = value
      if onChange then onChange(key, value) end
    end)
  end
  return out
end

-- ---------------------------------------------------------------- profiles
Config.profileMode = "global"     -- "global": one config everywhere; "game": one per game
function Config.profiles()
  local out = {}
  for _, file in ipairs(fs.list(fs.path("config"))) do
    local name = string.match(file, "([^/]+)%.json$")
    if name then out[#out + 1] = name end
  end
  if not table.find(out, "default") then table.insert(out, 1, "default") end
  return out
end
local function readProfile(name)
  local data = fs.readJson(profilePath(name))
  return type(data) == "table" and type(data.values) == "table" and data.values or {}
end
function Config.init()
  local prefs = fs.readJson(PREFS)
  if type(prefs) == "table" then
    stored.app = type(prefs.values) == "table" and prefs.values or {}
    storedBinds = type(prefs.binds) == "table" and prefs.binds or {}
    if prefs.profile == "game" then Config.profileMode = "game" end
  else
    -- nothing saved here yet: the keys that ship. Only then, or a key someone cleared would come back.
    storedBinds = shippedBinds
    -- (and the first launch on this machine: the look is picked before the hub opens, src/13_picker)
    Config.firstRun = true
  end
  Config.profile = Config.profileMode == "game" and ("game_" .. tostring(game.GameId)) or "default"
  stored.profile = readProfile(Config.profile)
  -- (a teleport ends this client: what is waiting is written as it starts)
  pcall(function()
    B.connect(B.LP.OnTeleport, function(state)
      if state == Enum.TeleportState.Started or state == Enum.TeleportState.InProgress then Config.flush() end
    end, "config.teleport")
  end)
end
-- Switch to another profile: every feature flag takes the value saved there.
function Config.load(name)
  Config.flush()                          -- (what is waiting belongs to the profile being left)
  Config.profile = name
  stored.profile = readProfile(name)
  for id, default in pairs(defaults) do
    if not isApp(id) then
      local saved = decode(stored.profile[id])
      if saved == nil or not sameType(saved, default) then saved = util.copy(default) end
      Config.set(id, saved, true)
    end
  end
  Config.loaded:fire(name)
  -- (the mode lives in prefs.json)
  local prefs = fs.readJson(PREFS)
  if type(prefs) == "table" and prefs.profile ~= Config.profileMode then
    prefs.profile = Config.profileMode
    fs.writeJson(PREFS, prefs)
  end
end
function Config.saveAs(name)
  name = string.gsub(name, "[^%w_%-]", "")
  if name == "" then return false end
  Config.flush()
  Config.profile = name
  stored.profile = {}
  for id in pairs(defaults) do
    if not isApp(id) then dirty[id] = true end
  end
  save()
  return true
end
function Config.delete(name)
  if name == "default" then return false end
  return fs.remove(profilePath(name))
end
function Config.setMode(mode)
  Config.profileMode = mode
  Config.load(mode == "game" and ("game_" .. tostring(game.GameId)) or "default")
end
function Config.resetAll(includeApp)
  for id, default in pairs(defaults) do
    if includeApp or not isApp(id) then Config.set(id, util.copy(default)) end
  end
end
-- The share code: EVERY setting (the look too: colours, font, menu style, intro) and every key,
-- as "BASED2:" and base64. Pasted in, the other hub becomes this one: what the code has is set,
-- and what it leaves out is put back to its default, so nothing of theirs is left mixed in.
-- (The first version carried feature settings only, and only ones changed from their defaults:
-- a colour, a key, or a setting the other person had changed and this one had not stayed theirs.)
local B64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local function toBase64(data)
  return ((string.gsub(data, ".", function(x)
    local r, byte = "", string.byte(x)
    for i = 8, 1, -1 do r ..= (byte % 2 ^ i - byte % 2 ^ (i - 1) > 0 and "1" or "0") end
    return r
  end) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(x)
    if #x < 6 then return "" end
    local c = 0
    for i = 1, 6 do c += (string.sub(x, i, i) == "1" and 2 ^ (6 - i) or 0) end
    return string.sub(B64, c + 1, c + 1)
  end) .. ({ "", "==", "=" })[#data % 3 + 1])
end
local function fromBase64(data)
  data = string.gsub(data, "[^" .. B64 .. "=]", "")
  return (data:gsub(".", function(x)
    if x == "=" then return "" end
    local r, f = "", (string.find(B64, x, 1, true) - 1)
    for i = 6, 1, -1 do r ..= (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and "1" or "0") end
    return r
  end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(x)
    if #x ~= 8 then return "" end
    local c = 0
    for i = 1, 8 do c += (string.sub(x, i, i) == "1" and 2 ^ (8 - i) or 0) end
    return string.char(c)
  end))
end
Config.toBase64, Config.fromBase64 = toBase64, fromBase64
-- where windows sit is the screen's business, not a setup's
local PLACE = { ["app.window.x"] = true, ["app.window.y"] = true, ["app.unnamed.x"] = true, ["app.unnamed.y"] = true, ["app.keyHudX"] = true, ["app.keyHudY"] = true }
-- (and some things are yours alone: a share code leaves them out, and pasting one leaves yours be)
function Config.unshared(id) PLACE[id] = true end
-- BASED3 (2026-11-14, asked: the share config "always accurate 100% and never bugs and always replicates to the right
-- version or whatever i legit got running"). What was wrong with BASED2, each shown on the live hub or read in the code:
--   * it held only what DIFFERED from the defaults of the hub that made it, and the hub that read it put what was left out
--     to ITS defaults: two builds that ship different defaults did not end up the same;
--   * a setting saved for a tab or a fold-out not opened yet, or for another game, is not defined in the session: it was
--     left out of the code (50 of 261 saved settings, on the owner's own profile), and one in a pasted code was dropped;
--   * setting one setting can write others (a preset, a limit that is unlocked): set once, in table order, what a code
--     held could be overwritten by what another of its settings did;
--   * a switch that arms something the moment it is on (the ragebot, the void) was carried like any other, and the code
--     started it on whoever pasted it (those are kept out now: Config.unshared);
--   * a code cut short in a paste was "not a BASED code", with no word of why.
-- So a code now holds EVERY setting this session knows, with its value as it is running here, and every saved one it does
-- not know, as it is on disk; it is packed (LZW), with its length and a checksum in front, and the build that made it.
-- Reading one: every setting it has is set, twice over (the second pass puts right what the first one's side effects
-- moved) and then checked; what it has that this session does not know is kept on disk for the tab or the game that
-- does; what this hub has saved that the code does not is taken away. BASED2 codes and plain JSON still read.
local function pack(text)
  local dict, size = {}, 256
  for index = 0, 255 do dict[string.char(index)] = index end
  local out, word = {}, ""
  for index = 1, #text do
    local char = string.sub(text, index, index)
    local longer = word .. char
    if dict[longer] then
      word = longer
    else
      local code = dict[word]
      out[#out + 1] = string.char(math.floor(code / 256), code % 256)
      if size < 65535 then
        dict[longer] = size
        size += 1
      end
      word = char
    end
  end
  if word ~= "" then
    local code = dict[word]
    out[#out + 1] = string.char(math.floor(code / 256), code % 256)
  end
  return table.concat(out)
end
local function unpack(data)
  if #data % 2 ~= 0 then return nil end
  local dict, size = {}, 256
  for index = 0, 255 do dict[index] = string.char(index) end
  local out, before = {}, nil
  for index = 1, #data, 2 do
    local code = string.byte(data, index) * 256 + string.byte(data, index + 1)
    local entry = dict[code]
    if not entry then
      if code == size and before then entry = before .. string.sub(before, 1, 1) else return nil end
    end
    out[#out + 1] = entry
    if before and size < 65535 then
      dict[size] = before .. string.sub(entry, 1, 1)
      size += 1
    end
    before = entry
  end
  return table.concat(out)
end
-- (Adler-32, as eight hex digits)
local function checksum(text)
  local a, b = 1, 0
  for index = 1, #text do
    a = (a + string.byte(text, index)) % 65521
    b = (b + a) % 65521
  end
  return string.format("%04x%04x", b, a)
end
Config.pack, Config.unpack, Config.checksum = pack, unpack, checksum
-- Settings this session does not know (a tab not opened yet, another game's): what they are to be on disk, until they are
-- defined. raw: as a file holds it (nil: none).
local stashed = {}
Config.stashed = stashed
function Config.stash(id, raw)
  local bucket = isApp(id) and stored.app or stored.profile
  bucket[id] = raw
  if raw == nil then stashed[id] = false else stashed[id] = raw end
  save()
end
function Config.export()
  local out, more, keys = {}, {}, {}
  for id, value in pairs(values) do
    if not PLACE[id] and defaults[id] ~= nil then out[id] = encode(value) end
  end
  for _, bucket in ipairs({ stored.app, stored.profile }) do
    for id, raw in pairs(bucket) do
      if defaults[id] == nil and not PLACE[id] and type(id) == "string" then more[id] = raw end
    end
  end
  for id, bind in pairs(binds) do
    if bind.key then keys[id] = { key = bind.key, mode = bind.mode } end
  end
  local ok, json = pcall(S.HttpService.JSONEncode, S.HttpService, { based = 3, build = tostring(B.BUILD or ""), values = out, more = more, binds = keys, full = true })
  if not ok then return nil end
  local body = toBase64(pack(json))
  local code = string.format("BASED3:%d:%s:%s", #body, checksum(json), body)
  -- (never handed out without having been read back: what it says is what a paste of it will say)
  local back = Config.read(code)
  if type(back) ~= "table" then return nil end
  return code
end
-- What a code holds, as a table; or nil and why it could not be read.
function Config.read(text)
  text = tostring(text or "")
  local length, sum, body = string.match(text, "BASED3:(%d+):(%x+):([%w%+/=%s]+)")
  local json
  if body then
    body = string.gsub(body, "%s", "")
    if #body < tonumber(length) then return nil, "The code is cut short: " .. #body .. " of " .. length .. " characters came. Copy all of it." end
    body = string.sub(body, 1, tonumber(length))
    json = unpack(fromBase64(body))
    if not json or checksum(json) ~= string.lower(sum) then return nil, "The code is damaged: it does not add up. Copy it again." end
  else
    local coded = string.match(text, "BASED2:(%S+)")
    json = coded and fromBase64(coded) or text
  end
  local ok, data = pcall(S.HttpService.JSONDecode, S.HttpService, json)
  if not ok or type(data) ~= "table" or type(data.values) ~= "table" then return nil, "That text is not a BASED code." end
  return data
end
-- Returns: read (true / false), how many settings and keys were set, and a line about it (why not, or what was kept for later).
function Config.import(text)
  local data, why = Config.read(text)
  if not data then return false, 0, why end
  local count, later, wrong = 0, 0, 0
  local full = data.full == true
  -- what a full code does not have is put back to its default here (an old code holds changed feature settings only:
  -- those alone are set)
  if full then
    for id, default in pairs(defaults) do
      if data.values[id] == nil and not PLACE[id] and not isDefault(id) then Config.set(id, util.copy(default)) end
    end
  end
  local function fits(id, value)
    local default = defaults[id]
    return default ~= nil and value ~= nil and sameType(value, default) and not PLACE[id] and (full or not isApp(id))
  end
  -- twice: a setting's own listeners can write other settings (a preset, a limit unlocked), and the second pass puts
  -- back whatever the first one's moved
  for pass = 1, 2 do
    for id, raw in pairs(data.values) do
      local value = decode(raw)
      if fits(id, value) then
        Config.set(id, value)
        if pass == 1 then count += 1 end
      end
    end
  end
  -- and checked: what is running now is what the code says
  for id, raw in pairs(data.values) do
    local value = decode(raw)
    if fits(id, value) then
      local now = values[id]
      local same = now == value
      if type(value) == "table" and type(now) == "table" then
        same = true
        for k, v in pairs(value) do if type(v) ~= "table" and now[k] ~= v then same = false end end
        for k, v in pairs(now) do if type(v) ~= "table" and value[k] ~= v then same = false end end
      end
      if not same then wrong += 1 end
    end
  end
  -- what the code has that this session does not know: kept on disk, for the tab or the game that does
  if full then
    local theirs = {}
    for _, set in ipairs({ data.values, type(data.more) == "table" and data.more or {} }) do
      for id, raw in pairs(set) do
        if type(id) == "string" and defaults[id] == nil and not PLACE[id] then
          theirs[id] = true
          Config.stash(id, raw)
          later += 1
        end
      end
    end
    -- and what this hub has saved that the code does not have: nothing of it is left mixed in
    for _, bucket in ipairs({ stored.app, stored.profile }) do
      for id in pairs(table.clone(bucket)) do
        if type(id) == "string" and defaults[id] == nil and not PLACE[id] and not theirs[id] then Config.stash(id, nil) end
      end
    end
  end
  if type(data.binds) == "table" then
    for id in pairs(table.clone(binds)) do
      if data.binds[id] == nil then Config.bind(id, nil) end
    end
    for id, bind in pairs(data.binds) do
      if type(bind) == "table" and type(bind.key) == "string" then Config.bind(id, bind.key, bind.mode == "hold" and "hold" or "toggle"); count += 1 end
    end
  end
  local note = nil
  if wrong > 0 then note = wrong .. " settings would not take the code's value."
  elseif later > 0 then note = later .. " more are kept for tabs and games not open here." end
  return true, count, note
end

-- ---------------------------------------------------------------- keybinds
local byKey = {}
local function keyName(input)
  if input.UserInputType == Enum.UserInputType.Keyboard then return input.KeyCode.Name end
  if input.UserInputType == Enum.UserInputType.MouseButton2 then return "MouseButton2" end
  if input.UserInputType == Enum.UserInputType.MouseButton3 then return "MouseButton3" end
  return nil
end
Config.keyName = keyName
local function reindex()
  table.clear(byKey)
  for id, bind in pairs(binds) do
    if bind.key then
      local list = byKey[bind.key]
      if not list then list = {}; byKey[bind.key] = list end
      list[#list + 1] = id
    end
  end
end
Config.reindex = reindex
Config.bindsChanged = B.Signal.new()
function Config.bind(id, key, mode)
  if not key then binds[id] = nil else binds[id] = { key = key, mode = mode or (binds[id] and binds[id].mode) or "toggle" } end
  reindex()
  dirtyBinds[id] = true
  Config.bindsChanged:fire(id)
  save()
end
function Config.bindOf(id) return binds[id] end
-- A button that can be bound (an emote, mark the one looked at...). Its saved key comes back here:
-- before, only switches took theirs back (in define), and every key on a button was lost on rejoin.
function Config.action(id, fn)
  actions[id] = fn
  local savedBind = storedBinds[id]
  if savedBind and savedBind.key and not binds[id] then
    binds[id] = { key = savedBind.key, mode = savedBind.mode or "toggle" }
    reindex()
    Config.bindsChanged:fire(id)
  end
end
function Config.isAction(id) return actions[id] ~= nil end
-- press a button by its id (a planner, a preset or a test presses the same thing the player would)
function Config.run(id)
  local fn = actions[id]
  if not fn then return false end
  B.try("action." .. id, fn)
  return true
end
-- Whether a button's work is going on, for the key list to light it like a switch that is on: its
-- own say if it has one (an emote: while it plays), else for a moment after its key was pressed.
local actionStates = {}
Config.ranAt = {}
Config.actionRan = B.Signal.new()
function Config.actionState(id, fn) actionStates[id] = fn end
function Config.isActive(id)
  local state = actionStates[id]
  if state then
    local ok, on = pcall(state)
    if ok and on then return true end
    if ok and on == false then return false end
  end
  local at = Config.ranAt[id]
  return at ~= nil and os.clock() - at < 0.6
end
local SHORT = { LeftControl = "LCtrl", RightControl = "RCtrl", LeftShift = "LShift", RightShift = "RShift", LeftAlt = "LAlt", RightAlt = "RAlt",
  MouseButton2 = "RMB", MouseButton3 = "MMB", Return = "Enter", Backspace = "Bksp", CapsLock = "Caps", Escape = "Esc", Delete = "Del",
  Insert = "Ins", PageUp = "PgUp", PageDown = "PgDn", Semicolon = ";", Quote = "'", Comma = ",", Period = ".", Slash = "/", BackSlash = "\\",
  LeftBracket = "[", RightBracket = "]", Minus = "-", Equals = "=", Backquote = "`", Space = "Space", Unknown = "None",
  One = "1", Two = "2", Three = "3", Four = "4", Five = "5", Six = "6", Seven = "7", Eight = "8", Nine = "9", Zero = "0" }
function Config.keyLabel(key)
  if not key then return "None" end
  return SHORT[key] or (string.gsub(key, "^Keypad", "Num"))
end
Config.capturing = false   -- true while a keybind control is listening for a key
-- A switch can have a quick panel: its key tapped flips it as always, its key HELD (0.3 s) opens the
-- panel instead and letting go closes it (the ragebot's: who to hunt). { open = fn, close = fn }
Config.holdPanels = {}
local held = {}
local HOLD = 0.3

function Config.listen()
  reindex()
  B.connect(UIS.InputBegan, function(input, processed)
    if Config.capturing then return end
    local key = keyName(input)
    if not key then return end
    if input.UserInputType == Enum.UserInputType.Keyboard then
      if UIS:GetFocusedTextBox() then return end
    elseif processed then
      return
    end
    local list = byKey[key]
    if not list then return end
    for _, id in ipairs(list) do
      local bind = binds[id]
      local panel = Config.holdPanels[id]
      if actions[id] then
        B.try("bind." .. id, actions[id])
        Config.ranAt[id] = os.clock()
        Config.actionRan:fire(id)
      elseif type(values[id]) == "boolean" and panel and bind.mode ~= "hold" then
        -- (decided when it is let go: a tap flips it, a hold opened the panel)
        local mine = { at = os.clock(), key = key }
        held[id] = mine
        task.delay(HOLD, function()
          if held[id] == mine and Config.keyDown(key) then
            mine.opened = true
            B.try("hold." .. id, panel.open, key)
          end
        end)
      elseif type(values[id]) == "boolean" then
        if bind.mode == "hold" then Config.set(id, true) else Config.set(id, not values[id]) end
      end
    end
  end, "keybinds")
  B.connect(UIS.InputEnded, function(input)
    local key = keyName(input)
    local list = key and byKey[key]
    if not list then return end
    for _, id in ipairs(list) do
      local bind = binds[id]
      local press = held[id]
      if press and press.key == key then
        held[id] = nil
        if press.opened then
          local panel = Config.holdPanels[id]
          if panel and panel.close then B.try("hold.close." .. id, panel.close) end
        elseif type(values[id]) == "boolean" then
          Config.set(id, not values[id])
        end
      elseif bind.mode == "hold" and type(values[id]) == "boolean" and not actions[id] then
        Config.set(id, false)
      end
    end
  end, "keybinds")
end
-- true while the key bound to `id` (or `key`) is physically down
function Config.keyDown(key)
  if not key then return false end
  if key == "MouseButton2" then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) end
  if key == "MouseButton3" then return UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton3) end
  local ok, code = pcall(function() return Enum.KeyCode[key] end)
  return ok and code ~= nil and UIS:IsKeyDown(code)
end
end
do -- 06_controls.lua
-- ============================================================================
--  06 controls  rows and the things on their right-hand side
--
--  A control is a row inside a card: label (and description) on the left, the
--  control on the right. Every control is backed by a Config flag, so it saves,
--  reloads with a profile, can be reset from its context menu and, for toggles
--  and buttons, bound to a key.
-- ============================================================================
local S, util, Motion, Theme, T, UI, Config = B.S, B.util, B.Motion, B.Theme, B.T, B.UI, B.Config
local UIS = S.UserInputService
-- (2026-11-16, a player's clip: switches drawn ON that would not turn off. `id and Config.define(...) or default` falls
-- through to the default when the saved value is false: a switch that ships on and was saved off was drawn on, and a
-- click asked for "off", which it already was, so nothing moved. These two never fall through.)
local function initial(id, default)
  if id then return Config.define(id, default) end
  return default
end
local function orDefault(value, fallback)
  if value ~= nil then return value end
  return fallback
end
local Controls = { bindables = {} }   -- bindables: flag id -> { label, kind, page }, everything a key can be given
B.Controls = Controls

-- ---------------------------------------------------------------- key capture
function Controls.captureKey(done)
  if Config.capturing then return end
  Config.capturing = true
  local connection
  connection = UIS.InputBegan:Connect(function(input)
    local key = Config.keyName(input)
    if not key then return end
    connection:Disconnect()
    -- the press that sets a key must not also fire the bind it just made
    task.delay(0.15, function() Config.capturing = false end)
    if key == "Escape" then B.try("capture", done, nil, true)
    elseif key == "Backspace" or key == "Delete" then B.try("capture", done, nil, false)
    else B.try("capture", done, key, false) end
  end)
  B.own(connection)
end

-- ---------------------------------------------------------------- row
-- section: { body = Frame, count = number, index = function(entry) }
local function makeRow(section, spec, controlWidth)
  section.count = (section.count or 0) + 1
  local row = UI.frame(section.body, { Name = spec.label or "Row", Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
    LayoutOrder = section.count })
  if section.count > 1 then
    UI.frame(row, { Name = "Rule", Size = UDim2.new(1, -28, 0, 1), Position = UDim2.fromOffset(14, 0),
      Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "strokeA" } })
  end
  local wash = UI.frame(row, { Name = "Wash", Size = UDim2.new(1, -8, 1, -6), Position = UDim2.fromOffset(4, 3), Theme = { BackgroundColor3 = "ink" },
    BackgroundTransparency = 1, ZIndex = 0 })
  UI.corner(wash, "rSmall")
  local left = UI.frame(row, { Name = "Left", Size = UDim2.new(1, -((controlWidth or 150) + 30), 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
    Position = UDim2.fromOffset(0, 0) })
  UI.pad(left, 12, 0, 12, spec.icon and 42 or 14)
  UI.list(left, "y", 2)
  if spec.icon then
    UI.icon(row, spec.icon, 17, "sub", { Position = UDim2.fromOffset(14, 13), Name = "Icon" })
  end
  local titleLine = UI.frame(left, { Size = UDim2.new(1, 0, 0, 20), LayoutOrder = 1 })
  UI.list(titleLine, "x", 7, { v = "Center" })
  local label = UI.text(titleLine, spec.label or "", "label", "ink", { TextTruncate = Enum.TextTruncate.AtEnd, LayoutOrder = 1,
    AutomaticSize = Enum.AutomaticSize.X, Size = UDim2.fromOffset(0, 20) })
  if spec.badge then UI.badge(titleLine, spec.badge, spec.badgeColor, { LayoutOrder = 2 }) end
  if spec.desc and spec.desc ~= "" then
    UI.text(left, spec.desc, "caption", "sub", { TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Size = UDim2.new(1, 0, 0, 0),
      LayoutOrder = 2, LineHeight = 1.15 })
  end
  local slot = UI.frame(row, { Name = "Slot", AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -14, 0, 0), Size = UDim2.fromOffset(0, 44),
    AutomaticSize = Enum.AutomaticSize.X, ZIndex = 6 })
  UI.list(slot, "x", 8, { h = "Right", v = "Center" })
  local api = { frame = row, left = left, slot = slot, label = label, wash = wash }
  -- (what it does, on hover: the tip of a control with no line of its own under its name)
  if spec.tip and spec.tip ~= "" then UI.tooltip(row, spec.tip, spec.label) end
  function api.hover(on) Motion.to(wash, "BackgroundTransparency", on and 0.965 or 1, "quick") end
  function api.flash()
    wash.BackgroundTransparency = 0.86
    Theme.unbind(wash, "BackgroundColor3")
    wash.BackgroundColor3 = T.accent
    Motion.to(wash, "BackgroundTransparency", 1, "lazy", function() Theme.bind(wash, "BackgroundColor3", "ink") end)
  end
  if section.index then
    section.index({ label = spec.label or "", desc = spec.desc or "", row = api, id = spec.id })
  end
  return api
end
Controls.row = makeRow

-- the small chip showing which key a flag is bound to
local function bindChip(slot, id, order)
  local chip = UI.frame(slot, { Name = "Bind", Size = UDim2.fromOffset(0, 20), AutomaticSize = Enum.AutomaticSize.X, LayoutOrder = order or 1,
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" }, Visible = false })
  UI.corner(chip, 6)
  UI.pad(chip, 0, 6)
  local text = UI.text(chip, "", "mono", "sub", { TextSize = 11, Size = UDim2.fromScale(0, 1), AutomaticSize = Enum.AutomaticSize.X })
  local function refresh()
    local bind = Config.bindOf(id)
    chip.Visible = bind ~= nil and bind.key ~= nil
    if bind and bind.key then text.Text = Config.keyLabel(bind.key) .. (bind.mode == "hold" and " ·hold" or "") end
  end
  Config.bindsChanged:connect(function(changed) if changed == id and chip.Parent then refresh() end end)
  refresh()
  return chip
end

local function contextMenu(anchor, spec, extra)
  local items = {}
  local id = spec.id
  if id then
    items[#items + 1] = { label = "Reset to default", icon = "rotate-ccw", run = function() Config.reset(id) end }
  end
  if spec.bindable and id then
    local bind = Config.bindOf(id)
    items[#items + 1] = { label = bind and "Change key…" or "Bind to a key…", icon = "keyboard", run = function()
      B.Window.toast({ title = "Press a key", text = "Esc cancels · Backspace clears", icon = "keyboard", time = 2.2 })
      Controls.captureKey(function(key, cancelled)
        if cancelled then return end
        Config.bind(id, key)
        B.Window.toast({ title = key and ("Bound to " .. Config.keyLabel(key)) or "Key cleared", text = spec.label, icon = "keyboard" })
      end)
    end }
    if bind then
      if spec.kind == "toggle" then
        items[#items + 1] = { label = "Hold to activate", icon = "hand", checked = bind.mode == "hold", run = function()
          Config.bind(id, bind.key, bind.mode == "hold" and "toggle" or "hold")
        end }
      end
      items[#items + 1] = { label = "Clear key", icon = "x", run = function() Config.bind(id, nil) end }
    end
  end
  if extra then
    for _, item in ipairs(extra) do items[#items + 1] = item end
  end
  if #items > 0 then UI.menu(anchor, items, { align = "right" }) end
end

-- ---------------------------------------------------------------- toggle
function Controls.toggle(section, spec)
  spec.kind = "toggle"
  spec.bindable = spec.bindable ~= false
  local id = spec.id
  local value = initial(id, spec.default == true)
  local row = makeRow(section, spec, spec.children and 92 or 62)
  if id and spec.bindable then
    bindChip(row.slot, id, 1)
    Controls.bindables[id] = { label = spec.label or id, kind = "toggle", page = section.page }
  end

  local track = UI.frame(row.slot, { Name = "Switch", Size = UDim2.fromOffset(42, 24), LayoutOrder = 3, BackgroundTransparency = 0 })
  UI.corner(track, true)
  local knob = UI.frame(track, { Name = "Knob", Size = UDim2.fromOffset(18, 18), Position = UDim2.new(0, 3, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5),
    BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0 })
  UI.corner(knob, true)
  if UI.fx.shadow then
    local shadow = Instance.new("UIShadow")
    shadow.BlurRadius = UDim.new(0, 5); shadow.Offset = UDim2.fromOffset(0, 1); shadow.Transparency = 0.7
    shadow.Parent = knob
  end
  local pressed = false
  local function paint(instant)
    local on = value
    local color = on and T.accent or T.ink
    local alpha = on and 0 or T.fill3A - 0.05
    local width = pressed and 23 or 18
    local x = on and (42 - 3 - width) or 3
    if instant then
      track.BackgroundColor3, track.BackgroundTransparency = color, alpha
      Motion.snap(knob, "Position", UDim2.new(0, x, 0.5, 0)); Motion.snap(knob, "Size", UDim2.fromOffset(width, 18))
    else
      Motion.to(track, "BackgroundColor3", color, "quick")
      Motion.to(track, "BackgroundTransparency", alpha, "quick")
      Motion.to(knob, "Position", UDim2.new(0, x, 0.5, 0), pressed and "quick" or "bouncy")
      Motion.to(knob, "Size", UDim2.fromOffset(width, 18), "snappy")
    end
  end
  paint(true)
  Theme.changed:connect(function() if track.Parent then paint(true) end end)

  local api = { row = row, id = id }
  function api.get() return value end
  -- what it is: the setting itself, not this switch's own copy (the two had come apart: drawn on, saved off)
  local function now()
    if id then return Config.get(id) == true end
    return value
  end
  function api.set(next, quiet)
    next = next == true
    if id and Config.get(id) == next then
      -- (already so: the switch is drawn as it is, if it was not)
      if value ~= next then value = next; paint() end
      return
    end
    if next == value and not id then return end
    if id then Config.set(id, next, quiet) else
      value = next
      paint()
      if spec.changed then B.try("toggle", spec.changed, value) end
    end
  end
  if id then
    Config.on(id, function(next)
      value = next == true
      if track.Parent then paint() end
      if spec.changed then spec.changed(value) end
    end)
    if spec.changed and value then task.defer(B.safe("toggle.init", function() spec.changed(value) end)) end
  end

  -- nested options that only matter when the toggle is on
  local sub
  if spec.children then
    local chevron = UI.frame(row.slot, { Name = "More", Size = UDim2.fromOffset(22, 22), LayoutOrder = 2 })
    local icon = UI.icon(chevron, "chevron-down", 15, "faint", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
    local holder = UI.frame(section.body, { Name = "Sub", Size = UDim2.new(1, 0, 0, 0), ClipsDescendants = true, LayoutOrder = section.count })
    section.count += 1
    holder.LayoutOrder = section.count
    local inner = UI.frame(holder, { Name = "Inner", Size = UDim2.new(1, -18, 0, 0), Position = UDim2.fromOffset(18, 0), AutomaticSize = Enum.AutomaticSize.Y })
    UI.list(inner, "y", 0)
    UI.frame(holder, { Name = "Guide", Size = UDim2.new(0, 1, 1, -12), Position = UDim2.fromOffset(22, 2),
      Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "strokeA" } })
    sub = { body = inner, count = 0, index = section.index, page = section.page, nested = true }
    local open = false
    local built = false
    local function size(instant)
      local h = open and (inner.AbsoluteSize.Y / UI.unit()) or 0
      if instant then Motion.snap(holder, "Size", UDim2.new(1, 0, 0, h)) else Motion.to(holder, "Size", UDim2.new(1, 0, 0, h), "smooth") end
      Motion.to(icon, "Rotation", open and 180 or 0, "snappy")
    end
    local function setOpen(next)
      open = next
      if open and not built then
        built = true
        B.try("toggle.children", spec.children, B.Window.sectionApi(sub))
      end
      size()
    end
    inner:GetPropertyChangedSignal("AbsoluteSize"):Connect(function() if open then size(true) end end)
    UI.button(chevron, {
      hover = function(on) Theme.bind(icon, "ImageColor3", on and "ink" or "faint") end,
      click = function() UI.sfx("click", 0.5); setOpen(not open) end,
    })
    api.open = setOpen
  end

  UI.button(row.frame, {
    hover = row.hover,
    press = function(on) pressed = on; paint() end,
    click = function()
      local on = now()
      UI.sfx(on and "toggle_off" or "toggle_on", 0.7)
      api.set(not on)
    end,
    alt = function() contextMenu(track, spec) end,
  })
  return api
end

-- ---------------------------------------------------------------- slider
function Controls.slider(section, spec)
  local id = spec.id
  local min, max, step = spec.min or 0, spec.max or 100, spec.step or 1
  -- (2026-11-11) hardMin / hardMax: how far a TYPED number may go when that is past the ends of the track. The knob keeps
  -- to min..max; a number past an end is drawn with the knob at that end and the figure in the warning colour.
  local hardMin, hardMax = spec.hardMin or min, spec.hardMax or max
  -- (2026-11-14: as many decimals as the step has. It was the step's order of size, so a step of 0.25 had one: 0.25 was
  -- written back as 0.2 and 0.75 as 0.8, and the setting could not hold the values its own track stops at)
  local decimals = spec.decimals
  if not decimals then
    decimals = 4
    for places = 0, 4 do
      local scaled = step * 10 ^ places
      if math.abs(scaled - math.floor(scaled + 0.5)) < 1e-6 then decimals = places; break end
    end
  end
  -- curve: 1 is a straight track. Above 1 the low end of the range gets most of it
  -- (value = min + t ^ curve * span), for a range too wide to set by hand otherwise.
  local curve = spec.curve or 1
  local wide = spec.valueWidth or 64
  local value = initial(id, spec.default or min)
  local row = makeRow(section, spec, wide + 12)
  row.frame.Name = "Slider"
  local suffix = spec.suffix or ""
  local function text(v) return (spec.format and spec.format(v)) or (util.format(v, decimals) .. suffix) end

  local field = UI.new("TextBox", { Name = "Value", Size = UDim2.fromOffset(wide, 24), BackgroundTransparency = 1, Text = text(value), FontFace = B.F.mono400,
    TextSize = 12, TextXAlignment = Enum.TextXAlignment.Right, ClearTextOnFocus = true, LayoutOrder = 2, Theme = { TextColor3 = "sub" },
    PlaceholderText = "", Parent = row.slot })

  -- the track sits under the label, the full width of the row
  local bar = UI.frame(row.left, { Name = "Bar", Size = UDim2.new(1, 0, 0, 20), LayoutOrder = 5 })
  row.left.Size = UDim2.new(1, 0, 0, 0)
  UI.pad(bar, 0, 14, 0, 0)
  local track = UI.frame(bar, { Name = "Track", Size = UDim2.new(1, 0, 0, 4), Position = UDim2.new(0, 0, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5),
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill3A" } })
  UI.corner(track, true)
  local fill = UI.frame(track, { Name = "Fill", Size = UDim2.fromScale(0, 1), Theme = { BackgroundColor3 = "accent" }, BackgroundTransparency = 0 })
  UI.corner(fill, true)
  local knob = UI.frame(track, { Name = "Knob", Size = UDim2.fromOffset(14, 14), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0, 0.5),
    BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0, ZIndex = 3 })
  UI.corner(knob, true)
  if UI.fx.shadow then
    local shadow = Instance.new("UIShadow")
    shadow.BlurRadius = UDim.new(0, 6); shadow.Offset = UDim2.fromOffset(0, 1); shadow.Transparency = 0.62
    shadow.Parent = knob
  end

  local dragging = false
  local past = false
  local function place(instant)
    local alpha = util.clamp01((value - min) / math.max(max - min, 1e-9)) ^ (1 / curve)
    if instant then
      Motion.snap(fill, "Size", UDim2.fromScale(alpha, 1)); Motion.snap(knob, "Position", UDim2.fromScale(alpha, 0.5))
    else
      Motion.to(fill, "Size", UDim2.fromScale(alpha, 1), "quick"); Motion.to(knob, "Position", UDim2.fromScale(alpha, 0.5), "quick")
    end
    if not field:IsFocused() then field.Text = text(value) end
    local now = value < min - 1e-9 or value > max + 1e-9
    if now ~= past then
      past = now
      if not field:IsFocused() then Theme.bind(field, "TextColor3", past and "warn" or "sub") end
    end
  end
  place(true)

  local api = { row = row, id = id }
  function api.get() return value end
  -- typed: a number written into the box, which may go as far as hardMin..hardMax
  function api.set(next, quiet, typed)
    next = math.clamp(util.round(next, step), typed and math.min(hardMin, min) or min, typed and math.max(hardMax, max) or max)
    if decimals > 0 then next = tonumber(string.format("%." .. decimals .. "f", next)) or next end
    if next == value then return end
    if id then Config.set(id, next, quiet) else
      value = next; place()
      if spec.changed then B.try("slider", spec.changed, value) end
    end
  end
  if id then
    Config.on(id, function(next)
      value = next
      if track.Parent then place(dragging) end
      if spec.changed then spec.changed(value) end
    end)
    if spec.changed then task.defer(B.safe("slider.init", function() spec.changed(value) end)) end
  end
  -- the track's ends, and how far a typed number may go, changed while it is up (the Resolver tab's Unlock limits)
  function api.range(low, high, hardLow, hardHigh)
    min, max = low, high
    hardMin, hardMax = hardLow or low, hardHigh or high
    if track.Parent then place(true) end
  end

  local hit = UI.new("TextButton", { Name = "Hit", Text = "", BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.new(1, 14, 1, 0),
    Position = UDim2.fromOffset(-7, 0), ZIndex = 6, Parent = bar })
  local function at(point)
    local x = track.AbsolutePosition.X
    local w = math.max(1, track.AbsoluteSize.X)
    api.set(min + util.clamp01((point.X - x) / w) ^ curve * (max - min))
  end
  UI.drag(hit, function(point)
    dragging = true
    Motion.to(knob, "Size", UDim2.fromOffset(20, 16), "snappy")
    at(point)
  end, function(point) at(point) end, function()
    dragging = false
    Motion.to(knob, "Size", UDim2.fromOffset(14, 14), "bouncy")
    UI.sfx("click", 0.35)
  end)
  hit.MouseEnter:Connect(function() if not dragging then Motion.to(knob, "Size", UDim2.fromOffset(16, 16), "quick") end; row.hover(true) end)
  hit.MouseLeave:Connect(function() if not dragging then Motion.to(knob, "Size", UDim2.fromOffset(14, 14), "quick") end; row.hover(false) end)
  hit.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 then contextMenu(knob, spec) end
  end)
  field.FocusLost:Connect(B.safe("slider.field", function()
    local typed = tonumber((string.gsub(field.Text, "[^%d%.%-]", "")))
    if typed then api.set(typed, nil, true) end
    field.Text = text(value)
    Theme.bind(field, "TextColor3", past and "warn" or "sub")
  end))
  field.Focused:Connect(function() Theme.bind(field, "TextColor3", "ink") end)
  return api
end

-- ---------------------------------------------------------------- dropdown / multi-select
local function optionList(options)
  local out = {}
  for _, option in ipairs(options) do
    if type(option) == "table" then out[#out + 1] = { value = option.value or option[1], label = option.label or option[2] or tostring(option.value or option[1]), icon = option.icon }
    else out[#out + 1] = { value = option, label = tostring(option) } end
  end
  return out
end
local function pill(slot, order)
  local button = UI.pressable(slot, { Name = "Select", Size = UDim2.fromOffset(0, 28), AutomaticSize = Enum.AutomaticSize.X, LayoutOrder = order or 3,
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" } })
  UI.corner(button, "rSmall")
  UI.pad(button, 0, 9, 0, 11)
  UI.list(button, "x", 6, { v = "Center" })
  local label = UI.text(button, "", "label", "ink", { TextSize = 13, LayoutOrder = 1, TextTruncate = Enum.TextTruncate.AtEnd })
  local limit = Instance.new("UISizeConstraint"); limit.MaxSize = Vector2.new(132, 28); limit.Parent = label
  local chevron = UI.icon(button, "chevrons-up-down", 13, "faint", { LayoutOrder = 2 })
  return button, label, chevron
end

function Controls.dropdown(section, spec)
  local id = spec.id
  local options = optionList(spec.options)
  local value = initial(id, orDefault(spec.default, options[1].value))
  local row = makeRow(section, spec, 150)
  local button, label = pill(row.slot)
  local function labelOf(v)
    for _, option in ipairs(options) do if option.value == v then return option.label end end
    return tostring(v)
  end
  label.Text = labelOf(value)
  local api = { row = row, id = id }
  function api.get() return value end
  function api.set(next, quiet)
    if next == value then return end
    if id then Config.set(id, next, quiet) else
      value = next; label.Text = labelOf(value)
      if spec.changed then B.try("dropdown", spec.changed, value) end
    end
  end
  function api.options(list)
    options = optionList(list)
    label.Text = labelOf(value)
  end
  if id then
    Config.on(id, function(next)
      value = next
      if label.Parent then label.Text = labelOf(value) end
      if spec.changed then spec.changed(value) end
    end)
    if spec.changed then task.defer(B.safe("dropdown.init", function() spec.changed(value) end)) end
  end
  local function open()
    local items = {}
    for _, option in ipairs(options) do
      items[#items + 1] = { label = option.label, icon = option.icon, checked = option.value == value, run = function() api.set(option.value) end }
    end
    UI.menu(button, items, { align = "right", width = spec.menuWidth })
  end
  UI.wire(button, {
    hover = function(on) Motion.to(button, "BackgroundTransparency", on and T.fill3A or T.fill2A, "quick"); row.hover(on) end,
    click = function() UI.sfx("click", 0.6); open() end,
    alt = function() contextMenu(button, spec) end,
  })
  return api
end

-- value is a set stored as an array of the selected option values
function Controls.multi(section, spec)
  local id = spec.id
  local options = optionList(spec.options)
  local value = initial(id, spec.default or {})
  local row = makeRow(section, spec, 150)
  local button, label = pill(row.slot)
  local function has(v) return table.find(value, v) ~= nil end
  local function summary()
    if #value == 0 then return spec.empty or "None" end
    if #value == #options then return "All" end
    if #value <= 2 then
      local names = {}
      for _, option in ipairs(options) do if has(option.value) then names[#names + 1] = option.label end end
      return table.concat(names, ", ")
    end
    return #value .. " selected"
  end
  label.Text = summary()
  local api = { row = row, id = id }
  function api.get() return value end
  function api.has(v) return has(v) end
  function api.set(next, quiet)
    if id then Config.set(id, next, quiet) else
      value = next; label.Text = summary()
      if spec.changed then B.try("multi", spec.changed, value) end
    end
  end
  if id then
    Config.on(id, function(next)
      value = next
      if label.Parent then label.Text = summary() end
      if spec.changed then spec.changed(value) end
    end)
    if spec.changed then task.defer(B.safe("multi.init", function() spec.changed(value) end)) end
  end
  local function flip(v)
    local next = table.clone(value)
    local at = table.find(next, v)
    if at then table.remove(next, at) else next[#next + 1] = v end
    -- keep option order, so two identical selections compare equal
    local ordered = {}
    for _, option in ipairs(options) do if table.find(next, option.value) then ordered[#ordered + 1] = option.value end end
    api.set(ordered)
  end
  local function open()
    UI.popover(button, { width = spec.menuWidth or 212, align = "right" }, function(content)
      local checks = {}
      local function refresh()
        for v, icon in pairs(checks) do icon.ImageTransparency = has(v) and 0 or 1 end
      end
      -- A long list (2026-11-13: forty fruits ran off the top and the bottom of the screen and could not be
      -- scrolled) keeps to a height that fits any screen and scrolls inside it, with a box to type a few
      -- letters into; All and None stay in view under it.
      local rows = content
      local limit = math.max(4, math.min(spec.rows or 9, math.floor((B.viewport().Y / (UI.overlayScale and UI.overlayScale() or 1) - 150) / 34)))
      local long = #options > limit
      local entries, find = {}, nil
      if long then
        local bar = UI.frame(content, { Name = "Find", Size = UDim2.new(1, 0, 0, 30), LayoutOrder = -2, Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill3A" } })
        UI.corner(bar, "rSmall")
        find = UI.new("TextBox", { Name = "Query", BackgroundTransparency = 1, Size = UDim2.new(1, -20, 1, 0), Position = UDim2.fromOffset(10, 0), Text = "",
          PlaceholderText = "Type to find", FontFace = B.F.text400, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left, ClearTextOnFocus = false, ClipsDescendants = true,
          Theme = { TextColor3 = "ink", PlaceholderColor3 = "faint" }, Parent = bar })
        local holder = UI.frame(content, { Name = "Long", Size = UDim2.new(1, 0, 0, limit * 34 - 2), LayoutOrder = -1 })
        local scroller = UI.scroll(holder, { Size = UDim2.fromScale(1, 1), Name = "Scroll" })
        rows = UI.frame(scroller, { Name = "Rows", Size = UDim2.new(1, -9, 0, 0), AutomaticSize = Enum.AutomaticSize.Y })
        UI.list(rows, "y", 2)
      end
      for index, option in ipairs(options) do
        local item = UI.frame(rows, { Size = UDim2.new(1, 0, 0, 32), LayoutOrder = index, Theme = { BackgroundColor3 = "ink" } })
        entries[index] = { frame = item, words = string.lower(tostring(option.label)) }
        UI.corner(item, "rSmall")
        local x = 10
        if option.icon then
          UI.icon(item, option.icon, 16, "sub", { Position = UDim2.new(0, 10, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5) })
          x = 34
        end
        UI.text(item, option.label, "label", "ink", { Position = UDim2.new(0, x, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5), TextSize = 13 })
        local box = UI.frame(item, { Size = UDim2.fromOffset(16, 16), Position = UDim2.new(1, -10, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5),
          Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill3A" } })
        UI.corner(box, 5)
        checks[option.value] = UI.icon(box, "check", 13, "accent", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
        UI.button(item, {
          hover = function(on) Motion.to(item, "BackgroundTransparency", on and T.fill2A or 1, "quick") end,
          click = function() UI.sfx("click", 0.6); flip(option.value); refresh() end,
        })
      end
      if find then
        find:GetPropertyChangedSignal("Text"):Connect(function()
          local query = string.lower(find.Text)
          for _, entry in ipairs(entries) do
            entry.frame.Visible = query == "" or string.find(entry.words, query, 1, true) ~= nil
          end
        end)
      end
      UI.divider(content, #options + 1)
      local footer = UI.frame(content, { Size = UDim2.new(1, 0, 0, 30), LayoutOrder = #options + 2 })
      for index, action in ipairs({ { "All", function() local all = {}; for _, o in ipairs(options) do all[#all + 1] = o.value end; api.set(all) end },
        { "None", function() api.set({}) end } }) do
        local link = UI.new("TextButton", { Text = action[1], FontFace = B.F.text500, TextSize = 12, BackgroundTransparency = 1, AutoButtonColor = false,
          AutomaticSize = Enum.AutomaticSize.XY, Position = UDim2.new(index == 1 and 0 or 1, index == 1 and 10 or -10, 0.5, 0),
          AnchorPoint = Vector2.new(index == 1 and 0 or 1, 0.5), Theme = { TextColor3 = "sub" }, Parent = footer })
        UI.wire(link, { click = function() UI.sfx("click", 0.5); action[2](); refresh() end,
          hover = function(on) Theme.bind(link, "TextColor3", on and "ink" or "sub") end })
      end
      refresh()
    end)
  end
  UI.wire(button, {
    hover = function(on) Motion.to(button, "BackgroundTransparency", on and T.fill3A or T.fill2A, "quick"); row.hover(on) end,
    click = function() UI.sfx("click", 0.6); open() end,
    alt = function() contextMenu(button, spec) end,
  })
  return api
end

-- ---------------------------------------------------------------- segmented
-- A row of mutually exclusive choices with a pill that slides like liquid:
-- its leading edge arrives first, the trailing edge catches up.
function Controls.segmentedBar(parent, options, initial, onPick, props)
  options = optionList(options)
  local bar = UI.frame(parent, { Name = "Segmented", Size = UDim2.new(1, 0, 0, 30), Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" } })
  UI.corner(bar, "rSmall")
  if props then
    for key, value in pairs(props) do bar[key] = value end
  end
  local count = #options
  local thumb = UI.frame(bar, { Name = "Thumb", Size = UDim2.new(1 / count, -4, 1, -4), Position = UDim2.new(0, 2, 0, 2),
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill3A" } })
  UI.corner(thumb, "rSmall")
  local labels = {}
  local current
  -- left and right edges are separate springs (scale units)
  local edges = Motion.spring(2, "snappy", function(x)
    local a, b = math.min(x[1], x[2]), math.max(x[1], x[2])
    thumb.Position = UDim2.new(a, 2, 0, 2)
    thumb.Size = UDim2.new(b - a, -4, 1, -4)
  end, 0.0004)
  local function select(index, instant)
    local previous = current
    current = index
    for i, label in ipairs(labels) do Theme.bind(label, "TextColor3", i == index and "ink" or "sub") end
    local a, b = (index - 1) / count, index / count
    if instant or not previous then edges:snap({ a, b }); return end
    -- the edge in the direction of travel leads
    if index > previous then
      edges.g[2] = b; edges:to({ edges.g[1], b }, "snappy")
      task.delay(0.045, function() edges:to({ a, b }, "liquid") end)
    else
      edges.g[1] = a; edges:to({ a, edges.g[2] }, "snappy")
      task.delay(0.045, function() edges:to({ a, b }, "liquid") end)
    end
  end
  for index, option in ipairs(options) do
    local cell = UI.frame(bar, { Size = UDim2.new(1 / count, 0, 1, 0), Position = UDim2.fromScale((index - 1) / count, 0), ZIndex = 2 })
    labels[index] = UI.text(cell, option.label, "label", "sub", { TextSize = 12.5, AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
    UI.button(cell, { click = function()
      if current == index then return end
      UI.sfx("tab", 0.6)
      select(index)
      onPick(option.value, index)
    end })
  end
  local startIndex = 1
  for index, option in ipairs(options) do if option.value == initial then startIndex = index end end
  select(startIndex, true)
  return bar, function(v)
    for index, option in ipairs(options) do if option.value == v then select(index) end end
  end
end

function Controls.segmented(section, spec)
  local id = spec.id
  local options = optionList(spec.options)
  local value = initial(id, orDefault(spec.default, options[1].value))
  local width = spec.width or math.min(64 * #options, 220)
  local row = makeRow(section, spec, width)
  local holder = UI.frame(row.slot, { Size = UDim2.fromOffset(width, 30), LayoutOrder = 3 })
  local api = { row = row, id = id }
  local _, show = Controls.segmentedBar(holder, options, value, function(v)
    if id then Config.set(id, v) else
      value = v
      if spec.changed then B.try("segmented", spec.changed, v) end
    end
  end)
  function api.get() return value end
  function api.set(v) if id then Config.set(id, v) else value = v; show(v) end end
  if id then
    Config.on(id, function(next)
      value = next
      if holder.Parent then show(next) end
      if spec.changed then spec.changed(next) end
    end)
    if spec.changed then task.defer(B.safe("segmented.init", function() spec.changed(value) end)) end
  end
  return api
end

-- ---------------------------------------------------------------- button
function Controls.pillButton(parent, text, style, run, props)
  local primary, danger = style == "primary", style == "danger"
  local button = UI.pressable(parent, { Name = "Button", Size = UDim2.fromOffset(0, 28), AutomaticSize = Enum.AutomaticSize.X })
  local function rest() return primary and 0 or (danger and 0.84 or T.fill2A) end
  Theme.bind(button, "BackgroundColor3", primary and "accent" or (danger and "bad" or "ink"))
  button.BackgroundTransparency = rest()
  if not primary and not danger then Theme.bind(button, "BackgroundTransparency", "fill2A") end
  UI.corner(button, "rSmall")
  UI.pad(button, 0, 13)
  local label = UI.text(button, text, "button", primary and "accentInk" or (danger and "bad" or "ink"),
    { Size = UDim2.fromScale(0, 1), AutomaticSize = Enum.AutomaticSize.X })
  local scale = UI.scaleOf(button)
  if props then
    for key, value in pairs(props) do button[key] = value end
  end
  UI.wire(button, {
    hover = function(on)
      local base = rest()
      Motion.to(button, "BackgroundTransparency", on and (primary and 0.14 or math.max(0, base - 0.06)) or base, "quick")
    end,
    press = function(on) Motion.to(scale, "Scale", on and 0.95 or 1, on and "quick" or "bouncy") end,
    click = function() UI.sfx("click", 0.8); if run then run() end end,
  })
  return button, label
end

function Controls.button(section, spec)
  local row = makeRow(section, spec, 110)
  local id = spec.id
  if id then
    Config.action(id, function() if spec.run then spec.run() end end)
    spec.bindable = spec.bindable ~= false
    if spec.bindable then
      bindChip(row.slot, id, 1)
      Controls.bindables[id] = { label = spec.label or id, kind = "button", page = section.page }
    end
  end
  local button, label = Controls.pillButton(row.slot, spec.text or "Run", spec.style, function()
    if spec.run then B.try("button." .. (spec.label or "?"), spec.run) end
  end, { LayoutOrder = 3 })
  button.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton2 and id then contextMenu(button, { id = id, bindable = spec.bindable, label = spec.label, kind = "button" }) end
  end)
  return { row = row, button = button, setText = function(text) label.Text = text end }
end

-- ---------------------------------------------------------------- keybind
function Controls.keybind(section, spec)
  local id = spec.id
  local value = initial(id, spec.default or "None")
  local row = makeRow(section, spec, 100)
  local chip = UI.pressable(row.slot, { Name = "Key", Size = UDim2.fromOffset(0, 28), AutomaticSize = Enum.AutomaticSize.X, LayoutOrder = 3,
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" } })
  UI.corner(chip, "rSmall")
  UI.pad(chip, 0, 11)
  local floor = Instance.new("UISizeConstraint"); floor.MinSize = Vector2.new(46, 28); floor.Parent = chip
  local label = UI.text(chip, Config.keyLabel(value ~= "None" and value or nil), "monoBold", "ink", { Size = UDim2.fromScale(1, 1),
    AutomaticSize = Enum.AutomaticSize.X, TextXAlignment = Enum.TextXAlignment.Center })
  local stroke = UI.stroke(chip, "accent", 1, 1)
  local api = { row = row, id = id }
  function api.get() return value end
  local function show() label.Text = Config.keyLabel(value ~= "None" and value or nil) end
  if id then
    Config.on(id, function(next)
      value = next
      if label.Parent then show() end
      if spec.changed then spec.changed(next) end
    end)
    if spec.changed then task.defer(B.safe("keybind.init", function() spec.changed(value) end)) end
  end
  UI.wire(chip, {
    hover = function(on) Motion.to(chip, "BackgroundTransparency", on and T.fill3A or T.fill2A, "quick"); row.hover(on) end,
    click = function()
      UI.sfx("click", 0.6)
      label.Text = "…"
      Motion.to(stroke, "Transparency", 0, "quick")
      Controls.captureKey(function(key, cancelled)
        Motion.to(stroke, "Transparency", 1, "smooth")
        if not cancelled then
          local next = key or "None"
          if id then Config.set(id, next) else value = next; if spec.changed then spec.changed(next) end end
        end
        show()
      end)
    end,
    alt = function() contextMenu(chip, spec) end,
  })
  return api
end

-- ---------------------------------------------------------------- text input
function Controls.field(parent, props, onSubmit)
  local field = UI.frame(parent, { Name = "Field", Size = UDim2.fromOffset(150, 28), Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" } })
  UI.corner(field, "rSmall")
  local stroke = UI.stroke(field, "accent", 1, 1)
  local box = UI.new("TextBox", { Name = "Box", BackgroundTransparency = 1, Size = UDim2.new(1, -20, 1, 0), Position = UDim2.fromOffset(10, 0), Text = "",
    FontFace = B.F.text400, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left, ClearTextOnFocus = false, ClipsDescendants = true,
    Theme = { TextColor3 = "ink", PlaceholderColor3 = "faint" }, Parent = field })
  if props then
    for key, value in pairs(props) do
      if key == "Width" then field.Size = UDim2.fromOffset(value, 28) else box[key] = value end
    end
  end
  box.Focused:Connect(function() Motion.to(stroke, "Transparency", 0.25, "quick") end)
  box.FocusLost:Connect(B.safe("field", function(enter)
    Motion.to(stroke, "Transparency", 1, "smooth")
    if onSubmit then onSubmit(box.Text, enter) end
  end))
  return field, box
end

function Controls.input(section, spec)
  local id = spec.id
  local value = initial(id, spec.default or "")
  local row = makeRow(section, spec, spec.width or 150)
  local api = { row = row, id = id }
  local _, box = Controls.field(row.slot, { Width = spec.width or 150, PlaceholderText = spec.placeholder or "", Text = tostring(value) }, function(text)
    if spec.numeric then
      local n = tonumber(text)
      if not n then api.box.Text = tostring(value); return end
      text = n
    end
    if id then Config.set(id, text) else
      value = text
      if spec.changed then B.try("input", spec.changed, text) end
    end
  end)
  api.box = box
  function api.get() return value end
  if id then
    Config.on(id, function(next)
      value = next
      if box.Parent and not box:IsFocused() then box.Text = tostring(next) end
      if spec.changed then spec.changed(next) end
    end)
  end
  return api
end

-- ---------------------------------------------------------------- colour
local function hueColor(h) return Color3.fromHSV(h, 1, 1) end
function Controls.colorPopover(anchor, initial, onChange)
  local h, s, v = initial:ToHSV()
  return UI.popover(anchor, { width = 224, align = "right", pad = 10, gap = 10 }, function(content)
    local square = UI.frame(content, { Name = "SV", Size = UDim2.new(1, 0, 0, 132), BackgroundTransparency = 0, BackgroundColor3 = hueColor(h), LayoutOrder = 1 })
    UI.corner(square, 9)
    local white = UI.frame(square, { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0 })
    UI.corner(white, 9)
    UI.gradient(white, { Transparency = UI.alphaSeq(0, 0, 1, 1) })
    local black = UI.frame(square, { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0, ZIndex = 2 })
    UI.corner(black, 9)
    UI.gradient(black, { Rotation = 90, Transparency = UI.alphaSeq(0, 1, 1, 0) })
    local dot = UI.frame(square, { Size = UDim2.fromOffset(12, 12), AnchorPoint = Vector2.new(0.5, 0.5), ZIndex = 4, BackgroundTransparency = 1 })
    UI.corner(dot, true)
    local ring = Instance.new("UIStroke"); ring.Color = Color3.new(1, 1, 1); ring.Thickness = 2; ring.Parent = dot

    local hueBar = UI.frame(content, { Name = "Hue", Size = UDim2.new(1, 0, 0, 12), BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0, LayoutOrder = 2 })
    UI.corner(hueBar, true)
    local stops = {}
    for i = 0, 6 do stops[#stops + 1] = ColorSequenceKeypoint.new(i / 6, Color3.fromHSV(i / 6 % 1, 1, 1)) end
    UI.gradient(hueBar, { Color = ColorSequence.new(stops) })
    local hueKnob = UI.frame(hueBar, { Size = UDim2.fromOffset(14, 14), AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = Color3.new(1, 1, 1),
      BackgroundTransparency = 0, ZIndex = 3 })
    UI.corner(hueKnob, true)
    local hueRing = Instance.new("UIStroke"); hueRing.Color = Color3.new(0, 0, 0); hueRing.Transparency = 0.7; hueRing.Parent = hueKnob

    local bottom = UI.frame(content, { Size = UDim2.new(1, 0, 0, 28), LayoutOrder = 3 })
    local preview = UI.frame(bottom, { Size = UDim2.fromOffset(28, 28), BackgroundTransparency = 0, BackgroundColor3 = initial })
    UI.corner(preview, 8)
    local hexField, hexBox
    local function emit(fromHex)
      local color = Color3.fromHSV(h, s, v)
      square.BackgroundColor3 = hueColor(h)
      dot.Position = UDim2.fromScale(s, 1 - v)
      hueKnob.Position = UDim2.fromScale(h, 0.5)
      preview.BackgroundColor3 = color
      if hexBox and not fromHex and not hexBox:IsFocused() then hexBox.Text = "#" .. util.toHex(color) end
      onChange(color)
    end
    hexField, hexBox = Controls.field(bottom, { Width = 96, Text = "#" .. util.toHex(initial), FontFace = B.F.mono400, TextSize = 12 }, function(text)
      local clean = string.gsub(text, "[^%x]", "")
      if #clean == 6 then
        h, s, v = util.hex(clean):ToHSV()
        emit(true)
      end
      hexBox.Text = "#" .. util.toHex(Color3.fromHSV(h, s, v))
    end)
    hexField.Position = UDim2.fromOffset(36, 0)
    -- quick picks: the accent family
    local picks = UI.frame(content, { Size = UDim2.new(1, 0, 0, 18), LayoutOrder = 4 })
    UI.list(picks, "x", 7)
    for index, accent in ipairs(Theme.accents) do
      local swatch = UI.frame(picks, { Size = UDim2.fromOffset(18, 18), BackgroundTransparency = 0, BackgroundColor3 = accent.color, LayoutOrder = index })
      UI.corner(swatch, true)
      UI.button(swatch, { click = function() h, s, v = accent.color:ToHSV(); emit() end })
    end
    local svHit = UI.new("TextButton", { Text = "", BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), ZIndex = 6, AutoButtonColor = false, Parent = square })
    local function sv(point)
      local p, size = square.AbsolutePosition, square.AbsoluteSize
      s = util.clamp01((point.X - p.X) / size.X)
      v = 1 - util.clamp01((point.Y - p.Y) / size.Y)
      emit()
    end
    UI.drag(svHit, sv, sv)
    local hueHit = UI.new("TextButton", { Text = "", BackgroundTransparency = 1, Size = UDim2.new(1, 0, 1, 12), Position = UDim2.fromOffset(0, -6), ZIndex = 6,
      AutoButtonColor = false, Parent = hueBar })
    local function hue(point)
      h = util.clamp01((point.X - hueBar.AbsolutePosition.X) / hueBar.AbsoluteSize.X)
      emit()
    end
    UI.drag(hueHit, hue, hue)
    dot.Position = UDim2.fromScale(s, 1 - v)
    hueKnob.Position = UDim2.fromScale(h, 0.5)
  end)
end

function Controls.color(section, spec)
  local id = spec.id
  local value = initial(id, spec.default or Color3.new(1, 1, 1))
  local row = makeRow(section, spec, 60)
  local swatch = UI.frame(row.slot, { Name = "Swatch", Size = UDim2.fromOffset(34, 22), BackgroundTransparency = 0, BackgroundColor3 = value, LayoutOrder = 3 })
  UI.corner(swatch, 7)
  UI.stroke(swatch, "ink", "stroke2A")
  local api = { row = row, id = id }
  function api.get() return value end
  function api.set(next, quiet)
    if id then Config.set(id, next, quiet) else
      value = next; swatch.BackgroundColor3 = next
      if spec.changed then B.try("color", spec.changed, next) end
    end
  end
  if id then
    Config.on(id, function(next)
      value = next
      if swatch.Parent then swatch.BackgroundColor3 = next end
      if spec.changed then spec.changed(next) end
    end)
    if spec.changed then task.defer(B.safe("color.init", function() spec.changed(value) end)) end
  end
  local scale = UI.scaleOf(swatch)
  UI.button(swatch, {
    hover = function(on) Motion.to(scale, "Scale", on and 1.08 or 1, "snappy"); row.hover(on) end,
    click = function() UI.sfx("click", 0.6); Controls.colorPopover(swatch, value, function(color) api.set(color) end) end,
    alt = function() contextMenu(swatch, spec) end,
  })
  return api
end

-- up to three colours on one row: a run of colours (a gradient's two ends and its middle). spec.ids, spec.defaults
function Controls.colors(section, spec)
  local ids = spec.ids or {}
  local row = makeRow(section, spec, 36 * #ids + 8)
  local api = { row = row, ids = ids, swatches = {} }
  for index, id in ipairs(ids) do
    local value = Config.define(id, (spec.defaults and spec.defaults[index]) or Color3.new(1, 1, 1))
    local swatch = UI.frame(row.slot, { Name = "Swatch" .. index, Size = UDim2.fromOffset(28, 22), BackgroundTransparency = 0, BackgroundColor3 = value,
      LayoutOrder = 2 + index })
    UI.corner(swatch, 7)
    UI.stroke(swatch, "ink", "stroke2A")
    api.swatches[index] = swatch
    Config.on(id, function(next)
      value = next
      if swatch.Parent then swatch.BackgroundColor3 = next end
    end)
    local scale = UI.scaleOf(swatch)
    UI.button(swatch, {
      hover = function(on) Motion.to(scale, "Scale", on and 1.08 or 1, "snappy"); row.hover(on) end,
      click = function() UI.sfx("click", 0.6); Controls.colorPopover(swatch, value, function(color) Config.set(id, color) end) end,
      alt = function() contextMenu(swatch, { id = id, label = spec.label }) end,
    })
  end
  return api
end

-- ---------------------------------------------------------------- static rows
function Controls.note(section, spec)
  section.count = (section.count or 0) + 1
  local tone = spec.tone or "sub"
  local box = UI.frame(section.body, { Name = "Note", Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = section.count })
  UI.pad(box, 10, 14, 12, 14)
  local inner = UI.frame(box, { Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y })
  UI.list(inner, "x", 9)
  if spec.icon then UI.icon(inner, spec.icon, 15, tone, { LayoutOrder = 1 }) end
  local text = UI.text(inner, spec.text or "", "caption", tone, { TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 2,
    Size = UDim2.new(1, spec.icon and -24 or 0, 0, 0), LineHeight = 1.2, RichText = spec.rich == true })
  return { frame = box, set = function(value) text.Text = value end }
end
function Controls.custom(section, spec)
  section.count = (section.count or 0) + 1
  local frame = UI.frame(section.body, { Name = spec.name or "Custom", Size = UDim2.new(1, 0, 0, spec.height or 100), LayoutOrder = section.count })
  if spec.height == nil then frame.AutomaticSize = Enum.AutomaticSize.Y end
  B.try("custom", spec.build, frame)
  return frame
end
end
do -- 07_window.lua
-- ============================================================================
--  07 window   the shell: glass, sidebar, pages, cards, toasts, palette, blur
-- ============================================================================
local S, util, Motion, Theme, T, UI, Config, Controls = B.S, B.util, B.Motion, B.Theme, B.T, B.UI, B.Config, B.Controls
local UIS = S.UserInputService
local Window = { open = false, built = false, pages = {}, order = {}, index = {}, scale = 1, onShow = B.Signal.new(), onPage = B.Signal.new() }
B.Window = Window

local W, H = 980, 624
local SIDE = 206
local CONTENT_X = SIDE + 20
local CONTENT_W = W - CONTENT_X - 10
local HEADER = 84

-- ---------------------------------------------------------------- real blur
-- Measured: a Glass part a hair in front of the camera plus a DepthOfField with
-- nothing in its focus range blurs the 3D scene inside the part's rectangle only.
-- A rounded window is five rectangles: the body and two steps per end.
local Blur = { enabled = false, parts = {}, visible = false }
B.Blur = Blur
local DEPTH = 0.012
local function blurPart()
  local part = Instance.new("Part")
  part.Name = util.randomName()
  part.Anchored, part.CanCollide, part.CanQuery, part.CanTouch = true, false, false, false
  part.CastShadow = false
  part.Locked = true
  part.Material = Enum.Material.Glass
  part.Color = Color3.new(0, 0, 0)
  part.Transparency = 0.98
  part.Size = Vector3.new(1, 1, 0.001)
  local mesh = Instance.new("SpecialMesh")
  mesh.MeshType = Enum.MeshType.Brick
  mesh.Offset = Vector3.new(0, 0, -0.000001)
  mesh.Parent = part
  return part, mesh
end
function Blur.supported()
  local ok, level = pcall(function() return settings().Rendering.QualityLevel.Value end)
  -- level 0 is Automatic; the effect needs the post-processing tiers
  return ok and (level == 0 or level >= 8)
end
function Blur.start()
  if Blur.dof then return end
  local dof = Instance.new("DepthOfFieldEffect")
  dof.Name = util.randomName()
  dof.FarIntensity, dof.NearIntensity, dof.InFocusRadius, dof.FocusDistance = 0, 1, 0.1, 0.05
  dof.Enabled = false
  dof.Parent = S.Lighting
  Blur.dof = B.own(dof)
  for index = 1, 5 do
    local part, mesh = blurPart()
    Blur.parts[index] = { part = B.own(part), mesh = mesh }
  end
  -- runs after the camera has moved this frame, so the glass never trails it
  S.RunService:BindToRenderStep("BasedBlur", Enum.RenderPriority.Camera.Value + 2, function()
    if not Blur.visible or not B.alive then return end
    B.try("blur", Blur.update)
  end)
  B.own(function() pcall(function() S.RunService:UnbindFromRenderStep("BasedBlur") end) end)
end
local function placePart(camera, slot, x, y, w, h)
  if w < 1 or h < 1 then slot.part.Parent = nil; return end
  local a = camera:ViewportPointToRay(x, y)
  local b = camera:ViewportPointToRay(x + w, y + h)
  local c = camera:ViewportPointToRay(x + w, y)
  local p1, p2, p3 = a.Origin + a.Direction * DEPTH, b.Origin + b.Direction * DEPTH, c.Origin + c.Direction * DEPTH
  local cf = camera.CFrame
  -- A game that clears the camera's children takes the glass with them (Da Hood's own client calls
  -- ClearAllChildren on the camera), and a destroyed part cannot be parented again: make it anew.
  if slot.part.Parent ~= camera and not pcall(function() slot.part.Parent = camera end) then
    local part, mesh = blurPart()
    slot.part, slot.mesh = B.own(part), mesh
    part.Parent = camera
  end
  slot.part.CFrame = CFrame.fromMatrix((p1 + p2) / 2, cf.XVector, cf.YVector, cf.ZVector)
  slot.mesh.Scale = Vector3.new((p3 - p1).Magnitude, (p3 - p2).Magnitude, 0) / slot.part.Size
end
function Blur.update()
  local camera = workspace.CurrentCamera
  local holder = Window.holder
  if not camera or not holder then return end
  -- read the rectangle this frame: a dragged window must not outrun its blur
  local p, s = holder.AbsolutePosition, holder.AbsoluteSize
  local inset = S.GuiService:GetGuiInset()
  local x, y, w, h, r = p.X + inset.X, p.Y + inset.Y, s.X, s.Y, T.rWindow * Window.sizer.Scale
  local parts = Blur.parts
  -- (2026-11-11) Nothing moved since the last frame, camera or window, and the glass is still where it was put: the
  -- fifteen rays and ten writes below would only say the same again. (A game that clears the camera takes the glass
  -- with it: then it is put back, whatever else is the same.)
  local cf, view, fov = camera.CFrame, camera.ViewportSize, camera.FieldOfView
  local was = Blur.was
  if was and was.cf == cf and was.view == view and was.fov == fov and was.x == x and was.y == y and was.w == w and was.h == h and was.r == r then
    local whole = true
    for index = 1, 5 do
      if parts[index].part.Parent ~= camera then whole = false; break end
    end
    if whole then return end
  end
  if not was then was = {}; Blur.was = was end
  was.cf, was.view, was.fov, was.x, was.y, was.w, was.h, was.r = cf, view, fov, x, y, w, h, r
  placePart(camera, parts[1], x, y + r, w, h - 2 * r)
  placePart(camera, parts[2], x + 0.063 * r, y + 0.30 * r, w - 0.126 * r, 0.70 * r)
  placePart(camera, parts[3], x + 0.42 * r, y + 0.07 * r, w - 0.84 * r, 0.23 * r)
  placePart(camera, parts[4], x + 0.063 * r, y + h - r, w - 0.126 * r, 0.70 * r)
  placePart(camera, parts[5], x + 0.42 * r, y + h - 0.30 * r, w - 0.84 * r, 0.23 * r)
end
function Blur.show(on)
  Blur.was = nil
  Blur.visible = on and Blur.enabled
  if Blur.dof then Blur.dof.Enabled = Blur.visible end
  if not Blur.visible then
    for _, slot in ipairs(Blur.parts) do slot.part.Parent = nil end
  end
end
function Blur.set(on)
  on = on and Blur.supported()
  Blur.enabled = on
  if on then Blur.start() end
  Theme.set({ blur = on })
  Blur.show(Window.open)
end

-- ---------------------------------------------------------------- toasts
local toasts = {}
local function layoutToasts()
  local y = 0
  for _, toast in ipairs(toasts) do
    Motion.to(toast.holder, "Position", UDim2.new(1, -18, 0, 18 + y), "smooth")
    y += toast.height + 10
  end
end
-- opts: title, text, icon, tone ("accent" | "ok" | "warn" | "bad"), time
function Window.toast(opts)
  if Window.toastHook then
    local taken = Window.toastHook(opts)
    if taken then return taken end
  end
  if not Window.hud then return end
  UI.sfx("notify")
  local tone = opts.tone or "accent"
  local hasText = opts.text ~= nil and opts.text ~= ""
  local toast = { height = hasText and 62 or 46 }
  local holder = UI.frame(Window.hud, { Name = "Toast", AnchorPoint = Vector2.new(1, 0), Size = UDim2.fromOffset(318, toast.height),
    Position = UDim2.new(1, 360, 0, 18) })
  local sizer = Instance.new("UIScale"); sizer.Scale = Window.scale; sizer.Parent = holder
  local glass = UI.glass(holder, { level = "popover", radius = "rCard", shadow = 30, shadowY = 12, props = { Size = UDim2.fromScale(1, 1) } })
  local chip = UI.frame(glass, { Size = UDim2.fromOffset(30, 30), Position = UDim2.new(0, 10, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5),
    Theme = { BackgroundColor3 = tone }, BackgroundTransparency = 0.84 })
  UI.corner(chip, 9)
  UI.icon(chip, opts.icon or "sparkles", 16, tone, { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
  UI.text(glass, opts.title or "", "heading", "ink", { TextSize = 13.5, Position = UDim2.fromOffset(50, hasText and 12 or 14), Size = UDim2.new(1, -64, 0, 18),
    AutomaticSize = Enum.AutomaticSize.None, TextTruncate = Enum.TextTruncate.AtEnd })
  if hasText then
    UI.text(glass, opts.text, "caption", "sub", { Position = UDim2.fromOffset(50, 31), Size = UDim2.new(1, -64, 0, 18), AutomaticSize = Enum.AutomaticSize.None,
      TextTruncate = Enum.TextTruncate.AtEnd })
  end
  local timer = UI.frame(glass, { Size = UDim2.new(1, -28, 0, 2), Position = UDim2.new(0, 14, 1, -5), Theme = { BackgroundColor3 = tone }, BackgroundTransparency = 0.45 })
  UI.corner(timer, true)
  toast.holder = holder
  table.insert(toasts, 1, toast)
  while #toasts > 4 do
    local old = table.remove(toasts)
    old.holder:Destroy()
  end
  layoutToasts()
  local life = opts.time or 3.6
  Motion.tween(life, Motion.ease.linear, function(p) timer.Size = UDim2.new(1 - p, -28 * (1 - p), 0, 2) end)
  local function dismiss()
    if toast.gone then return end
    toast.gone = true
    local at = table.find(toasts, toast)
    if at then table.remove(toasts, at) end
    Motion.to(holder, "Position", UDim2.new(1, 380, 0, holder.Position.Y.Offset), "smooth", function() holder:Destroy() end)
    layoutToasts()
  end
  task.delay(life, function() if B.alive then dismiss() end end)
  UI.button(glass, { click = dismiss })
  UI.sfx(tone == "bad" and "close" or "saved", 0.6)
  return dismiss
end

-- ---------------------------------------------------------------- sections
local SectionApi = {}
SectionApi.__index = SectionApi
for _, kind in ipairs({ "toggle", "slider", "dropdown", "multi", "segmented", "color", "colors", "keybind", "button", "input", "note", "custom" }) do
  SectionApi[kind] = function(self, spec) return Controls[kind](self.raw, spec) end
end
function Window.sectionApi(raw) return setmetatable({ raw = raw, body = raw.body }, SectionApi) end

local Page = {}
Page.__index = Page
local function band(page, full)
  page.bandCount += 1
  local frame = UI.frame(page.content, { Name = full and "Full" or "Columns", Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
    LayoutOrder = page.bandCount })
  if full then
    UI.list(frame, "y", 12)
    return { full = true, frame = frame }
  end
  local columns = {}
  for i = 1, 2 do
    local column = UI.frame(frame, { Name = "Column" .. i, Size = UDim2.new(0.5, -6, 0, 0), Position = UDim2.new(i == 1 and 0 or 0.5, i == 1 and 0 or 6, 0, 0),
      AutomaticSize = Enum.AutomaticSize.Y })
    UI.list(column, "y", 12)
    columns[i] = { frame = column, count = 0 }
  end
  return { full = false, frame = frame, columns = columns }
end
-- spec: title, desc, icon, full (span both columns), column (1 | 2)
function Page:section(spec)
  spec = spec or {}
  -- built in the background, a tab is assembled one card per frame (see Window.prebuild)
  if self.slicing then task.wait() end
  local current = self.band
  if spec.full then
    current = band(self, true)
    self.band = nil
  elseif not current or current.full then
    current = band(self, false)
    self.band = current
  end
  local host
  if current.full then host = current.frame else
    local column = spec.column and current.columns[spec.column]
      or (current.columns[1].count <= current.columns[2].count and current.columns[1] or current.columns[2])
    column.count += spec.weight or 1
    host = column.frame
  end
  self.sectionCount += 1
  local card = UI.surface(host, { Name = spec.title or "Card", Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = self.sectionCount })
  UI.stroke(card, "ink", "strokeA")
  local stack = UI.frame(card, { Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y })
  UI.list(stack, "y", 0)
  UI.pad(stack, 0, 0, 4, 0)
  if spec.title then
    local head = UI.frame(stack, { Name = "Head", Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 0 })
    UI.pad(head, 14, 14, 8, 14)
    UI.list(head, "y", 3)
    local line = UI.frame(head, { Size = UDim2.new(1, 0, 0, 20), LayoutOrder = 1 })
    UI.list(line, "x", 8, { v = "Center" })
    if spec.icon then UI.icon(line, spec.icon, 16, "accent", { LayoutOrder = 1 }) end
    UI.text(line, spec.title, "heading", "ink", { LayoutOrder = 2 })
    if spec.badge then UI.badge(line, spec.badge, spec.badgeColor, { LayoutOrder = 3 }) end
    if spec.desc then
      UI.text(head, spec.desc, "caption", "sub", { TextWrapped = true, AutomaticSize = Enum.AutomaticSize.Y, Size = UDim2.new(1, 0, 0, 0), LayoutOrder = 2, LineHeight = 1.15 })
    end
  end
  local body = UI.frame(stack, { Name = "Body", Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 1 })
  UI.list(body, "y", 0)
  local page = self
  local raw = { body = body, count = spec.title and 1 or 0, page = self, card = card }
  function raw.index(entry)
    entry.page, entry.section = page, spec.title or page.title
    Window.index[#Window.index + 1] = entry
  end
  local api = Window.sectionApi(raw)
  api.card = card
  return api
end
-- a full-width block the caller draws itself
function Page:custom(height, build)
  if self.slicing then task.wait() end
  local current = band(self, true)
  self.band = nil
  local frame = UI.frame(current.frame, { Name = "Custom", Size = UDim2.new(1, 0, 0, height or 0) })
  if not height then frame.AutomaticSize = Enum.AutomaticSize.Y end
  B.try("page.custom", build, frame)
  return frame
end
function Page:empty(icon, title, text)
  return self:custom(380, function(frame)
    local box = UI.frame(frame, { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.46), Size = UDim2.fromOffset(420, 0),
      AutomaticSize = Enum.AutomaticSize.Y })
    UI.list(box, "y", 10, { h = "Center" })
    local orb = UI.frame(box, { Size = UDim2.fromOffset(64, 64), Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" }, LayoutOrder = 1 })
    UI.corner(orb, true)
    UI.stroke(orb, "ink", "strokeA")
    UI.icon(orb, icon or "package", 26, "sub", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
    UI.text(box, title or "Nothing here yet", "title", "ink", { LayoutOrder = 2, TextXAlignment = Enum.TextXAlignment.Center })
    UI.text(box, text or "", "body", "sub", { LayoutOrder = 3, TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Center, Size = UDim2.new(1, 0, 0, 0),
      AutomaticSize = Enum.AutomaticSize.Y, LineHeight = 1.25 })
  end)
end

-- ---------------------------------------------------------------- pages
-- spec: id, title, icon, group, eyebrow, build(page), order
function Window.page(spec)
  local page = setmetatable({ id = spec.id, title = spec.title, icon = spec.icon or "circle", group = spec.group or "", eyebrow = spec.eyebrow,
    build = spec.build, built = false, bandCount = 0, sectionCount = 0, order = spec.order or (#Window.order + 1) * 10 }, Page)
  Window.pages[spec.id] = page
  Window.order[#Window.order + 1] = page
  table.sort(Window.order, function(a, b) return a.order < b.order end)
  if Window.built then Window.rebuildNav() end
  return page
end
function Window.removePage(id)
  local page = Window.pages[id]
  if not page then return end
  Window.pages[id] = nil
  table.remove(Window.order, table.find(Window.order, page))
  if page.frame then page.holder:Destroy() end
  for index = #Window.index, 1, -1 do
    if Window.index[index].page == page then table.remove(Window.index, index) end
  end
  if Window.built then Window.rebuildNav() end
end
-- background = true builds the tab a card at a time across frames. Measured: built in one go a
-- tab costs 5-25 ms, which is a visible hitch; sliced, no frame carries more than one card.
local function ensureBuilt(page, background)
  if page.built then return end
  page.built = true
  page.slicing = background == true
  local holder = UI.group(Window.pageHost, { Name = page.id, Size = UDim2.fromScale(1, 1), Visible = false })
  local scroller, api = UI.scroll(holder, { Size = UDim2.new(1, 0, 1, 0), Name = "Scroll" })
  local content = UI.frame(scroller, { Name = "Content", Size = UDim2.new(1, -8, 0, 0), AutomaticSize = Enum.AutomaticSize.Y })
  UI.list(content, "y", 12)
  UI.pad(content, 2, 0, 18, 0)
  page.holder, page.frame, page.scroll, page.content = holder, scroller, api, content
  local started = os.clock()
  if page.build then B.try("page." .. page.id, page.build, page) end
  if page.sectionCount == 0 and page.bandCount == 0 then
    page:empty("package", "Nothing here yet", "This tab is ready for its controls.")
  end
  page.slicing = false
  page.ready = true
  page.buildMs = (os.clock() - started) * 1000
end
-- Build every tab that has not been opened yet, quietly, so the first visit never stutters and
-- search can find every control. Runs during the intro when there is one.
function Window.prebuild()
  if Window.prebuilding then return end
  Window.prebuilding = true
  for _, page in ipairs(table.clone(Window.order)) do
    if not B.alive then return end
    if Window.pages[page.id] == page and not page.built then
      B.try("page.prebuild", ensureBuilt, page, true)
      -- (under a film a tab built in one frame shows as a skipped picture: measured 2026-10-29,
      -- 57 of 887 skipped at boot against 17 with the hub idle, so they are spaced out more then)
      task.wait((B.Loader and B.Loader.active) and 0.3 or 0.05)
    end
  end
  Window.prebuilding = false
  -- (the key list on screen names each feature by its switch: they are all known now)
  if B.Keys and B.Keys.repaint then B.Keys.repaint() end
end
Window.ensureBuilt = ensureBuilt

function Window.go(id, instant)
  local page = Window.pages[id]
  if not page or not Window.built then return end
  local previous = Window.current
  if previous == page then return end
  ensureBuilt(page)
  Window.current = page
  UI.closePopovers()
  UI.hideTip()
  if previous and previous.holder then
    local old = previous.holder
    UI.fade(old, 0, "quick")
    Motion.to(old, "Position", UDim2.fromOffset(0, -8), "quick")
  end
  page.holder.Visible = true
  if instant then
    UI.setFade(page.holder, 1)
    page.holder.Position = UDim2.new()
  else
    UI.setFade(page.holder, 0)
    Motion.snap(page.holder, "Position", UDim2.fromOffset(0, 14))
    UI.fade(page.holder, 1, "smooth")
    Motion.to(page.holder, "Position", UDim2.new(), "smooth")
  end
  Window.setTitle(page, instant)
  Window.selectNav(page, instant)
  Window.onPage:fire(page)
  if not instant then UI.sfx("menu_tab", 0.6) end
end

-- ---------------------------------------------------------------- build
local navItems = {}
function Window.build()
  if Window.built then return end
  Window.built = true
  local gui = B.screen(9000)
  local hudGui = B.screen(9100)
  Window.gui, Window.hudGui = gui, hudGui
  Window.hud = UI.frame(hudGui, { Name = "Hud", Size = UDim2.fromScale(1, 1) })
  UI.soundHost = UI.frame(hudGui, { Name = "Sound" })

  -- frees the cursor in first person while the hub is open
  Window.modal = UI.new("TextButton", { Name = "Modal", Text = "", BackgroundTransparency = 1, Size = UDim2.fromOffset(0, 0), Modal = true, Visible = false, Parent = gui })

  local stage = UI.frame(gui, { Name = "Stage", Size = UDim2.fromScale(1, 1) })
  local holder = UI.frame(stage, { Name = "Window", Size = UDim2.fromOffset(W, H), AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Visible = false })
  local sizer = Instance.new("UIScale")
  sizer.Parent = holder
  Window.holder, Window.sizer = holder, sizer
  UI.unit = function() return sizer.Scale end

  -- shadow lives outside the canvas: a canvas clips whatever leaves its bounds
  local shadowHost = UI.frame(holder, { Name = "Shadow", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1 })
  UI.corner(shadowHost, "rWindow")
  if UI.fx.shadow then
    local shadow = Instance.new("UIShadow")
    shadow.BlurRadius = UDim.new(0, 70)
    shadow.Offset = UDim2.fromOffset(0, 28)
    shadow.Color = Color3.new(0, 0, 0)
    shadow.Transparency = 1
    pcall(function() shadow.ShowBehindParent = false end)
    shadow.Parent = shadowHost
    Window.shadow = shadow
  end

  local root = UI.group(holder, { Name = "Root", Size = UDim2.fromScale(1, 1) })
  UI.corner(root, "rWindow")
  Window.root = root
  local glass, rim = UI.glass(root, { level = "window", radius = "rWindow", name = "Glass", props = { Size = UDim2.fromScale(1, 1), Active = true },
    rimHi = 0.42, rimLo = 0.7, sheenAlpha = 0.95 })
  Window.glass, Window.rim = glass, rim

  -- ---- sidebar
  local side = UI.glass(glass, { level = "panel", radius = "rPanel", name = "Sidebar", fill = "fill1A",
    props = { Size = UDim2.new(0, SIDE, 1, -20), Position = UDim2.fromOffset(10, 10) }, rimHi = 0.72, rimLo = 0.9 })
  Window.side = side
  local brand = UI.frame(side, { Name = "Brand", Size = UDim2.new(1, 0, 0, 58) })
  local mark = UI.frame(brand, { Size = UDim2.fromOffset(0, 26), Position = UDim2.fromOffset(18, 18), AutomaticSize = Enum.AutomaticSize.X })
  UI.list(mark, "x", 3, { v = "Bottom" })
  UI.text(mark, B.BRAND.word, "brand", "ink", { LayoutOrder = 1, TextSize = 17 })
  UI.text(mark, B.BRAND.tag, "display", "accent", { LayoutOrder = 2, TextSize = 21 })
  -- The tabs scroll, between the brand and the user chip (a game with tabs of its own, Music and the
  -- rest of the hub ran past the bottom: Keys sat under the chip and Settings could not be reached).
  local navHost, navScroll = UI.scroll(side, { Name = "Nav", Size = UDim2.new(1, -16, 1, -128), Position = UDim2.fromOffset(8, 60),
    AutomaticCanvasSize = Enum.AutomaticSize.None, ClipsDescendants = true })
  Window.navHost, Window.navScroll = navHost, navScroll
  Window.navPill = UI.frame(Window.navHost, { Name = "Pill", Size = UDim2.new(1, 0, 0, 34), Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" }, Visible = false })
  UI.corner(Window.navPill, "rControl")
  UI.stroke(Window.navPill, "ink", "strokeA")

  -- user chip
  local user = UI.frame(side, { Name = "User", Size = UDim2.new(1, -16, 0, 50), Position = UDim2.new(0, 8, 1, -58), Theme = { BackgroundColor3 = "ink" }, BackgroundTransparency = 1 })
  UI.corner(user, "rControl")
  local avatar = UI.new("ImageLabel", { Name = "Avatar", Size = UDim2.fromOffset(32, 32), Position = UDim2.new(0, 9, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5),
    BackgroundTransparency = 0, Theme = { BackgroundColor3 = "ink" }, Image = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(B.LP.UserId) .. "&w=150&h=150", Parent = user })
  avatar.BackgroundTransparency = 0.9
  UI.corner(avatar, true)
  UI.text(user, B.LP.DisplayName, "label", "ink", { Position = UDim2.fromOffset(50, 9), Size = UDim2.new(1, -78, 0, 17), AutomaticSize = Enum.AutomaticSize.None,
    TextTruncate = Enum.TextTruncate.AtEnd, TextSize = 13 })
  Window.userLine = UI.text(user, "@" .. B.LP.Name, "caption", "faint", { Position = UDim2.fromOffset(50, 26), Size = UDim2.new(1, -78, 0, 15),
    AutomaticSize = Enum.AutomaticSize.None, TextTruncate = Enum.TextTruncate.AtEnd, TextSize = 11 })
  local more = UI.icon(user, "ellipsis", 16, "faint", { Position = UDim2.new(1, -12, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5) })
  UI.button(user, {
    hover = function(on) Motion.to(user, "BackgroundTransparency", on and T.fill2A or 1, "quick") end,
    click = function()
      -- (2026-11-11: the Unnamed and Novoline looks are out of the build for now, _retired/menus-1111. Each is offered
      -- only when its part is in)
      local items = {
        { label = "Settings", icon = "settings", run = function() Window.go("settings") end },
        { label = "Search", icon = "search", hint = "Ctrl K", run = function() Window.palette() end },
      }
      if B.Unnamed then items[#items + 1] = { label = "Unnamed menu", icon = "app-window", run = function() Config.set("app.gui", "unnamed") end } end
      if B.Novoline then items[#items + 1] = { label = "Novoline menu", icon = "layout-grid", run = function() Config.set("app.gui", "novoline") end } end
      items[#items + 1] = "divider"
      items[#items + 1] = { label = "Hide hub", icon = "eye-off", hint = Config.keyLabel(Config.get("app.key.menu")), run = function() Window.show(false) end }
      items[#items + 1] = { label = "Unload " .. B.BRAND.word, icon = "power", danger = true, run = function() B.unload() end }
      UI.menu(more, items, { side = "above", align = "left", width = 214 })
    end,
  })

  -- ---- header
  local header = UI.frame(glass, { Name = "Header", Size = UDim2.new(0, CONTENT_W, 0, HEADER), Position = UDim2.fromOffset(CONTENT_X, 6) })
  Window.header = header
  Window.eyebrow = UI.text(header, "", "eyebrow", "faint", { Position = UDim2.fromOffset(2, 13) })
  local titleClip = UI.frame(header, { Name = "TitleClip", Size = UDim2.new(1, -250, 0, 46), Position = UDim2.fromOffset(0, 27), ClipsDescendants = true })
  Window.titleClip = titleClip
  -- search pill
  local search = UI.frame(header, { Name = "Search", Size = UDim2.fromOffset(170, 32), AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, -78, 0, 22),
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill1A" } })
  UI.corner(search, true)
  UI.stroke(search, "ink", "strokeA")
  UI.icon(search, "search", 15, "faint", { Position = UDim2.new(0, 12, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5) })
  UI.text(search, "Search", "body", "faint", { Position = UDim2.new(0, 34, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5) })
  local hint = UI.frame(search, { Size = UDim2.fromOffset(0, 18), AutomaticSize = Enum.AutomaticSize.X, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -8, 0.5, 0),
    Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" } })
  UI.corner(hint, 6); UI.pad(hint, 0, 6)
  UI.text(hint, "Ctrl K", "mono", "faint", { TextSize = 10.5, Size = UDim2.fromScale(0, 1), AutomaticSize = Enum.AutomaticSize.X })
  UI.button(search, {
    hover = function(on) Motion.to(search, "BackgroundTransparency", on and T.fill2A or T.fill1A, "quick") end,
    click = function() Window.palette() end,
  })
  -- window buttons
  local function roundButton(icon, x, tone, run, tip)
    local button = UI.frame(header, { Size = UDim2.fromOffset(30, 30), AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, x, 0, 23),
      Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill1A" } })
    UI.corner(button, true)
    local glyph = UI.icon(button, icon, 15, "sub", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
    local scale = UI.scaleOf(button)
    local hit = UI.button(button, {
      hover = function(on)
        Motion.to(button, "BackgroundTransparency", on and (tone and 0.8 or T.fill3A) or T.fill1A, "quick")
        Theme.bind(button, "BackgroundColor3", on and tone or "ink")
        Theme.bind(glyph, "ImageColor3", on and (tone or "ink") or "sub")
      end,
      press = function(on) Motion.to(scale, "Scale", on and 0.9 or 1, on and "quick" or "bouncy") end,
      click = run,
    })
    UI.tooltip(hit, tip)
  end
  roundButton("x", -4, "bad", function() Window.show(false) end, "Hide (" .. Config.keyLabel(Config.get("app.key.menu")) .. ")")
  roundButton("minus", -40, nil, function() Window.show(false) end, "Minimise to the island")

  -- ---- pages
  Window.pageHost = UI.frame(glass, { Name = "Pages", Size = UDim2.new(0, CONTENT_W, 1, -(HEADER + 16)), Position = UDim2.fromOffset(CONTENT_X, HEADER + 6), ClipsDescendants = true })
  -- soft edge where content scrolls under the header
  local fade = UI.frame(glass, { Name = "EdgeTop", Size = UDim2.new(0, CONTENT_W, 0, 14), Position = UDim2.fromOffset(CONTENT_X, HEADER + 6), ZIndex = 7,
    Theme = { BackgroundColor3 = "base" }, BackgroundTransparency = 0, Interactable = false })
  UI.gradient(fade, { Rotation = 90, Transparency = UI.alphaSeq(0, 0.25, 1, 1) })
  Window.edgeTop = fade

  UI.mountOverlay(gui, function() return sizer.Scale end)

  -- ---- drag (header and sidebar brand), spring-followed
  local position = Motion.spring(2, "snappy", function(x) holder.Position = UDim2.fromOffset(x[1], x[2]) end, 0.2)
  Window.position = position
  local function clampTo(x, y)
    local view = B.viewport()
    local hw, hh = W * sizer.Scale / 2, H * sizer.Scale / 2
    return math.clamp(x, 140 - hw, view.X + hw - 140), math.clamp(y, hh * 0.25, view.Y + hh - 80)
  end
  Window.clampTo = clampTo
  local startX, startY
  local function dragFrom(handle)
    UI.drag(handle, function()
      UI.closePopovers()
      startX, startY = position.g[1], position.g[2]
    end, function(_, delta)
      local x, y = clampTo(startX + delta.X, startY + delta.Y)
      position:to({ x, y }, "quick")
    end, function()
      local view = B.viewport()
      Config.set("app.window.x", position.g[1] / view.X)
      Config.set("app.window.y", position.g[2] / view.Y)
    end)
  end
  local grip = UI.new("TextButton", { Name = "Grip", Text = "", BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.new(1, -260, 1, 0), ZIndex = 2, Parent = header })
  dragFrom(grip)
  local grip2 = UI.new("TextButton", { Name = "Grip", Text = "", BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.fromScale(1, 1), ZIndex = 2, Parent = brand })
  dragFrom(grip2)

  -- the rim highlight leans toward the pointer: glass catching a light
  -- (2026-11-11: written a whole degree at a time. Every write to the rim draws the whole window's canvas again, and
  -- the spring's last few frames move it by hundredths of a degree nobody can see)
  local rimShown
  local rimAngle = Motion.spring(1, "gentle", function(x)
    local angle = math.floor(x[1] + 0.5)
    if angle ~= rimShown then
      rimShown = angle
      rim.Rotation = angle
    end
  end, 0.05)
  rimAngle:snap({ 52 })
  Motion.every(function()
    if not Window.open then return end
    local mouse = UI.mouse()
    local p, s = holder.AbsolutePosition, holder.AbsoluteSize
    local dx, dy = mouse.X - (p.X + s.X / 2), mouse.Y - (p.Y + s.Y / 2)
    -- the gradient's bright end sits at angle+180: point it at the cursor
    local angle = math.deg(math.atan2(dy, dx)) + 180
    local current = rimAngle.g[1]
    local diff = (angle - current + 180) % 360 - 180
    if math.abs(diff) > 1.5 then rimAngle:to({ current + diff }) end
  end, 30, "window.rim")

  Window.rebuildNav()
  Window.rescale()
  B.connect(workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"), function() Window.rescale() end, "window.viewport")
end

function Window.rescale()
  if not Window.built then return end
  local view = B.viewport()
  local auto = math.clamp(math.min(view.Y / 1090, view.X / 1500), 0.55, 1.5)
  local user = (Config.get("app.scale") or 100) / 100
  local scale = math.min(auto * user, (view.X - 24) / W, (view.Y - 24) / H)
  Window.scale = scale
  Motion.to(Window.sizer, "Scale", scale * (Window.open and 1 or 0.95), "smooth")
  local fx, fy = Config.get("app.window.x") or 0.5, Config.get("app.window.y") or 0.5
  local x, y = Window.clampTo(fx * view.X, fy * view.Y)
  Window.position:snap({ x, y })
end

-- ---------------------------------------------------------------- nav
local selected = Motion.spring(2, "snappy", function(x)
  local pill = Window.navPill
  if not pill then return end
  local a, b = math.min(x[1], x[2]), math.max(x[1], x[2])
  pill.Position = UDim2.fromOffset(0, a)
  pill.Size = UDim2.new(1, 0, 0, math.max(8, b - a))
end, 0.15)
function Window.rebuildNav()
  local host = Window.navHost
  for _, item in ipairs(navItems) do item.frame:Destroy() end
  for _, child in ipairs(host:GetChildren()) do
    if child.Name == "Group" then child:Destroy() end
  end
  table.clear(navItems)
  local y = 0
  local lastGroup
  for _, page in ipairs(Window.order) do
    if not page.hidden then
      if page.group ~= lastGroup then
        lastGroup = page.group
        if page.group ~= "" then
          y += 10
          -- (2026-11-16) as wide as the sidebar less the same margin on both sides: a heading too long for it ends in "…"
          -- inside that margin, where it ran past the edge and was cut off there (the owner: "a bit off to the right side")
          local label = UI.text(host, string.upper(page.group), "eyebrow", "faint", { Name = "Group", Position = UDim2.fromOffset(12, y), TextSize = 9,
            Size = UDim2.new(1, -24, 0, 12), AutomaticSize = Enum.AutomaticSize.None, TextTruncate = Enum.TextTruncate.AtEnd,
            TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Center })
          label.Name = "Group"
          y += 22
        end
      end
      local item = UI.frame(host, { Name = "Item", Size = UDim2.new(1, 0, 0, 34), Position = UDim2.fromOffset(0, y), Theme = { BackgroundColor3 = "ink" }, ZIndex = 2 })
      UI.corner(item, "rControl")
      local icon = UI.icon(item, page.icon, 17, "sub", { Position = UDim2.new(0, 12, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5) })
      local label = UI.text(item, page.title, "label", "sub", { Position = UDim2.new(0, 39, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5), TextSize = 13.5 })
      if page.badge then UI.badge(item, page.badge, "accent", { Position = UDim2.new(1, -10, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5) }) end
      local entry = { frame = item, icon = icon, label = label, page = page, y = y }
      navItems[#navItems + 1] = entry
      UI.button(item, {
        hover = function(on)
          if Window.current == page then return end
          Motion.to(item, "BackgroundTransparency", on and 0.955 or 1, "quick")
        end,
        click = function() Window.go(page.id) end,
      })
      y += 36
    end
  end
  host.CanvasSize = UDim2.fromOffset(0, y + 6)
  if Window.current then Window.selectNav(Window.current, true) end
end
function Window.selectNav(page, instant)
  local target
  for _, entry in ipairs(navItems) do
    local on = entry.page == page
    Theme.bind(entry.icon, "ImageColor3", on and "accent" or "sub")
    Theme.bind(entry.label, "TextColor3", on and "ink" or "sub")
    Motion.to(entry.frame, "BackgroundTransparency", 1, "quick")
    if on then target = entry end
  end
  if not target then Window.navPill.Visible = false; return end
  local a, b = target.y, target.y + 34
  -- (scrolled so the chosen tab is in view)
  local host, scroll = Window.navHost, Window.navScroll
  if host and scroll then
    local view = host.AbsoluteWindowSize.Y / math.max(UI.unit(), 0.01)
    local at = host.CanvasPosition.Y / math.max(UI.unit(), 0.01)
    if a < at + 4 then scroll.to((a - 12) * UI.unit(), instant) elseif b > at + view - 4 then scroll.to((b - view + 12) * UI.unit(), instant) end
  end
  if instant or not Window.navPill.Visible then
    Window.navPill.Visible = true
    selected:snap({ a, b })
    return
  end
  -- liquid: the edge facing the destination moves first, the other one follows
  local down = a > selected.g[1]
  if down then selected:to({ selected.g[1], b }, "snappy") else selected:to({ a, selected.g[2] }, "snappy") end
  task.delay(0.05, function() if Window.current == page then selected:to({ a, b }, "liquid") end end)
end

-- title: the old one slides up out of a mask, the new one rises into it
function Window.setTitle(page, instant)
  local clip = Window.titleClip
  local old = Window.titleLabel
  local label = UI.text(clip, page.title, "display", "ink", { Position = UDim2.fromOffset(0, instant and 2 or 46), Name = "Title" })
  Window.titleLabel = label
  Window.eyebrow.Text = string.upper(page.eyebrow or (page.group ~= "" and page.group or B.BRAND.word))
  if instant then
    if old then old:Destroy() end
    return
  end
  Motion.to(label, "Position", UDim2.fromOffset(0, 2), "smooth")
  if old then Motion.to(old, "Position", UDim2.fromOffset(0, -46), "smooth", function() old:Destroy() end) end
end

-- ---------------------------------------------------------------- show / hide
function Window.show(on, instant)
  if not Window.built or Window.open == on then return end
  Window.open = on
  UI.closePopovers()
  UI.hideTip()
  local holder, root, sizer = Window.holder, Window.root, Window.sizer
  Window.modal.Visible = on and Config.get("app.freeCursor") ~= false
  if on then
    holder.Visible = true
    if not Window.current and Window.order[1] then Window.go(Window.startPage or Window.order[1].id, true) end
    if instant then
      UI.setFade(root, 1); Motion.snap(sizer, "Scale", Window.scale)
      if Window.shadow then Window.shadow.Transparency = T.shadowA end
    else
      UI.setFade(root, 0)
      Motion.snap(sizer, "Scale", Window.scale * 0.94)
      UI.fade(root, 1, "smooth")
      Motion.to(sizer, "Scale", Window.scale, "bouncy")
      if Window.shadow then Motion.to(Window.shadow, "Transparency", T.shadowA, "gentle") end
      UI.sfx("menu_open", 0.8)
    end
    Blur.show(true)
  else
    if Window.shadow then Motion.to(Window.shadow, "Transparency", 1, "quick") end
    Motion.to(sizer, "Scale", Window.scale * 0.96, "quick")
    Blur.show(false)
    UI.fade(root, 0, "quick", function() if not Window.open then holder.Visible = false end end)
    if not root:IsA("CanvasGroup") then holder.Visible = false end
    UI.sfx("menu_close", 0.7)
  end
  Window.onShow:fire(on)
end
function Window.toggle() Window.show(not Window.open) end
-- any look of the hub is up: the BASED window, the Unnamed menu (src/52) or the Novoline one (src/53)
function Window.anyOpen()
  return Window.open or (B.Unnamed ~= nil and B.Unnamed.open == true) or (B.Novoline ~= nil and B.Novoline.open == true)
end
-- a tab on screen in any look. (Live parts of a tab asked the BASED window alone, and stood still
-- in the other looks.)
function Window.showing(id)
  if Window.open and Window.current ~= nil and Window.current.id == id then return true end
  local unnamed, novoline = B.Unnamed, B.Novoline
  if unnamed ~= nil and unnamed.open == true and unnamed.current == id then return true end
  return novoline ~= nil and novoline.open == true and novoline.current == id
end
-- (2026-11-11) Work that only matters while its tab is on screen (a list made again, a board painted again):
-- Window.lazy(id, fn) gives a function that runs fn at once while that tab is showing, and otherwise once, the next time
-- it is. So a player joining, or a bound key pressed, costs nothing while the menu is shut.
function Window.lazy(id, fn)
  local stale = false
  local function flush()
    if stale and Window.showing(id) then
      stale = false
      B.try("window.lazy." .. id, fn)
    end
  end
  Window.onPage:connect(flush)
  Window.onShow:connect(flush)
  return function()
    if Window.showing(id) then B.try("window.lazy." .. id, fn) else stale = true end
  end
end
-- which look is in use, and opening or closing it (the menu key)
function Window.look()
  local look = Config.get("app.gui")
  if look == "unnamed" and B.Unnamed then return "unnamed" end
  if look == "novoline" and B.Novoline then return "novoline" end
  return "based"
end
function Window.showActive(on)
  local look = Window.look()
  if look == "unnamed" then B.Unnamed.show(on) elseif look == "novoline" then B.Novoline.show(on) else Window.show(on) end
end
function Window.toggleActive()
  local look = Window.look()
  if look == "unnamed" then B.Unnamed.toggle() elseif look == "novoline" then B.Novoline.toggle() else Window.toggle() end
end

-- ---------------------------------------------------------------- the look kit
-- A tab that draws part of itself (the music player, a preview) takes its colours, letters and
-- corners from the look it is drawn in: Window.kit(frame). The BASED one is here; the Unnamed and
-- Novoline looks put theirs in Window.kits with an `owns(frame)` that says a frame is theirs.
--   kit.paint(instance, property, role)  set a colour and keep it in step (theme, accent)
--   kit.fill(instance, role)             a surface: colour and see-through together
--   kit.text(parent, value, props, bold, size), kit.entry(parent, size)  in the look's letters
--   kit.clear(instance)                  no surface (after a hover)
--   kit.outline(frame), kit.corner(frame, radius), kit.menu(anchor, items)
-- roles: card field hover line back text dim faint accent onAccent good bad
local ROLES = {
  card = { "ink", "fill1A" }, field = { "ink", "fill2A" }, hover = { "ink", "fill3A" }, line = { "ink", "strokeA" }, back = { "base", "baseA" },
  text = { "ink" }, dim = { "sub" }, faint = { "faint" }, accent = { "accent" }, onAccent = { "accentInk" }, good = { "ok" }, bad = { "bad" },
}
local kit = { look = "based", radius = 14, small = 9, size = 13 }
function kit.color(role)
  local r = ROLES[role] or ROLES.text
  return T[r[1]], r[2] and T[r[2]] or 0
end
function kit.paint(instance, property, role)
  Theme.bind(instance, property, (ROLES[role] or ROLES.text)[1])
end
function kit.fill(instance, role)
  local r = ROLES[role] or ROLES.card
  Theme.bind(instance, "BackgroundColor3", r[1])
  if r[2] then Theme.bind(instance, "BackgroundTransparency", r[2]) else
    Theme.unbind(instance, "BackgroundTransparency")
    instance.BackgroundTransparency = 0
  end
end
-- no surface at all (after a hover): the theme lets go of it too
function kit.clear(instance)
  Theme.unbind(instance, "BackgroundTransparency")
  instance.BackgroundTransparency = 1
end
function kit.font(bold) return bold and B.F.text600 or B.F.text500 end
function kit.text(parent, value, props, bold, size)
  local label = UI.text(parent, value, bold and "heading" or "label", "ink", { AutomaticSize = Enum.AutomaticSize.None, TextSize = size or 13 })
  if props then for key, v in pairs(props) do label[key] = v end end
  return label
end
function kit.entry(parent, size)
  local entry = Instance.new("TextBox")
  entry.BackgroundTransparency, entry.BorderSizePixel = 1, 0
  entry.FontFace = B.F.text500
  UI.fontKey[entry] = "text500"
  entry.TextSize = size or 13
  entry.TextXAlignment, entry.ClearTextOnFocus, entry.ClipsDescendants = Enum.TextXAlignment.Left, false, true
  Theme.bind(entry, "TextColor3", "ink")
  Theme.bind(entry, "PlaceholderColor3", "faint")
  entry.Parent = parent
  return entry
end
function kit.outline(frame) return UI.stroke(frame, "ink", "strokeA") end
function kit.corner(frame, radius) return UI.corner(frame, radius or kit.radius) end
function kit.menu(anchor, items) return UI.menu(anchor, items, { align = "right" }) end
Window.kits = { based = kit }
function Window.kit(frame)
  for name, other in pairs(Window.kits) do
    if name ~= "based" and other.owns and frame and other.owns(frame) then return other end
  end
  return kit
end
-- the kit of the look in use (for what sits on the HUD, outside any window)
function Window.activeKit() return Window.kits[Window.look()] or kit end

-- ---------------------------------------------------------------- command palette
local palette
function Window.palette()
  if palette then palette.close(); return end
  if not Window.built then return end
  if not Window.open then Window.show(true) end
  -- everything has to exist before it can be found
  for _, page in ipairs(Window.order) do ensureBuilt(page) end
  local scale = Window.scale
  local view = B.viewport()
  local veil = UI.new("TextButton", { Name = "Veil", Text = "", AutoButtonColor = false, Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0),
    BackgroundTransparency = 1, ZIndex = 70, Parent = UI.overlay })
  Motion.to(veil, "BackgroundTransparency", 0.62, "smooth")
  -- over the hub, wherever the hub has been dragged to
  local at, size = Window.holder.AbsolutePosition - UI.overlay.AbsolutePosition, Window.holder.AbsoluteSize
  local half = 270 * scale
  local holder = UI.frame(veil, { Name = "Palette", Size = UDim2.fromOffset(540, 0), AutomaticSize = Enum.AutomaticSize.Y, AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.fromOffset(math.clamp(at.X + size.X * 0.5, half + 12, math.max(half + 12, view.X - half - 12)), math.clamp(at.Y + 72 * scale, 16, math.max(16, view.Y - 420 * scale))),
    ZIndex = 71 })
  local sizer = Instance.new("UIScale"); sizer.Scale = scale * 0.95; sizer.Parent = holder
  Motion.to(sizer, "Scale", scale, "bouncy")
  local glass = UI.glass(holder, { level = "popover", radius = "rPanel", shadow = 60, shadowY = 26, props = { Size = UDim2.fromScale(1, 0), AutomaticSize = Enum.AutomaticSize.Y, Active = true } })
  local stack = UI.frame(glass, { Size = UDim2.fromScale(1, 0), AutomaticSize = Enum.AutomaticSize.Y })
  UI.list(stack, "y", 0)
  local top = UI.frame(stack, { Size = UDim2.new(1, 0, 0, 54), LayoutOrder = 1 })
  UI.icon(top, "search", 18, "sub", { Position = UDim2.new(0, 18, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5) })
  local box = UI.new("TextBox", { BackgroundTransparency = 1, Size = UDim2.new(1, -110, 1, 0), Position = UDim2.fromOffset(48, 0), Text = "", PlaceholderText = "Search every setting and tab",
    FontFace = B.F.text500, TextSize = 16, TextXAlignment = Enum.TextXAlignment.Left, ClearTextOnFocus = false, Theme = { TextColor3 = "ink", PlaceholderColor3 = "faint" }, Parent = top })
  UI.text(top, "esc", "mono", "faint", { Position = UDim2.new(1, -18, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5), TextSize = 11 })
  UI.divider(stack, 2)
  local list = UI.frame(stack, { Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 3 })
  UI.pad(list, 6)
  UI.list(list, "y", 2)
  local rows, results, cursor = {}, {}, 1
  local connection
  local api = {}
  function api.close()
    if not palette then return end
    palette = nil
    if connection then connection:Disconnect() end
    Motion.to(veil, "BackgroundTransparency", 1, "quick", function() veil:Destroy() end)
    holder:Destroy()
  end
  local function highlight()
    for index, row in ipairs(rows) do
      Motion.to(row, "BackgroundTransparency", index == cursor and T.fill2A or 1, "quick")
    end
  end
  local function run(result)
    if not result then return end
    api.close()
    if result.kind == "page" then Window.go(result.page.id); return end
    Window.go(result.page.id)
    task.delay(0.12, function()
      local entry = result.entry
      if not entry.row.frame.Parent then return end
      local scroller = result.page.frame
      local offset = (entry.row.frame.AbsolutePosition.Y - scroller.AbsolutePosition.Y + scroller.CanvasPosition.Y) - 90 * Window.scale
      result.page.scroll.to(offset)
      entry.row.flash()
    end)
  end
  local function refresh()
    for _, row in ipairs(rows) do row:Destroy() end
    table.clear(rows); table.clear(results)
    local query = box.Text
    local scored = {}
    for _, page in ipairs(Window.order) do
      local score = util.fuzzy(query, page.title)
      if score then scored[#scored + 1] = { kind = "page", page = page, label = page.title, sub = "Tab", icon = page.icon, score = score + 1.5 } end
    end
    for _, entry in ipairs(Window.index) do
      local score = util.fuzzy(query, entry.label)
      if not score and query ~= "" and entry.desc ~= "" then
        local other = util.fuzzy(query, entry.desc)
        score = other and other - 4 or nil
      end
      if score then
        scored[#scored + 1] = { kind = "control", page = entry.page, entry = entry, label = entry.label, sub = entry.page.title .. "  ›  " .. tostring(entry.section),
          icon = entry.page.icon, score = score }
      end
    end
    table.sort(scored, function(a, b) return a.score > b.score end)
    for index = 1, math.min(8, #scored) do
      local result = scored[index]
      results[index] = result
      local row = UI.frame(list, { Size = UDim2.new(1, 0, 0, 40), LayoutOrder = index, Theme = { BackgroundColor3 = "ink" } })
      UI.corner(row, "rSmall")
      UI.icon(row, result.icon, 16, result.kind == "page" and "accent" or "sub", { Position = UDim2.new(0, 12, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5) })
      UI.text(row, result.label, "label", "ink", { Position = UDim2.new(0, 40, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5), TextSize = 13.5 })
      UI.text(row, result.sub, "caption", "faint", { Position = UDim2.new(1, -12, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5), TextSize = 11.5 })
      UI.button(row, { hover = function(on) if on then cursor = index; highlight() end end, click = function() run(result) end })
      rows[index] = row
    end
    if #scored == 0 then
      local row = UI.frame(list, { Size = UDim2.new(1, 0, 0, 56) })
      UI.text(row, "No setting matches “" .. query .. "”", "body", "faint", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
      rows[1] = row
    end
    cursor = 1
    highlight()
  end
  box:GetPropertyChangedSignal("Text"):Connect(B.safe("palette", refresh))
  connection = UIS.InputBegan:Connect(B.safe("palette.key", function(input)
    if input.KeyCode == Enum.KeyCode.Down then cursor = math.min(#results, cursor + 1); highlight()
    elseif input.KeyCode == Enum.KeyCode.Up then cursor = math.max(1, cursor - 1); highlight()
    elseif input.KeyCode == Enum.KeyCode.Return or input.KeyCode == Enum.KeyCode.KeypadEnter then run(results[cursor])
    elseif input.KeyCode == Enum.KeyCode.Escape then api.close() end
  end))
  veil.Activated:Connect(function() api.close() end)
  palette = api
  refresh()
  box:CaptureFocus()
  UI.sfx("open", 0.6)
end
end
do -- 11_hud.lua
-- ============================================================================
--  11 hud      the island: what is left on screen when the hub is hidden
-- ============================================================================
local S, util, Motion, Theme, T, UI, Config, Window = B.S, B.util, B.Motion, B.Theme, B.T, B.UI, B.Config, B.Window
local Hud = {}
B.Hud = Hud

function Hud.ping()
  local ok, value = pcall(function() return B.LP:GetNetworkPing() * 1000 end)
  if ok and value and value > 0 then return value end
  local ok2, item = pcall(function() return S.Stats.Network.ServerStatsItem["Data Ping"]:GetValue() end)
  return ok2 and item or 0
end
function Hud.fps() return 1 / math.max(Motion.smoothDt, 1 / 1000) end

function Hud.start()
  if Hud.island then return end
  local holder = UI.frame(Window.hud, { Name = "Island", AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 12), Size = UDim2.fromOffset(0, 34),
    AutomaticSize = Enum.AutomaticSize.X, Visible = false })
  local sizer = Instance.new("UIScale"); sizer.Scale = Window.scale; sizer.Parent = holder
  local glass = UI.glass(holder, { level = "popover", radius = 17, shadow = 22, shadowY = 8, grain = false,
    props = { Size = UDim2.fromScale(0, 1), AutomaticSize = Enum.AutomaticSize.X } })
  local body = UI.pressable(glass, { Name = "Body", Size = UDim2.fromScale(0, 1), AutomaticSize = Enum.AutomaticSize.X })
  UI.pad(body, 0, 14, 0, 14)
  UI.list(body, "x", 9, { v = "Center" })
  UI.text(body, B.BRAND.word, "brand", "ink", { TextSize = 11, LayoutOrder = 1 })
  local dot = UI.frame(body, { Size = UDim2.fromOffset(4, 4), LayoutOrder = 2, Theme = { BackgroundColor3 = "accent" }, BackgroundTransparency = 0 })
  UI.corner(dot, true)
  local stats = UI.text(body, "", "mono", "sub", { TextSize = 11, LayoutOrder = 3 })
  local key = UI.text(body, "", "mono", "faint", { TextSize = 11, LayoutOrder = 4 })
  Hud.island = holder
  local shown = false
  local function show(on)
    on = on and Config.get("app.island") ~= false and not (B.Unnamed and (B.Unnamed.active() or B.Unnamed.open))
      and not (B.Novoline and (B.Novoline.active() or B.Novoline.open))
    if on == shown then return end
    shown = on
    if on then
      holder.Visible = true
      holder.Position = UDim2.new(0.5, 0, 0, -44)
      Motion.to(holder, "Position", UDim2.new(0.5, 0, 0, 12), "bouncy")
    else
      Motion.to(holder, "Position", UDim2.new(0.5, 0, 0, -48), "quick", function() if not shown then holder.Visible = false end end)
    end
  end
  UI.wire(body, {
    hover = function(on) Motion.to(sizer, "Scale", Window.scale * (on and 1.05 or 1), "snappy") end,
    click = function() Window.show(true) end,
  })
  Window.onShow:connect(function(open) show(not open) end)
  Config.on("app.island", function() show(not Window.open) end)
  Config.on("app.gui", function() show(not Window.open) end)
  -- in flight the island reads the speed instead: it is the number worth watching then
  local tick = 0
  Motion.every(function()
    if not shown then return end
    tick += 1
    local flight = B.Flight
    if flight and flight.state == "flying" then
      local _, speed, mach = flight.status()
      stats.Text = util.comma(speed) .. " st/s" .. ((mach or 0) >= 1 and string.format("  ·  Mach %.1f", mach) or "")
    elseif tick % 4 == 0 or stats.Text == "" or string.find(stats.Text, "st/s", 1, true) then
      stats.Text = string.format("%d fps  ·  %d ms", math.floor(Hud.fps() + 0.5), math.floor(Hud.ping() + 0.5))
    end
    key.Text = Config.keyLabel(Config.get("app.key.menu"))
  end, 8, "hud.island")
  show(not Window.open)
end
end
do -- 50_settings.lua
-- ============================================================================
--  50 settings   the hub's own preferences and the Settings tab
-- ============================================================================
local S, util, Motion, Theme, T, UI, Config, Window, Controls = B.S, B.util, B.Motion, B.Theme, B.T, B.UI, B.Config, B.Window, B.Controls
local Assets = B.Assets
local Prefs = {}
B.Prefs = Prefs
B.pages = B.pages or {}

function Prefs.define()
  Config.define("app.scheme", "dark")
  Config.define("app.accent", Theme.accents[1].color)
  Config.define("app.glass", 60)
  Config.define("app.blur", true)
  Config.define("app.radius", 100)
  Config.define("app.scale", 100)
  Config.define("app.motion", "full")
  Config.define("app.motionSpeed", 100)
  Config.define("app.sfx", true)
  Config.define("app.sfxVolume", 45)
  Config.define("app.sfxSet", "novoline")
  Config.define("app.key.menu", "RightControl")
  Config.define("app.key.panic", "None")
  Config.define("app.freeCursor", true)
  -- (2026-11-18, the owner's word: "make the based hub menu always stays minimised by default". The hub starts with
  -- its window down; the menu key and the island bring it up)
  Config.define("app.startMinimised", true)
  Config.define("app.window.x", 0.5)
  Config.define("app.window.y", 0.5)
  Config.define("app.intro", "lotion")
  Config.define("app.introVolume", 50)
  -- The lotion film is everyone's intro from 2026-11-09 (the brand film was, from 2026-10-29), for
  -- whoever had picked another one too: it is set once, on the first launch of this build, and from
  -- then on the pick is theirs again.
  -- (a counter of its own, kept out of share codes: a pasted code never sets it back)
  Config.define("app.introSeen", 0)
  Config.unshared("app.introSeen")
  if (Config.get("app.introSeen") or 0) < 2 then
    Config.set("app.intro", "lotion")
    Config.set("app.introSeen", 2)
  end
  -- (the intros taken out on 2026-11-09: a pick of one, from an old share code say, is the lotion film)
  local gone = { reel = true, lock = true, prates = true, signal = true }
  if gone[Config.get("app.intro")] then Config.set("app.intro", "lotion") end
  Config.define("app.filmQuality", "auto")
  Config.define("app.island", true)
  Config.define("app.keyHud", true)
  Config.define("app.toasts", true)
  Config.define("app.scrollbar", "always")
  Config.define("app.font", "inter")
end

function Prefs.apply()
  Theme.state.scheme = Config.get("app.scheme")
  Theme.state.accent = Config.get("app.accent")
  Theme.state.glass = Config.get("app.glass") / 100
  Theme.state.radius = Config.get("app.radius") / 100
  Theme.apply()
  Motion.reduced = Config.get("app.motion") == "reduced"
  Motion.speed = Config.get("app.motionSpeed") / 100
  UI.sfxOn = Config.get("app.sfx")
  UI.sfxVolume = Config.get("app.sfxVolume") / 100
  UI.sfxSet = Config.get("app.sfxSet")
  UI.setScrollbar(Config.get("app.scrollbar"))
  B.Blur.set(Config.get("app.blur") == true)
  if Config.get("app.font") ~= "inter" then UI.setLetters(Config.get("app.font")) end
  Config.on("app.font", function(v) UI.setLetters(v) end)
  Motion.every(UI.sweepFontsSome, 10, "ui.fontsweep")

  Config.on("app.scheme", function(v) Theme.set({ scheme = v }) end)
  Config.on("app.accent", function(v) Theme.set({ accent = v }) end)
  Config.on("app.glass", function(v) Theme.set({ glass = v / 100 }) end)
  Config.on("app.radius", function(v) Theme.set({ radius = v / 100 }) end)
  Config.on("app.blur", function(v) B.Blur.set(v == true) end)
  Config.on("app.scale", function() Window.rescale() end)
  Config.on("app.motion", function(v) Motion.reduced = v == "reduced" end)
  Config.on("app.motionSpeed", function(v) Motion.speed = v / 100 end)
  Config.on("app.sfx", function(v) UI.sfxOn = v end)
  Config.on("app.sfxVolume", function(v) UI.sfxVolume = v / 100 end)
  Config.on("app.sfxSet", function(v) UI.sfxSet = v end)
  Config.on("app.scrollbar", function(v) UI.setScrollbar(v) end)
  Config.on("app.freeCursor", function(v) if Window.modal then Window.modal.Visible = Window.open and v end end)
end

-- the accent row: a swatch per preset, then a free colour
local function accentPicker(frame)
  local row = UI.frame(frame, { Size = UDim2.new(1, -28, 0, 30), Position = UDim2.fromOffset(14, 8) })
  UI.list(row, "x", 9, { v = "Center" })
  local rings = {}
  local function mark()
    local current = Config.get("app.accent")
    for color, ring in pairs(rings) do
      Motion.to(ring, "Transparency", util.toHex(color) == util.toHex(current) and 0 or 1, "quick")
    end
  end
  for index, accent in ipairs(Theme.accents) do
    local swatch = UI.frame(row, { Size = UDim2.fromOffset(24, 24), BackgroundTransparency = 0, BackgroundColor3 = accent.color, LayoutOrder = index })
    UI.corner(swatch, true)
    local ring = Instance.new("UIStroke")
    ring.Thickness = 2
    ring.Transparency = 1
    pcall(function() ring.BorderStrokePosition = Enum.BorderStrokePosition.Outer end)
    pcall(function() ring.BorderOffset = UDim.new(0, 2) end)
    Theme.bind(ring, "Color", "ink")
    ring.Parent = swatch
    rings[accent.color] = ring
    local scale = UI.scaleOf(swatch)
    local hit = UI.button(swatch, {
      hover = function(on) Motion.to(scale, "Scale", on and 1.12 or 1, "snappy") end,
      click = function() UI.sfx("click", 0.6); Config.set("app.accent", accent.color) end,
    })
    UI.tooltip(hit, accent.label)
  end
  local custom = UI.frame(row, { Size = UDim2.fromOffset(24, 24), LayoutOrder = 99, Theme = { BackgroundColor3 = "ink", BackgroundTransparency = "fill2A" } })
  UI.corner(custom, true)
  UI.icon(custom, "pipette", 13, "sub", { AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5) })
  local hit = UI.button(custom, { click = function()
    Controls.colorPopover(custom, Config.get("app.accent"), function(color) Config.set("app.accent", color) end)
  end })
  UI.tooltip(hit, "Any colour")
  Config.on("app.accent", function() if row.Parent then mark() end end)
  mark()
end

B.pages[#B.pages + 1] = function()
  Window.page({ id = "settings", title = "Settings", icon = "settings", group = "Hub", order = 900, eyebrow = "Make it yours", build = function(page)
    local look = page:section({ title = "Appearance", icon = "palette", desc = "Changes apply live." })
    -- (2026-11-11: the Unnamed and Novoline looks are out of the build for now, _retired/menus-1111: with neither in,
    -- there is nothing to pick between and the row is not made; what was saved for it stays as it was saved)
    if B.Unnamed or B.Novoline then
      local styles = { { "based", "Bluen" } }
      if B.Unnamed then styles[#styles + 1] = { "unnamed", "Unnamed" } end
      if B.Novoline then styles[#styles + 1] = { "novoline", "Novoline" } end
      look:dropdown({ id = "app.gui", label = "Menu style", desc = B.Novoline and "Bluen, the old dark menu, or Novoline's dock." or "Bluen, or the Unnamed menu.", options = styles })
    end
    do
      local families = {}
      for _, spec in ipairs(UI.FAMILIES) do families[#families + 1] = { spec[1], spec[2] } end
      look:dropdown({ id = "app.font", label = "Font", desc = "Every word in the Bluen look.", options = families })
    end
    if B.Unnamed then look:color({ id = "app.unnamed.accent", label = "Unnamed colour", desc = "The line on the Unnamed menu's boxes." }) end
    if B.Unnamed and B.Unnamed.FONTS then
      local faces = {}
      for _, spec in ipairs(B.Unnamed.FONTS) do faces[#faces + 1] = { spec[1], spec[2] } end
      look:dropdown({ id = "app.unnamed.font", label = "Unnamed font", desc = "Its letters, and its key list's. Monocraft is the Minecraft one.", options = faces })
      look:slider({ id = "app.unnamed.textSize", label = "Unnamed text size", tip = "Text size in the Unnamed look.", min = 80, max = 130, step = 5, suffix = "%" })
      look:toggle({ id = "app.unnamed.watermark", label = "Unnamed watermark", desc = "Name, game, fps, ping and time, top left.", bindable = false })
    end
    if B.Novoline then
      look:color({ id = "app.novoline.accent", label = "Novoline colour", desc = "Its one colour: icons, checks, the island's dot." })
      local faces = {}
      for _, spec in ipairs(B.Novoline.FONTS) do faces[#faces + 1] = { spec[1], spec[2] } end
      look:dropdown({ id = "app.novoline.font", label = "Novoline font", desc = "Gotham is Novoline's own.", options = faces })
      look:slider({ id = "app.novoline.size", label = "Novoline size", tip = "How big the Novoline look is.", min = 70, max = 140, step = 5, suffix = "%" })
      look:slider({ id = "app.novoline.shade", label = "Novoline shade", desc = "How dark the game goes behind it.", min = 0, max = 100, step = 5, suffix = "%" })
      look:toggle({ id = "app.novoline.dock", label = "Keep the dock", desc = "The pill stays at the bottom while it is shut.", bindable = false })
      look:toggle({ id = "app.novoline.island", label = "Novoline island", desc = "The song and every message, top middle.", bindable = false })
    end
    look:segmented({ id = "app.scheme", label = "Scheme", tip = "Dark, light or midnight.", options = { { "dark", "Graphite" }, { "midnight", "Midnight" }, { "light", "Porcelain" } }, width = 232 })
    look:custom({ height = 46, name = "Accent", build = accentPicker })
    look:slider({ id = "app.glass", label = "Glass", desc = "Clear on the left, tinted on the right.", min = 0, max = 100, step = 1, suffix = "%" })
    look:toggle({ id = "app.blur", label = "Real blur", desc = "Blurs the game behind the window. Needs graphics quality 8 or higher.", bindable = false })
    look:slider({ id = "app.radius", label = "Corner roundness", tip = "How round the corners are.", min = 40, max = 130, step = 5, suffix = "%" })
    look:slider({ id = "app.scale", label = "Interface size", desc = "It never grows past the screen.", min = 60, max = 160, step = 5, suffix = "%" })
    look:segmented({ id = "app.scrollbar", label = "Scrollbar", desc = "Drag it, or click beside it to jump.", options = { { "always", "Always" }, { "auto", "Scrolling" }, { "off", "Off" } }, width = 232 })

    local motion = page:section({ title = "Motion & sound", icon = "activity" })
    motion:segmented({ id = "app.motion", label = "Animations", tip = "Full or reduced motion.", options = { { "full", "Full" }, { "reduced", "Reduced" } }, width = 170 })
    motion:slider({ id = "app.motionSpeed", label = "Animation speed", tip = "How fast animations play.", min = 40, max = 250, step = 10, suffix = "%" })
    motion:toggle({ id = "app.sfx", label = "Interface sounds", tip = "Clicks and pops in the menu.", bindable = false })
    motion:slider({ id = "app.sfxVolume", label = "Sound volume", tip = "How loud the menu sounds are.", min = 0, max = 100, step = 5, suffix = "%" })
    motion:segmented({ id = "app.sfxSet", label = "Menu sounds", tip = "Open, close, tab and notification sounds.", options = { { "novoline", "Novoline" }, { "based", "Bluen" } },
      default = "novoline", width = 190 })

    local keys = page:section({ title = "Keys", icon = "keyboard" })
    keys:keybind({ tip = "The key that opens and closes the hub.", id = "app.key.menu", label = "Open / close the hub" })
    keys:keybind({ id = "app.key.panic", label = "Panic", desc = "Unloads Bluen instantly: every feature off, nothing left behind." })
    keys:toggle({ id = "app.freeCursor", label = "Free the cursor while open", desc = "Unlocks the mouse in first-person games.", bindable = false })
    keys:note({ icon = "info", text = "Right-click any toggle or button to bind it to a key." })

    local screen = page:section({ title = "On screen", icon = "monitor", desc = "What stays up while the hub is hidden." })
    screen:toggle({ id = "app.startMinimised", label = "Start minimised", desc = "The hub loads with its window down. The menu key opens it.", bindable = false })
    screen:toggle({ id = "app.island", label = "The island", desc = "The pill at the top: frame rate and ping, and your speed in flight. Click it to bring the hub back.", bindable = false })

    if B.Board and B.Board.installed() then
      B.Board.define()
      local board = page:section({ title = "Home board", icon = "film", desc = "The film on the Home tab." })
      board:toggle({ id = "home.board", label = "Play it", desc = "Silent in the card. Off shows a still instead.", bindable = false })
      board:toggle({ id = "home.boardHover", label = "Open on hover", desc = "Rest the mouse on it: it comes forward and the sound comes in.", bindable = false })
      board:slider({ id = "home.boardVolume", label = "Sound volume", tip = "How loud the Home film is.", min = 0, max = 100, step = 5, suffix = "%" })
      board:slider({ id = "home.boardSize", label = "Opened size", desc = "How much of the screen's width it takes.", min = 30, max = 90, step = 2, suffix = "%" })
      board:dropdown({ id = "home.boardQuality", label = "Picture", tip = "Ultra or HD for the Home film.", options = { { "ultra", "Ultra · 1820×1024" }, { "hd", "HD · 1024×576" } } })
    end

    local data = page:section({ title = "Configs", icon = "save", desc = "Feature settings save on their own." })
    data:segmented({ label = "Saved", tip = "One config for every game, or one per game.", options = { { "global", "One for all games" }, { "game", "One per game" } }, default = Config.profileMode, width = 232,
      changed = function(mode) if mode ~= Config.profileMode then Config.setMode(mode); Window.toast({ title = "Config scope changed", text = mode == "game" and "This game now has its own settings." or "One config for every game.", icon = "save" }) end end })
    data:button({ label = "Copy share code", desc = "Everything: settings, colours, font, keys.", text = "Copy", run = function()
      local code = Config.export()
      if not code then Window.toast({ title = "Could not make a code", text = "A setting here cannot be written down.", icon = "triangle-alert", tone = "warn" })
      elseif B.clipboard(code) then Window.toast({ title = "Share code copied", text = "Whoever pastes it gets your exact setup.", icon = "clipboard", tone = "ok" })
      else Window.toast({ title = "Could not copy", text = "This executor has no clipboard access.", icon = "triangle-alert", tone = "warn" }) end
    end })
    local importBox
    importBox = data:input({ label = "Paste share code", tip = "Paste a code to copy someone's setup.", placeholder = "Paste, then Enter", width = 170, changed = function(text)
      if text == "" then return end
      local ok, count, note = Config.import(text)
      importBox.box.Text = ""
      Window.toast(ok and { title = "Setup loaded", text = count .. " settings and keys applied." .. (note and (" " .. note) or ""), icon = "circle-check", tone = "ok" }
        or { title = "Code not read", text = note or "That text could not be read.", icon = "triangle-alert", tone = "warn", time = 6 })
    end })
    data:button({ label = "Reset every feature", desc = "Appearance and keys are kept.", text = "Reset", style = "danger", run = function()
      Config.resetAll(false)
      Window.toast({ title = "Features reset", text = "Everything is back to its default.", icon = "rotate-ccw" })
    end })

    local about = page:section({ title = "About", icon = "info" })
    local function stat(label, value)
      about:custom({ height = 34, build = function(frame)
        UI.text(frame, label, "label", "sub", { Position = UDim2.new(0, 14, 0.5, 0), AnchorPoint = Vector2.new(0, 0.5), TextSize = 13 })
        local text = UI.text(frame, "", "mono", "ink", { Position = UDim2.new(1, -14, 0.5, 0), AnchorPoint = Vector2.new(1, 0.5) })
        if type(value) == "function" then
          text.Text = tostring(value())
          Motion.every(function() if text.Parent and Window.showing("settings") then text.Text = tostring(value()) end end, 2, "about")
        else text.Text = tostring(value) end
      end })
    end
    stat("Version", B.VERSION .. "  ·  " .. B.BUILD)
    stat("Executor", B.executor)
    stat("Assets", function() return Assets.lite and "missing (lite mode)" or (Assets.calls .. " registered this session") end)
    stat("Started in", function() return (B.bootMs or 0) .. " ms" end)
    stat("Faults", function() return #B.faults end)
    about:button({ label = "Copy diagnostics", tip = "Copies info that helps fix a problem.", text = "Copy", run = function()
      local lines = { "Bluen " .. B.VERSION .. " " .. B.BUILD, "executor " .. B.executor, "place " .. game.PlaceId .. " universe " .. game.GameId }
      for _, fault in ipairs(B.faults) do lines[#lines + 1] = string.format("[%.1fs] %s: %s", fault.at, fault.scope, fault.message) end
      B.clipboard(table.concat(lines, "\n"))
      Window.toast({ title = "Diagnostics copied", icon = "clipboard", tone = "ok" })
    end })
    about:button({ label = "Unload Bluen", tip = "Turns the hub off completely.", text = "Unload", style = "danger", bindable = false, run = function() B.unload() end })
    about:note({ text = "Fonts: Inter, Instrument Serif, Archivo, Geist Mono (SIL OFL). Icons: Lucide (ISC). Interface sounds: Kenney (CC0)." })
  end })
end
end

-- ============================================================================
--  library surface: what boot did for the hub, as a call
-- ============================================================================
do
local S, Config, Window, Assets = B.S, B.Config, B.Window, B.Assets
local UIS = S.UserInputService
B.pages = B.pages or {}
B.started = false

-- Bluen.page{ id, title, group, icon, eyebrow, order, build = function(page) end }: before or after start
function B.page(spec)
  if Window.built then
    local page = Window.page(spec)
    Window.rebuildNav()
    return page
  end
  B.pages[#B.pages + 1] = function() Window.page(spec) end
  return nil
end
function B.notify(spec) return Window.toast(spec) end
function B.show(on) Window.showActive(on ~= false) end
function B.toggle() Window.toggleActive() end

-- Bluen.start{ Title = "Bluen", Tag = "library", Open = true }
function B.start(opts)
  opts = opts or {}
  if B.started then return B end
  B.started = true
  if opts.Title then B.BRAND.word = string.upper(opts.Title) end
  if opts.Tag then B.BRAND.tag = opts.Tag end
  local function boot()
    if not game:IsLoaded() then game.Loaded:Wait() end
    Config.init()
    Assets.init()
    B.Prefs.define()
    B.Prefs.apply()
    Window.build()
    for _, register in ipairs(B.pages) do B.try("pages", register) end
    Window.rebuildNav()
    Config.listen()
    B.connect(UIS.InputBegan, function(input)
      if Config.capturing then return end
      if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
      if UIS:GetFocusedTextBox() then return end
      local name = input.KeyCode.Name
      if name == Config.get("app.key.menu") then
        Window.toggleActive()
      elseif name == Config.get("app.key.panic") then
        B.unload()
      elseif input.KeyCode == Enum.KeyCode.K and (UIS:IsKeyDown(Enum.KeyCode.LeftControl) or UIS:IsKeyDown(Enum.KeyCode.RightControl)) and Window.open then
        Window.palette()
      end
    end, "boot.keys")
    -- the other tabs are assembled a card per frame in the background
    task.delay(0.7, function() if B.alive then Window.prebuild() end end)
    if opts.Open ~= false then Window.showActive(true) end
    if B.Hud then B.try("hud", B.Hud.start) end
    B.bootMs = math.floor((os.clock() - B.bootClock) * 1000)
  end
  task.spawn(function()
    local ok, err = xpcall(boot, function(e) return tostring(e) .. "\n" .. debug.traceback("", 2) end)
    if not ok then
      B.fault("boot", err)
      pcall(function() S.StarterGui:SetCore("SendNotification", { Title = "Bluen", Text = "Failed to start: " .. string.sub(tostring(err), 1, 120), Duration = 8 }) end)
    end
  end)
  return B
end
end
return B
