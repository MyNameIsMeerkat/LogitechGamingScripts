--Fallout4 script
-- MyNameIsMeerkat 2016 (https://github.com/MyNameIsMeerkat/LogitechGamingScripts)
function OnEvent(event, arg)
	
	--Choose the logitech device to use weapon M-State 2 for. 'lhc' for G13 or 'kb' for G15,19 etc
	logitech_device = "lhc";

	--Debug output
	current_mkey = GetMKeyState(logitech_device);
	OutputLogMessage("Starting M Profile = %d\n", current_mkey);
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
   
	--This is for M-State 2, G-Keys 1-10 are assigned to number keys 1-0 and once the number key is pressed
	-- and release the M-State is changed back to M-State 1 which is the normal WASD 
	if (current_mkey == 2 and event == "G_PRESSED" and arg == 1) then
		PressAndReleaseKey (0x02);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 2) then
		PressAndReleaseKey (0x03);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 3) then
		PressAndReleaseKey (0x04);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 4) then
		PressAndReleaseKey (0x05);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 5) then
		PressAndReleaseKey (0x06);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 6) then
		PressAndReleaseKey (0x07);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 7) then
		PressAndReleaseKey (0x08);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 8) then
		PressAndReleaseKey (0x09);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 9) then
		PressAndReleaseKey (0x0a);
		Sleep (500);
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 10) then
		PressAndReleaseKey (0x0b);
		Sleep (500);
		SetMKeyState(1, logitech_device);

    end -- End of G-Key mapping


end