hs.window.animationDuration = 0

hs.grid.setMargins(hs.geometry.size(0, 0))
hs.grid.setGrid(hs.geometry.size(2, 2), 'Built%-in', nil)

-- Reload Hammerspoon

hs.hotkey.bind({ 'alt', 'cmd', 'shift' }, 'r', function()
	hs.console.clearConsole()
	hs.reload()
end)

-- Snap windows

local snapKeys = {'alt', 'ctrl'}

hs.hotkey.bind(snapKeys, 'left', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.x
	windowFrame.y = maxSize.y
	windowFrame.w = maxSize.w / 2
	windowFrame.h = maxSize.h

	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(snapKeys, 'right', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.w / 2
	windowFrame.y = maxSize.y
	windowFrame.w = maxSize.w / 2
	windowFrame.h = maxSize.h

	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(snapKeys, 'up', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.x
	windowFrame.y = maxSize.y
	windowFrame.w = maxSize.w
	windowFrame.h = maxSize.h

	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(snapKeys, 'down', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.x
	windowFrame.y = maxSize.h / 2
	windowFrame.w = maxSize.w
	windowFrame.h = maxSize.h / 2

	currentWindow:setFrame(windowFrame)
end)

-- Corner windows

local cornerKeys = {'ctrl', 'shift'}

hs.hotkey.bind(cornerKeys, '1', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.x
	windowFrame.y = maxSize.y
	windowFrame.w = maxSize.w / 2
	windowFrame.h = maxSize.h / 2

	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(cornerKeys, '2', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.w / 2
	windowFrame.y = maxSize.y
	windowFrame.w = maxSize.w / 2
	windowFrame.h = maxSize.h / 2

	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(cornerKeys, '3', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.x
	windowFrame.y = maxSize.h / 2
	windowFrame.w = maxSize.w / 2
	windowFrame.h = maxSize.h / 2

	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(cornerKeys, '4', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = maxSize.w / 2
	windowFrame.y = maxSize.h / 2
	windowFrame.w = maxSize.w / 2
	windowFrame.h = maxSize.h / 2

	currentWindow:setFrame(windowFrame)
end)

-- Nudge windows

local nudgeKeys = {'alt', 'ctrl', 'cmd'}

hs.hotkey.bind(nudgeKeys, 'left', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = windowFrame.x - (maxSize.w / 10)
	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(nudgeKeys, 'right', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.x = windowFrame.x + (maxSize.w / 10)
	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(nudgeKeys, 'up', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.y = windowFrame.y - (maxSize.h / 10)
	currentWindow:setFrame(windowFrame)
end)

hs.hotkey.bind(nudgeKeys, 'down', function()
	local currentWindow = hs.window.focusedWindow()
	local windowFrame = currentWindow:frame()
	local maxSize = currentWindow:screen():frame()

	windowFrame.y = windowFrame.y + (maxSize.h / 10)
	currentWindow:setFrame(windowFrame)
end)

-- Focus windows

local focusKeys = {'alt', 'ctrl', 'cmd'}

hs.hotkey.bind(focusKeys, '1', function()
	hs.application.get('Google Chrome'):activate()
end)

hs.hotkey.bind(focusKeys, '2', function()
	hs.application.get('Sublime Text'):activate()
end)

hs.hotkey.bind(focusKeys, '3', function()
	hs.application.get('iTerm2'):activate()
end)

hs.hotkey.bind(focusKeys, '4', function()
	hs.application.get('Slack'):activate()
end)
