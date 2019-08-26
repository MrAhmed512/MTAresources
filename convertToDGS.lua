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
function guiCreateMemo(...)
    local memo = exports.dgs:dgsCreateMemo(...)
	return memo
end
function guiCreateScrollBar(...)
    local scroll = exports.dgs:dgsCreateScrollBar(...)
	return scroll
end
function guiCreateScrollPane(...)
    local scrollPane = exports.dgs:dgsCreateScrollPane(...)
	return scrollPane
end
function guiCreateTab(...)
    local tab = exports.dgs:dgsCreateTab(...)
	return tab
end
--
function guiSetPosition(...)
    return exports.dgs:dgsSetPosition(...)
end
function guiGetPosition(...)
    return exports.dgs:dgsGetPosition(...)
end
function getElementParent(...)
    return exports.dgs:dgsGetParent(...)
end
function setElementParent(...)
    return exports.dgs:dgsSetParent(...)
end
function getElementChild(...)
    return exports.dgs:dgsGetChild(...)
end
function getElementChildren(...)
    return exports.dgs:dgsGetChildren(...)
end
function guiGetSize(...)
    return exports.dgs:dgsGetSize(...)
end
function guiSetSize(...)
    return exports.dgs:dgsSetSize(...)
end
function getElementType(...)
    return exports.dgs:dgsGetType(...)
end
function guiGetProperty(...)
    return exports.dgs:dgsGetProperty(...)
end
function guiSetProperty(...)
    return exports.dgs:dgsSetProperty(...)
end
function guiGetText(...)
    return exports.dgs:dgsGetText(...)
end
function guiGetProperties(...)
    return exports.dgs:dgsGetProperties(...)
end
function guiGetVisible(...)
    return exports.dgs:dgsGetVisible(...)
end
function guiSetVisible(...)
    return exports.dgs:dgsSetVisible(...)
end
function guiGetEnabled(...)
    return exports.dgs:dgsGetEnabled(...)
end
function guiSetEnabled(...)
    return exports.dgs:dgsSetEnabled(...)
end
function guiGetAlpha(...)
    return exports.dgs:dgsGetAlpha(...)
end
function guiSetAlpha(...)
    return exports.dgs:dgsSetAlpha(...)
end
function guiGetFont(...)
    return exports.dgs:dgsGetFont(...)
end
function guiSetFont(...)
    return exports.dgs:dgsSetFont(...)
end
function guiGetText(...)
    return exports.dgs:dgsGetText(...)
end
function guiSetText(...)
    return exports.dgs:dgsSetText(...)
end
function guiCreateFont(...)
    return exports.dgs:dgsCreateFont(...)
end
function guiBringToFront(...)
    return exports.dgs:dgsBringToFront(...)
end
function guiCreateBrowser(...)
    return exports.dgs:dgsCreateBrowser(...)
end
function guiCheckBoxGetSelected(...)
    return exports.dgs:dgsCheckBoxGetSelected(...)
end
function guiCheckBoxSetSelected(...)
    return exports.dgs:dgsCheckBoxSetSelected(...)
end
function guiComboBoxAddItem(...)
    return exports.dgs:dgsComboBoxAddItem(...)
end
function guiComboBoxRemoveItem(...)
    return exports.dgs:dgsComboBoxRemoveItem(...)
end
function guiComboBoxSetItemText(...)
    return exports.dgs:dgsComboBoxSetItemText(...)
end
function guiComboBoxGetItemText(...)
    return exports.dgs:dgsComboBoxGetItemText(...)
end
function guiComboBoxClear(...)
    return exports.dgs:dgsComboBoxClear(...)
end
function guiComboBoxSetSelected(...)
    return exports.dgs:dgsComboBoxSetSelectedItem(...)
end
function guiComboBoxGetSelected(...)
    return exports.dgs:dgsComboBoxGetSelectedItem(...)
end
function guiEditGetMaxLength(...)
    return exports.dgs:dgsEditGetMaxLength(...)
end
function guiEditSetMaxLength(...)
    return exports.dgs:dgsEditSetMaxLength(...)
end
function guiEditSetReadOnly(...)
    return exports.dgs:dgsEditSetReadOnly(...)
end
function guiEditIsReadOnly(...)
    return exports.dgs:dgsEditGetReadOnly(...)
end
function guiEditSetMasked(...)
    return exports.dgs:dgsEditSetMasked(...)
end
function guiEditIsMasked(...)
    return exports.dgs:dgsEditGetMasked(...)
end
function guiGridListAddColumn(...)
    return exports.dgs:dgsGridListAddColumn(...)
end
function guiGridListGetColumnCount(...)
    return exports.dgs:dgsGridListGetColumnCount(...)
end
function guiGridListRemoveColumn(...)
    return exports.dgs:dgsGridListRemoveColumn(...)
