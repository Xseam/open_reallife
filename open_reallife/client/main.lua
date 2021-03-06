screenX, screenY = guiGetScreenSize()

addEventHandler("onClientResourceStart", resourceRoot, function()

  setDevelopmentMode(_CONFIG["devmode"], _CONFIG["browserdebugging"])

  setBlurLevel(_CONFIG["blurlevel"])
  setFPSLimit(_CONFIG["fpslimit"])

  GUI.Init()
  HUD.Init()
  Translations:Init()


  addEventHandler("onClientBrowserCreated", GUI.browser,
    function()
      GUI.InitRendering()

    end
  )
  addEventHandler ( "onClientBrowserDocumentReady" , GUI.browser,
  	function ( url )
        triggerServerEvent("onClientReady", localPlayer)
        GUI.InitReady()
  	end
  )
end)


bindKey("m", "down", function()
  if(Cursor.IsShowing())then
    Cursor.Show()
  else
    Cursor.Hide()
  end
end)
