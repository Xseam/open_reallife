Login = {}

Login.Display = function()
  local window = GUIWindow.Create(0, 0, 100, 100, "Login")
  local username = GUITextBox.Create(0, 0, 100, 100, window)
end
addEvent("onClientDisplayLogin", true)
addEventHandler("onClientDisplayLogin", root, Login.Display)
