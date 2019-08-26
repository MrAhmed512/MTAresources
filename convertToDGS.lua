--Programmed by MrAhmed
function guiCreateWindow(...)
    local window = exports.dgs:dgsCreateWindow(...)
    return window
end
function guiCreateButton(...)
    local button = exports.dgs:dgsCreateButton(...)
    return button
end
function guiCreateGridlist(...)
    local grid = exports.dgs:dgsCreateGridList(...)
    return grid
end
function guiCreateLabel(...)
    local label = exports.dgs:dgsCreateLabel(...)
    return label
end
function guiCreateProgressBar(...)
    local bar = exports.dgs:dgsCreateProgressBar(...)
    return bar
end
function guiCreateRadioButton(...)
    local radio = exports.dgs:dgsCreateRadioButton(...)
    return radio
end
function guiCreateTabPanel(...)
    local tabpanel = exports.dgs:dgsCreateTabPanel(...)
    return tabpanel
end
function guiCreateStaticImage(...)
    local image = exports.dgs:dgsCreateImage(...)
    return image
end
function guiCreateEdit(...)
    local edit = exports.dgs:dgsCreateEdit(...)
    return edit
end
function guiCreateComboBox(...)
    local combo = exports.dgs:dgsCreateComboBox(...)
    return combo
end
function guiCreateCheckBox(...)
    local check = exports.dgs:dgsCreateCheckBox(...)
    return check
end
local addE = addEventHandler
function addEventHandler(eventName, attachedTo, handlerFunction, getPropagated)
	if eventName == "onClientGUIClick" then eventName = "onDgsMouseClick"
	elseif eventName == "onClientMouseEnter" then eventName = "onDgsMouseEnter"
	elseif eventName == "onClientMouseLeave" then eventName = "onDgsMouseLeave"
	elseif eventName == "onClientMouseMove" then eventName = "onDgsCursorMove"
	elseif eventName == "onClientMouseWheel" then eventName = "onDgsMouseWheel"
	elseif eventName == "onClientGUITabSwitched" then eventName = "onDgsTabSelect"
	elseif eventName == "onClientGUIScroll" then eventName = "onDgsScrollBarScrollPositionChange"
	elseif eventName == "onClientGUISize" then eventName = "onDgsSizeChange"
	elseif eventName == "onClientGUIMove" then eventName = "onDgsPositionChange"
	elseif eventName == "onClientGUIFocus" then eventName = "onDgsFocus"
	elseif eventName == "onClientGUIDoubleClick" then eventName = "onDgsMouseDoubleClick"
	elseif eventName == "onClientGUIComboBoxAccepted" then eventName = "onDgsComboBoxAccepted"
	elseif eventName == "onClientGUIMouseDown" then eventName = "onDgsMouseClick"
	elseif eventName == "onClientGUIMouseUp" then eventName = "onDgsMouseClick"
	elseif eventName == "onClientGUIChanged" then eventName = "onDgsTextChange"
	elseif eventName == "onClientGUIBlur" then eventName = "onDgsBlur"
	elseif eventName == "onClientGUIAccepted" then eventName = "onDgsEditAccepted"
	end
	addE(eventName, attachedTo, handlerFunction, getPropagated)
end