end
function guiGridListGetColumnWidth(...)
    return exports.dgs:dgsGridListGetColumnWidth(...)
end
function guiGridListSetColumnWidth(...)
    return exports.dgs:dgsGridListSetColumnWidth(...)
end
function guiGridListGetColumnTitle(...)
    return exports.dgs:dgsGridListGetColumnTitle(...)
end
function guiGridListSetColumnTitle(...)
    return exports.dgs:dgsGridListSetColumnTitle(...)
end
function guiGridListAddRow(...)
    return exports.dgs:dgsGridListAddRow(...)
end
function guiGridListRemoveRow(...)
    return exports.dgs:dgsGridListRemoveRow(...)
end
function guiGridListClear(...)
    return exports.dgs:dgsGridListClear(...)
end
function guiGridListGetRowCount(...)
    return exports.dgs:dgsGridListGetRowCount(...)
end
function guiGridListSetItemText(...)
    return exports.dgs:dgsGridListSetItemText(...)
end
function guiGridListSetItemText(...)
    return exports.dgs:dgsGridListSetRowAsSection(...)
end
function guiGridListGetItemText(...)
    return exports.dgs:dgsGridListGetItemText(...)
end
function guiGridListGetSelectedItem(...)
    return exports.dgs:dgsGridListGetSelectedItem(...)
end
function guiGridListSetSelectedItem(...)
    return exports.dgs:dgsGridListSetSelectedItem(...)
end
function guiGridListSetItemColor(...)
    return exports.dgs:dgsGridListSetItemColor(...)
end
function guiGridListGetItemColor(...)
    return exports.dgs:dgsGridListGetItemColor(...)
end
function guiGridListSetItemData(...)
    return exports.dgs:dgsGridListSetItemData(...)
end
function guiGridListGetItemData(...)
    return exports.dgs:dgsGridListGetItemData(...)
end
function guiGridListSetSelectionMode(...)
    return exports.dgs:dgsGridListSetSelectionMode(...)
end
function guiGridListGetSelectedItems(...)
    return exports.dgs:dgsGridListGetSelectedItems(...)
end
function guiStaticImageLoadImage(...)
    return exports.dgs:dgsImageSetImage(...)
end
function guiMemoSetVerticalScrollPosition(...)
    return exports.dgs:dgsMemoSetScrollPosition(...)
end
function guiMemoGetVerticalScrollPosition(...)
    return exports.dgs:dgsMemoGetScrollPosition(...)
end
function guiMemoSetReadOnly(...)
    return exports.dgs:dgsMemoSetReadOnly(...)
end
function guiLabelSetColor(...)
    return exports.dgs:dgsLabelSetColor(...)
end
function guiLabelGetColor(...)
    return exports.dgs:dgsLabelGetColor(...)
end
function guiLabelSetHorizontalAlign(...)
    return exports.dgs:dgsLabelSetHorizontalAlign(...)
end
function guiLabelSetVerticalAlign(...)
    return exports.dgs:dgsLabelSetVerticalAlign(...)
end
function guiProgressBarGetProgress(...)
    return exports.dgs:dgsProgressBarGetProgress(...)
end
function guiProgressBarSetProgress(...)
    return exports.dgs:dgsProgressBarSetProgress(...)
end
function guiRadioButtonGetSelected(...)
    return exports.dgs:dgsRadioButtonGetSelected(...)
end
function guiRadioButtonSetSelected(...)
    return exports.dgs:dgsRadioButtonSetSelected(...)
end
function guiScrollBarSetScrollPosition(...)
    return exports.dgs:dgsScrollBarSetScrollPosition(...)
end
function guiScrollBarGetScrollPosition(...)
    return exports.dgs:dgsScrollBarGetScrollPosition(...)
end
function guiGetSelectedTab(...)
    return exports.dgs:dgsGetSelectedTab(...)
end
function guiSetSelectedTab(...)
    return exports.dgs:dgsSetSelectedTab(...)
end
function guiDeleteTab(...)
    return exports.dgs:dgsDeleteTab(...)
end
function guiWindowSetSizable(...)
    return exports.dgs:dgsWindowSetSizable(...)
end
function guiWindowSetMovable(...)
    return exports.dgs:dgsWindowSetMovable(...)
end
--
local addE = addEventHandler
function addEventHandler(eventName, attachedTo, handlerFunction, getPropagated, priority)
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
	elseif eventName == "onClientGUIChanged" then eventName = "onDgsTextChange"
	elseif eventName == "onClientGUIBlur" then eventName = "onDgsBlur"
	elseif eventName == "onClientGUIAccepted" then eventName = "onDgsEditAccepted"
	end
	addE(eventName, attachedTo, handlerFunction, getPropagated, priority )
end
