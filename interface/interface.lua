--PROGRAMMED BY MRAHMED

--VARS
fontTextGUI = guiCreateFont("/fonts/openSans.ttf", 8)
fontTextLabel = dxCreateFont("/fonts/openSans.ttf", 10)
fontText = dxCreateFont("/fonts/openSans.ttf", 11.65)
fontTab = dxCreateFont("/fonts/openSans.ttf", 11)
errorFont = dxCreateFont("/fonts/openSans.ttf", 8)
titleFont = dxCreateFont("fonts/openSans.ttf", 20)
OpenSans = dxCreateFont("fonts/openSans.ttf")
OpenLight = dxCreateFont("fonts/openLight.ttf")
AbelRegular = dxCreateFont("fonts/AbelRegular.ttf", 11.65)
OswaldBold = dxCreateFont("fonts/AbelRegular.ttf", 11.65)
ElMessiriRegular = dxCreateFont("fonts/ElMessiriRegular.ttf", 11.65)
PacificoRegular = dxCreateFont("fonts/PacificoRegular.ttf", 11.65)
Tajawal = dxCreateFont("fonts/Tajawal.ttf", 11.65)
tabTajawal = dxCreateFont("fonts/Tajawal.ttf", 11.65)
Changa = dxCreateFont("fonts/Changa.ttf", 11.65)
Kalam = dxCreateFont("fonts/Kalam.ttf", 11.65)
AbelRegularCombo = dxCreateFont("fonts/AbelRegular.ttf", 11.65)
AbelRegularGrid = dxCreateFont("fonts/AbelRegular.ttf")
labelAbel = guiCreateFont("fonts/AbelRegular.ttf", 11.65)
--TABLES
	gridlists = {}
--FUNCTIONS
local d = dxDrawLine
function dxDrawLine(x,y,x2,y2,color, width, postGUI)
	d(x,y,x2,y2,color, width, postGUI)
	local r = bitExtract ( color, 0, 8 ) 
	local g = bitExtract ( color, 8, 8 ) 
	local b = bitExtract ( color, 16, 8 ) 
	local a = bitExtract ( color, 24, 8 )
	if y == y2 then
		for i = 1, (x2-x) / 2 do
			d(x, y,x2 - ((x2-x) / 2) - i, y2, tocolor(0,0,0,2), width, postGUI)
		end
	end
	if x == x2 then
		for i = 1, (y2-y) / 2 do
			d(x, y,x2, y2 - ((y2-y) / 2) - i, tocolor(0,0,0,2), width, postGUI)
		end
	end
end
function isMouseInPosition ( x, y, width, height ) 
    if ( not isCursorShowing ( ) ) then 
        return false 
    end 
  
    local sx, sy = guiGetScreenSize ( ) 
    local cx, cy = getCursorPosition ( ) 
    local cx, cy = ( cx * sx ), ( cy * sy ) 
    if ( cx >= x and cx <= x + width ) and ( cy >= y and cy <= y + height ) then 
        return true 
    else 
        return false 
    end 
end 
function convertUI(Element)
	if isElement(Element) then
		setElementData(Element, "useUI", true)
		local attachedElements = getElementChildren(Element)
		for k, v in pairs(attachedElements) do
			convertUI(v)
		end
		if getElementType(Element) == "gui-window" then
			guiWindowSetSizable(Element, false)
			guiWindowSetMovable(Element, false)
			guiSetProperty(Element, "Alpha", 0)
		elseif getElementType(Element) == "gui-button" then
			guiSetProperty(Element, "InheritsAlpha", 0)
			guiSetProperty(Element, "Alpha", 0)
		elseif getElementType(Element) == "gui-edit" then
			guiSetProperty(Element, "InheritsAlpha", 0)
			guiSetProperty(Element, "Alpha", 0)
			guiEditSetReadOnly( Element, true )
		elseif getElementType(Element) == "gui-radiobutton" then
			guiSetProperty(Element, "InheritsAlpha", 0)
			guiSetProperty(Element, "Alpha", 0)
		elseif getElementType(Element) == "gui-label" then
			guiSetFont(Element, fontTextGUI)
			guiSetText(Element, string.upper(guiGetText(Element)))
			guiSetProperty(Element, "InheritsAlpha", 1)
			guiSetProperty(Element, "Alpha", 1)
		elseif getElementType(Element) == "gui-checkbox" then
			guiSetProperty(Element, "InheritsAlpha", 0)
			guiSetProperty(Element, "Alpha", 0)
		elseif getElementType(Element) == "gui-scrollbar" then
			guiSetProperty(Element, "InheritsAlpha", 0)
			guiSetProperty(Element, "Alpha", 0)
		elseif getElementType(Element) == "gui-tabpanel" then
			guiSetProperty(Element, "InheritsAlpha", 0)
			guiSetProperty(Element, "Alpha", 0)
		--[[elseif getElementType(Element) == "gui-gridlist" then
			local parent = getElementParent(Element)
			local x,y = guiGetPosition(Element, false)
			local w,h = guiGetSize(Element, false)
			local gridlist = dxCreateGridlist(x,y,w,h, false, parent)
			destroyElement(Element)--]]
		else
			guiSetProperty(Element, "InheritsAlpha", 1)
			guiSetProperty(Element, "Alpha", 1)
		end
	end
