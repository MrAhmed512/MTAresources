local w, h = guiGetScreenSize();
isShaderBlackWhite = false
nameImg = nil
StartTick = nil
milisec = nil
function renderShader()
if (screenSrc2 ~= nil or screenSrc2) and (screenShader2 ~= nil or screenShader2) then
	dxSetRenderTarget();
	dxUpdateScreenSource(screenSrc2);
	dxDrawImage(0,0,w,h,screenShader2);
	end
end

function startRender(name)
    screenShader2 = dxCreateShader( "fx/" .. name .. ".fx" );
	screenSrc2 = dxCreateScreenSource( w, h );
	if screenShader2 and screenSrc2 then
			dxSetShaderValue( screenShader2, "screenSource", screenSrc2 )
			addEventHandler( "onClientRender", getRootElement( ), renderShader );
	end
	isShaderBlackWhite = true
end
function FxImg()
    local CurrentTick = getTickCount(); -- get the current tick; 
    local Progress = (CurrentTick-StartTick)/milisec; -- calculate the progress between 0 and 1 using simple math; 
    local Alpha = interpolateBetween(0,0,0,255,0,0,Progress,"InOutQuad"); 
	dxDrawImage(0,0,w,h, "img/" .. nameImg .. ".png",0,0,0,tocolor(255,255,255,Alpha))
end
function startFxImg(name,sec)
	if not sec or sec == nil then
	sec = 0
	else
	milisec = sec * 1000
	end
	nameImg = name
	StartTick = getTickCount(); -- get the current tick as the start tick of the animation; 
    EndTick = StartTick+milisec;
	addEventHandler("onClientRender", getRootElement(), FxImg)
end
function stopFxImg()
name = nil
removeEventHandler("onClientRender", getRootElement(), FxImg)
end
function stopRender()
	if screenShader2 and screenSrc2 then
		destroyElement( screenShader2 );
		destroyElement( screenSrc2 );
		screenShader2, screenSrc2 = nil, nil;
		removeEventHandler( "onClientRender", getRootElement( ), renderShader );
		isShaderBlackWhite = false
	end
end
fileDelete("shaders.lua")