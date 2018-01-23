local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
end

function scene:show( event )
    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end
end

function scene:hide( event )
    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
		display.newGroup()
		local rect = display.newRect( 0, 0, 100, 100 )
		rect:setFillColor( 0.5 )

		local group = display.newGroup()
		group:insert( rect )
    elseif ( phase == "did" ) then

	end
end

function scene:destroy( event )
    local sceneGroup = self.view

end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