end
function dxCreateGridlist(x,y,w,h, reltive, parent)
	local gridlist = createElement( "dx-gridlist", #getElementsByType("dx-gridlist") + 1 )
	setElementData(gridlist, "dx:pos", {x,y})
	setElementData(gridlist, "dx:size", {w,h})
	setElementData(gridlist, "parent", parent)
	setElementData(gridlist, "Visible", true)
	return gridlist
end
function dxGetVisible(Element)
	return getElementData(Element, "Visible")
end
function dxSetVisible(Element, bool)
	setElementData(Element, "Visible", bool)
end
function setFont(Element, font)
	if isElement(Element) then
		setElementData(Element, "Font", font)
	end
end
function hideTitleBar(Element)
	if isElement(Element) then
		if getElementType(Element) == "gui-window" then
			setElementData(Element, "hideTitleBar", true)
		end
	end
end
function addCloseButton(Element)
	if isElement(Element) then
		if getElementType(Element) == "gui-window" then
			setElementData(Element, "useCloseButton", true)
		end
	end
end
function setLabelBackGround(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-label" then
			setElementData(Element, "backgroundLabel", color)
		end
	end
end
function setWindowColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-window" then
			setElementData(Element, "background", color)
		end
	end
end
function setButtonColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-button" then
			setElementData(Element, "buttonColor", color )
		end
	end
end
function setButtonHoverLineColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-button" then
			setElementData(Element, "buttonHoverColor", color )
		end
	end
end
function setButtonClickColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-button" then
			setElementData(Element, "buttonClickColor", color )
		end
	end
end
function AddButtonIcon(Element, icon, size)
	if isElement(Element) then
		if getElementType(Element) == "gui-button" then
			setElementData(Element, "icon", icon )
			setElementData(Element, "icon:size", size )
		end
	end
end
function setEditColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-edit" then
			setElementData(Element, "editColor", color )
		end
	end
end
function setEditExample(Element, text)
	if isElement(Element) then
		if getElementType(Element) == "gui-edit" then
			setElementData(Element, "example", text )
		end
	end
end
function setEditHoverLineColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-edit" then
			setElementData(Element, "editHoverColor", color )
		end
	end
end
function setEditClickColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-edit" then
			setElementData(Element, "editClickColor", color )
		end
	end
end
function AddEditIcon(Element, icon, size)
	if isElement(Element) then
		if getElementType(Element) == "gui-edit" then
			setElementData(Element, "icon", icon )
			setElementData(Element, "icon:size", size )
		end
	end
end
function AddWindowIcon(Element, icon)
	if isElement(Element) then
		if getElementType(Element) == "gui-window" then
			setElementData(Element, "icon", icon )
			setElementData(Element, "icon:size", 0 )
		end
	end
end
function setTitleLineColor(Element, color)
	if isElement(Element) then
		if getElementType(Element) == "gui-window" then
			setElementData(Element, "colorTitleLine", color )
		end
	end
end
function setHoverButtonType(Element, type)
	if isElement(Element) then
		if getElementType(Element) == "gui-button" then
			setElementData(Element, "hoverType", type )
		end
	end
end

function windowFooter(Element, error1, color)
	setElementData(Element, "Error", error1)
	setElementData(Element, "Error:color", color)
	errorTick = getTickCount()
end
function guiCreateToolTip(Element, text)
	if isElement(Element) then
		setElementData(Element, "Tooltip",text)
	end
end
function getElementMargin(element)
     parent = getElementParent(element)
    if (isElement(parent)) and (getElementType(parent) ~= "guiroot") then
        parentVisiblity = guiGetVisible(parent)
        if (getElementType(parent) == "gui-tab") then
             tabPanel = getElementParent(parent)
            margin_x2, margin_y2 = 0, 0
            if (isElement(getElementParent(tabPanel))) then
                margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
            end
            margin_x, margin_y = guiGetPosition(tabPanel, false)
            margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
        else
            margin_x, margin_y = guiGetPosition(getElementParent(element), false)
        end
        return margin_x,margin_y
    end
end
function drawUI()
	for i, Element in ipairs(getElementsByType("gui-window")) do
		if getElementData(Element, "useUI") then
			if guiGetVisible(Element) then
			  setFont = getElementData(Element, "Font") or fontText
			  hideTitleBar = getElementData(Element, "hideTitleBar")
			  background = getElementData(Element, "background") or tocolor(27,27,27,200)
			  icon = getElementData(Element, "icon")
			  colorTitleLine = getElementData(Element, "colorTitleLine") or tocolor(33, 143, 137)
			  useCloseButton = getElementData(Element, "useCloseButton")
			  error = getElementData(Element, "Error")
			  errorColor = getElementData(Element, "Error:color")
			  x, y = guiGetPosition(Element, false)
			  w, h = guiGetSize(Element, false)
			  parent = getElementParent(Element)
			  text = guiGetText(Element)
			  local widthText = dxGetTextWidth(text, 1, titleFont)
			  --drawUI
			  dxDrawRectangle(x, y, w, h,  background, false, false)
			  if not hideTitleBar then
					titleHeight = dxGetFontHeight(1, titleFont)
				  dxDrawLine(x + 7, y + 4, x + 7, y + 4+ titleHeight,  colorTitleLine, 7)
				  dxDrawText(text, x + 12, y + 4, x + 12, y + 4+ titleHeight, tocolor(255, 255, 255), 1, titleFont, "left", "center")
				  	if icon then
						dxDrawImage(x + 15 + widthText, y + 4, titleHeight, titleHeight, icon,0,0,0)
				  end
			  end
			  if error then
				offset = dxGetFontHeight(1, errorFont)
				nowErr = getTickCount()
				hE, wE = interpolateBetween(h, 0, 0, h+offset, w, 0, (nowErr - errorTick) / ((errorTick + 500) - errorTick), "Linear")
				dxDrawLine(x, y+h, x + wE, y+h, tocolor(255,255,255),  2)
				dxDrawRectangle(x, y + h, w, hE - h,  background, false, false)
				dxDrawText(error, x, y+h, x+w, y+hE, errorColor, 1, errorFont, "center", "center")
			  end
				if useCloseButton then
					colorAlpha = 200
					if isMouseInPosition(x + w - 32, y, 32,32) then
						exports.main:drawTooltip("Close Window")
						colorAlpha = 255
						if getKeyState("mouse1") then
							if isElement(Element) then
								destroyElement(Element)
							end
						end
					end
					dxDrawImage(x + w - 20, y + 2, 18,18,"images/close.png",0,0,0,tocolor(33, 143, 137,colorAlpha))
				end
				if isElement(Element) then
				  if getElementData(Element, "Tooltip") then
						if isMouseInPosition(x,y,w,h) then
							exports.main:drawTooltip(getElementData(Element, "Tooltip"))
						end
				  end
				 end
			 end
		end
	end
	for i, Element in ipairs(getElementsByType("gui-tabpanel")) do
		if getElementData(Element, "useUI") then
		if guiGetVisible(Element) then
			TabHeight = guiGetProperty( Element, "AbsoluteTabHeight" )
			TextPedding = guiGetProperty( Element, "AbsoluteTabTextPadding" )
			xParent, yParent = guiGetPosition(Element, false)
			wParent, hParent = guiGetSize(Element, false)
			 parent = getElementParent(Element)
			 local parentVisiblity = true
			 local parentOfParentVisiblity = true
				if (isElement(parent)) then
					parentVisiblity = guiGetVisible(parent)
					if (getElementType(parent) == "gui-tab") then
						local tabPanel = getElementParent(parent)
						margin_x2, margin_y2 = 0, 0
						if (isElement(getElementParent(tabPanel))) then
							margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
							parentOfParentVisiblity = guiGetVisible(getElementParent(tabPanel))
						end
						margin_x, margin_y = guiGetPosition(tabPanel, false)
						margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
					else
						margin_x, margin_y = guiGetPosition(getElementParent(Element), false)
					end
				end
			xParent, yParent = xParent + margin_x, yParent + margin_y
			xTabPanel, yTabPanel = xParent, yParent
			dxDrawRectangle(xTabPanel, yTabPanel + TabHeight, wParent, hParent - TabHeight,tocolor(15, 15, 15,150),false)
			for r,tab in ipairs(getElementChildren(Element)) do
				parent = getElementParent(tab) 
				textTab = guiGetText(tab)
				length = dxGetTextWidth(textTab,1, "default-normal")
				hover = isMouseInPosition(xTabPanel, yTabPanel, length + TextPedding * 2, TabHeight)
				EditColor = tocolor(25,25,25,175)
				yyTabPanel, TTabHeight = yTabPanel, TabHeight
				if hover then
					EditColor = tocolor(25,25,25,150)
				end
				if(guiGetSelectedTab(parent)==tab)then
					EditColor = tocolor(25,25,25,225)
					yyTabPanel = yTabPanel - 5
					TTabHeight = TabHeight + 5
				end
				dxDrawRectangle(xTabPanel, yyTabPanel , length + TextPedding * 2, TTabHeight,EditColor,false)
				if(guiGetSelectedTab(parent)==tab)then
					dxDrawLine(xTabPanel, yyTabPanel + TTabHeight , xTabPanel + length + TextPedding * 2, yyTabPanel + TTabHeight, tocolor(33, 143, 137), 2, false)
				end
				dxDrawText(textTab, xTabPanel, yyTabPanel, xTabPanel + length + TextPedding * 2, yyTabPanel+TTabHeight, tocolor(255,255,255,255), 1, fontTab, "center", "center", false, false, false)
				xTabPanel = length + xTabPanel + TextPedding + TextPedding
			end
		end
		end
		end
	for i, Element in ipairs(getElementsByType("gui-label")) do
		if getElementData(Element, "backgroundLabel") then
		if guiGetVisible(Element) then
			 color = getElementData(Element, "backgroundLabel")
			 x, y = guiGetPosition(Element, false)
			 w, h = guiGetSize(Element, false)
			 parent = getElementParent(Element)
			 local parentVisiblity = true
			 local parentOfParentVisiblity = true
				if (isElement(parent)) then
					parentVisiblity = guiGetVisible(parent)
					if (getElementType(parent) == "gui-tab") then
						local tabPanel = getElementParent(parent)
						margin_x2, margin_y2 = 0, 0
						if (isElement(getElementParent(tabPanel))) then
							margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
							parentOfParentVisiblity = guiGetVisible(getElementParent(tabPanel))
						end
						margin_x, margin_y = guiGetPosition(tabPanel, false)
						margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
					else
						margin_x, margin_y = guiGetPosition(getElementParent(Element), false)
					end
				end
			 x, y = x + margin_x, y + margin_y
			 text = guiGetText(Element)
			 status = guiGetEnabled(Element)
			 textWidth = dxGetTextWidth(text, 1, fontText)
			 --drawUI
				dxDrawRectangle(x, y, w, h, color)
			 end
		end
	end
	for i, Element in ipairs(getElementsByType("gui-button")) do
		if getElementData(Element, "useUI") then
		if guiGetVisible(Element) then
			 setFont = getElementData(Element, "Font") or fontText
			 color = getElementData(Element, "buttonColor") or tocolor(50,50,50, 225)
			 hoverColor = getElementData(Element, "buttonHoverColor") or tocolor(33, 143, 137, 255)
			 clickColor = getElementData(Element, "buttonClickColor") or tocolor(255, 255, 255, 15)
			 icon = getElementData(Element, "icon")
			 sizeImg = getElementData(Element, "icon:size")
			 postGUI = getElementData(Element, "postGUI")
			 hoverType = getElementData(Element, "hoverType") or 1
			 x, y = guiGetPosition(Element, false)
			 w, h = guiGetSize(Element, false)
			 parent = getElementParent(Element)
			 margin_x, margin_y = 0,0
			 local parentVisiblity = true
			 local parentOfParentVisiblity = true
				if (isElement(parent)) and getElementType(parent) ~= "guiroot" then
					parentVisiblity = guiGetVisible(parent)
					if (getElementType(parent) == "gui-tab") then
						local tabPanel = getElementParent(parent)
						margin_x2, margin_y2 = 0, 0
						if (isElement(getElementParent(tabPanel))) then
							margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
							parentOfParentVisiblity = guiGetVisible(getElementParent(tabPanel))
						end
						margin_x, margin_y = guiGetPosition(tabPanel, false)
						margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
					else
						margin_x, margin_y = guiGetPosition(getElementParent(Element), false)
					end
				end
			 x, y = x + margin_x, y + margin_y
			 text = guiGetText(Element)
			 status = guiGetEnabled(Element)
			 textWidth = dxGetTextWidth(text, 1, fontText)
			 lessAlpha = 0
			 --drawUI
			 if getElementData(Element, "color") then
				colorE = split(text, ",")
				exports.main:dxDrawLinedRectangle(x,y,w,h, tocolor(0,0,0,255), 2, postGUI)
				dxDrawRectangle(x, y, w, h, tocolor(colorE[1], colorE[2], colorE[3], colorE[4]), postGUI)
			 else
			  if not status then
				color = tocolor(0,0,0,255)
			  end
			  dxDrawRectangle(x, y, w, h,  color, postGUI, false)
			  if isMouseInPosition(x, y, w, h) and hoverBtn == Element and status then
				local now = getTickCount()
				lineWidth, lessAlpha, alphaSS = interpolateBetween(0, lessAlpha, 0, w, 10, 50, (now - startBtn) / ((startBtn + 200) - startBtn), "Linear")
				if hoverType == 1 then
					dxDrawLine(x, y + h, x + lineWidth, y + h, hoverColor, 2, postGUI)
				elseif hoverType == 2 then
					dxDrawRectangle(x, y, w, h,  tocolor(255, 255, 255, alphaSS), postGUI, false)
				end
			  end
			  if clicked == Element then
				nowClicked = getTickCount()
				 wC, lessAlpha = interpolateBetween(0, lessAlpha, 0, w, 20, 0, (nowClicked - clickedStartBtn) / ((clickedStartBtn + 200) - clickedStartBtn), "Linear")
				alphaS = interpolateBetween(100, 0, 0, 0, 0, 0, (nowClicked - clickedStartBtn) / ((clickedStartBtn + 700) - clickedStartBtn), "Linear")
				dxDrawRectangle(x, y, wC, h,  tocolor(255, 255, 255, alphaS), postGUI, false)
			  end
			   dxDrawText(text, x, y, x + w, y + h, tocolor(255, 255, 255, 255), 1, fontText, "center", "center",false,false,postGUI)
			  if icon then
				marginImg = w/2-textWidth/2-(sizeImg+5)
				if text == "" then
					marginImg = w/2 - sizeImg /2
				end
				dxDrawImage(x + marginImg, y + h/2-(sizeImg - 1)/2, sizeImg, sizeImg, icon, 0, 0, 0, tocolor(255,255,255,200-lessAlpha), postGUI)
			  end
			   if getElementData(Element, "Tooltip") then
						if isMouseInPosition(x,y,w,h) then
							exports.main:drawTooltip(getElementData(Element, "Tooltip"))
						end
				  end
			end
		end
		end
	end
	for i, Element in ipairs(getElementsByType("gui-edit")) do
		if getElementData(Element, "useUI") then
		if guiGetVisible(Element) then
			 setFont = getElementData(Element, "Font") or fontText
			 color = getElementData(Element, "editColor") or tocolor(50,50,50, 200)
			 hoverColor = getElementData(Element, "editHoverColor") or tocolor(33, 143, 137, 255)
			 clickColor = getElementData(Element, "editClickColor") or tocolor(23, 23, 66, 255)
			 icon = getElementData(Element, "icon")
			 sizeImg = getElementData(Element, "icon:size")
			 exampleTxt = getElementData(Element, "example")
			  x, y = guiGetPosition(Element, false)
			  w, h = guiGetSize(Element, false)
			  status = guiGetEnabled(Element)
			  parent = getElementParent(Element)
			  margin_x, margin_y = 0, 0
				local parentVisiblity = true
				local parentOfParentVisiblity = true
				if (isElement(parent)) then
					parentVisiblity = guiGetVisible(parent)
					if (getElementType(parent) == "gui-tab") then
						local tabPanel = getElementParent(parent)
						margin_x2, margin_y2 = 0, 0
						if (isElement(getElementParent(tabPanel))) then
							margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
							parentOfParentVisiblity = guiGetVisible(getElementParent(tabPanel))
						end
						margin_x, margin_y = guiGetPosition(tabPanel, false)
						margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
					else
						margin_x, margin_y = guiGetPosition(getElementParent(Element), false)
					end
				end
				x, y = x + margin_x, y + margin_y
				if guiGetProperty(Element, "MaskText") == "True" then
					text = string.gsub(guiGetText(Element), "(.)", function(w) return "*" end) 
				else
					text = guiGetText(Element)
				end
				textWidth = dxGetTextWidth(text, 1, fontText)
				textstartx = x + 3
				lessAlpha = 0
				if icon then
					textstartx = x + sizeImg
				end
			  --drawUI
				if not status then
					color = tocolor(0,0,0,255)
				end
			   dxDrawRectangle(x, y, w, h,  color, false, false)
			   if isMouseInPosition(x, y, w, h) and hoverEdit == Element then
				now = getTickCount()
				lineWidth, lessAlpha,xC = interpolateBetween(0, lessAlpha, x + w/2, w, 10, x, (now - startEdit) / ((startEdit + 500) - startEdit), "Linear")
				dxDrawLine(xC, y + h, xC + lineWidth, y + h, hoverColor, 2)
			  end
			   alignx = "center"
			   aligny = "center"
			   textstartx = x
			  if selectedEdit == Element then
				nowClicked = getTickCount()
				wC,xCC = interpolateBetween(0, x + (w / 2), 0, w, x, 0, (nowClicked - clickedStartEdit) / ((clickedStartEdit + 500) - clickedStartEdit), "Linear")
				dxDrawLine(xCC, y + h, xCC + wC, y + h, tocolor(255,255,255), 2)
				lessAlpha = 50
				if not icon then
					sizeImg = 0
				end				
				textstartx = x + sizeImg
				alignx = "left"
				aligny = "top"
			  end
			   if icon then
				dxDrawImage(x, y + h/2-(sizeImg - 1)/2, sizeImg, sizeImg, icon, 0, 0, 0, tocolor(255,255,255,200-lessAlpha), true)
			  end
				 if guiGetProperty(Element, "MaskText") == "True" then
					alphaEye = 255
					if isMouseInPosition(x + w - 25,y + h/2-(20 - 1)/2, 20, 20) then
						alphaEye = 200
						if getKeyState("mouse1") then
							text = guiGetText(Element)
						end
					end
					dxDrawImage(x + w - 25,y + h/2-(20 - 1)/2, 20, 20, "images/eye.png",0,0,0,tocolor(255,255,255,alphaEye))
				 end
				if text == "" and exampleTxt then
					 dxDrawText(exampleTxt, textstartx, y, x + w, y + h, tocolor(225, 225, 225, 175), 0.7, fontText, alignx, aligny, true)
				end
			   dxDrawText(text, textstartx, y, x + w, y + h, tocolor(225, 225, 225, 255), 1, fontText, alignx, "center", true)
			   if selectedEdit == Element then
					if showcaret then
						dxDrawRectangle(math.min(textstartx + textWidth , textstartx +w - 3), y + h/4, 1, h/4*2, tocolor(255,255,255,195))
					end
			  end
			   if getElementData(Element, "Tooltip") then
						if isMouseInPosition(x,y,w,h) then
							exports.main:drawTooltip(getElementData(Element, "Tooltip"))
						end
				  end
		end
		end
	end
	for i, Element in ipairs(getElementsByType("gui-checkbox")) do
		if getElementData(Element, "useUI") then
		if guiGetVisible(Element) then
			 setFont = getElementData(Element, "Font") or fontText
			 color = getElementData(Element, "buttonColor")
			 hoverColor = getElementData(Element, "buttonHoverColor")
			 clickColor = tocolor(255, 255, 255, 15)
			 x, y = guiGetPosition(Element, false)
			 w, h = guiGetSize(Element, false)
			 parent = getElementParent(Element)
			 local parentVisiblity = true
			 local parentOfParentVisiblity = true
				if (isElement(parent)) then
					parentVisiblity = guiGetVisible(parent)
					if (getElementType(parent) == "gui-tab") then
						local tabPanel = getElementParent(parent)
						margin_x2, margin_y2 = 0, 0
						if (isElement(getElementParent(tabPanel))) then
							margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
							parentOfParentVisiblity = guiGetVisible(getElementParent(tabPanel))
						end
						margin_x, margin_y = guiGetPosition(tabPanel, false)
						margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
					else
						margin_x, margin_y = guiGetPosition(getElementParent(Element), false)
					end
				end
			 x, y = x + margin_x, y + margin_y
			 text = guiGetText(Element)
			 status = guiGetEnabled(Element)
			 textWidth = dxGetTextWidth(text, 1, fontText)
			 --drawUI
			  if not status then
				color = tocolor(0,0,0,255)
			  end
			  color = tocolor(255,255,255,255)
			  if guiCheckBoxGetSelected(Element) then
			    color = tocolor(255,255,255,255)
			  end
			  if isMouseInPosition(x, y, w,h ) then
				color = tocolor(255,255,255,200)
			  end
			  if guiCheckBoxGetSelected(Element) then
				dxDrawImage(x, y + h/2-(15 - 1)/2 , 15, 15, "images/correct2.png", 0, 0, 0,  color, false, false)
			else
				dxDrawImage(x, y  + h/2-(15 - 1)/2 , 15, 15, "images/circle2.png", 0, 0, 0,  color, false, false)
			 end
			  dxDrawText(text, x + 20, y, x + 20, y + h, color, 1, fontText, "left", "center")
			   if getElementData(Element, "Tooltip") then
						if isMouseInPosition(x,y,w,h) then
							exports.main:drawTooltip(getElementData(Element, "Tooltip"))
						end
				  end
			  end
		end
	end
	for i, Element in ipairs(getElementsByType("gui-radiobutton")) do
		if getElementData(Element, "useUI") then
		if guiGetVisible(Element) then
			 color = getElementData(Element, "backgroundLabel")
			 x, y = guiGetPosition(Element, false)
			 w, h = guiGetSize(Element, false)
			 parent = getElementParent(Element)
			 local parentVisiblity = true
			 local parentOfParentVisiblity = true
				if (isElement(parent)) then
					parentVisiblity = guiGetVisible(parent)
					if (getElementType(parent) == "gui-tab") then
						local tabPanel = getElementParent(parent)
						margin_x2, margin_y2 = 0, 0
						if (isElement(getElementParent(tabPanel))) then
							margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
							parentOfParentVisiblity = guiGetVisible(getElementParent(tabPanel))
						end
						margin_x, margin_y = guiGetPosition(tabPanel, false)
						margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
					else
						margin_x, margin_y = guiGetPosition(getElementParent(Element), false)
					end
				end
			 x, y = x + margin_x, y + margin_y
			 text = guiGetText(Element)
			 status = guiGetEnabled(Element)
			 textWidth = dxGetTextWidth(text, 1, fontText)
			 --drawUI
							  if not status then
				color = tocolor(0,0,0,255)
			  end
			  color = tocolor(255,255,255,255)
			  if guiRadioButtonGetSelected(Element) then
			    color = tocolor(255,255,255,255)
			  end
			  if isMouseInPosition(x, y, w,h ) then
				color = tocolor(255,255,255,200)
			  end
			  if guiRadioButtonGetSelected(Element) then
				dxDrawImage(x, y + h/2-(15 - 1)/2 , 15, 15, "images/radio.png", 0, 0, 0,  color, false, false)
			else
				dxDrawImage(x, y  + h/2-(15 - 1)/2 , 15, 15, "images/emptyradio.png", 0, 0, 0,  color, false, false)
			 end
			  dxDrawText(text, x + 20, y, x + 20, y + h, color, 1, fontText, "left", "center")
			   if getElementData(Element, "Tooltip") then
						if isMouseInPosition(x,y,w,h) then
							exports.main:drawTooltip(getElementData(Element, "Tooltip"))
						end
				  end
			 end
			 end
		end
	for i, Element in ipairs(getElementsByType("gui-scrollbar")) do
		if getElementData(Element, "useUI") then
			if guiGetVisible(Element) then
			 x, y = guiGetPosition(Element, false)
			 w, h = guiGetSize(Element, false)
			 parent = getElementParent(Element)
			 local parentVisiblity = true
			 local parentOfParentVisiblity = true
				if (isElement(parent)) then
					parentVisiblity = guiGetVisible(parent)
					if (getElementType(parent) == "gui-tab") then
						local tabPanel = getElementParent(parent)
						margin_x2, margin_y2 = 0, 0
						if (isElement(getElementParent(tabPanel))) then
							margin_x2, margin_y2 = guiGetPosition(getElementParent(tabPanel), false)
							parentOfParentVisiblity = guiGetVisible(getElementParent(tabPanel))
						end
						margin_x, margin_y = guiGetPosition(tabPanel, false)
						margin_x, margin_y = margin_x+margin_x2, margin_y+margin_y2+25
					else
						margin_x, margin_y = guiGetPosition(getElementParent(Element), false)
					end
				end
			 x, y = x + margin_x, y + margin_y
			 w = w - 60
			 comboValue = ((w / 100) * guiScrollBarGetScrollPosition(Element))
			 r,g,b = 255,255,255
			if isMouseInPosition(x + 20 + comboValue , y, 15, h) and hoverBar then
				local nowBar = getTickCount()
				r,g,b = interpolateBetween(125 , 125, 125, 33, 143, 137, (nowBar - startBar) / ((startBar + 750) - startBar), "Linear")
			end	
			btnclr = tocolor(r,g,b,255)
			dxDrawLine(x + 20, y + (h /2), x + 20 + w + 15, y + (h /2), tocolor(255, 255, 255,255), 2) 
			dxDrawRectangle(x + 20 + comboValue , y, 15, h, btnclr, false) 
			end
		end
	end
		
end
addEventHandler("onClientRender", root, drawUI)
addEventHandler("onElementDestroy", getRootElement(), function ()
  if getElementType(source) == "gui-gridlist" then
	if getElementData(source, "useUI") then
		gridlists[source] = {}
	end
  end
end)
--EVENTS
function GUIEdit_ClientClick (btn, st)
    if btn == "left" and st == "down" then
		guiSetInputEnabled ( false )
        selectedEdit = nil
		if isTimer(caret) then
			killTimer(caret)
		end
        for k, Element in pairs (getElementsByType("gui-edit")) do
			local x, y = guiGetPosition(Element, false)
			local w, h = guiGetSize(Element, false)
			local mx, my = getElementMargin(Element)
            if (isMouseInPosition(x+mx, y+my, w, h)) and getElementData(Element, "useUI") then
                selectedEdit = Element
				guiSetInputEnabled ( true )
				showcaret = true
				caret = setTimer(function()
					if showcaret then
						showcaret = false
					else
						showcaret = true
					end
				end,300,0)
				clickedStartEdit = getTickCount()
            end
        end
    end
end
addEventHandler("onClientClick", root, GUIEdit_ClientClick)
function GUIEdit_CharacterPress(character)
    if (selectedEdit ~= nil) and getElementData(selectedEdit, "useUI") then
        local text = guiGetText(selectedEdit)
		if string.len(character) == 1 then
			text = text .. character
			guiSetText(selectedEdit, text)
		end
    end
end
addEventHandler("onClientCharacter", root, GUIEdit_CharacterPress)
function GUIEdit_backspace(button, press)
    if (selectedEdit ~= nil) and getElementData(selectedEdit, "useUI") then
		if press and button == "backspace" then
			local text = guiGetText(selectedEdit)
			if text ~= "" then
				text = text:sub( 1, #text - 1 )
				guiSetText(selectedEdit, text)
			end
		end
    end
end
addEventHandler("onClientKey", root, GUIEdit_backspace)
function GUIEdit_paste(button, press)
    if (selectedEdit ~= nil) and getElementData(selectedEdit, "useUI") then
		if press then
			local text = guiGetText(selectedEdit)
				if getKeyState("v") and getKeyState("lctrl") then
					addEvent('returnClipBoard',true)
					addEventHandler('returnClipBoard',localPlayer,function(value)
					   guiSetText(selectedEdit, text .. value)
					end);
				end
		end
    end
end
addEventHandler("onClientKey", root, GUIEdit_paste)
addEventHandler( "onClientMouseEnter", root, 
    function(_,_)
        if getElementType(source) == "gui-button" and guiGetEnabled(source) == true then
			startBtn = getTickCount()
			hoverBtn = source
			
		elseif getElementType(source) == "gui-edit" and guiGetEnabled(source) == true then
			startEdit = getTickCount()
			hoverEdit = source
		elseif getElementType(source) == "gui-scrollbar" and guiGetEnabled(source) == true then
			startBar = getTickCount()
			hoverBar = true
		end
    end
)
	addEventHandler( "onClientMouseLeave", root, 
    function()
        if getElementType(source) == "gui-button" and guiGetEnabled(source) == true then
			startBtn = getTickCount()
			hoverBtn = false
		elseif getElementType(source) == "gui-edit" and guiGetEnabled(source) == true then
			startEdit = getTickCount()
			hoverEdit = false
		elseif getElementType(source) == "gui-scrollbar" and guiGetEnabled(source) == true then
			startBar = getTickCount()
			hoverBar = false
		end
    end
)
 addEventHandler( "onClientGUIMouseDown", getRootElement( ),
    function ( btn, x, y )
		 if getElementType(source) == "gui-button" and guiGetEnabled(source) == true then
			clicked = source
			clickedStartBtn = getTickCount()
		elseif getElementType(source) == "gui-checkbox" and guiGetEnabled(source) == true then
			clicked = source
			clickedStartCheck = getTickCount()
		end
    end
);

addEventHandler( "onClientGUIMouseUp", getRootElement( ),
    function ( btn, x, y )
		 if getElementType(source) == "gui-button" and guiGetEnabled(source) == true then
			setTimer(function()
				clicked = false
				clickedStartBtn = 0
			end, 600,1)
		elseif getElementType(source) == "gui-checkbox" and guiGetEnabled(source) == true then
			setTimer(function()
				clicked = false
				clickedStartCheck = getTickCount()
			end, 600,1)
		end
    end
);
function Cursor()
	showCursor(not isCursorShowing())
end
bindKey("m", "down", Cursor)
--
fileDelete("interface.lua")