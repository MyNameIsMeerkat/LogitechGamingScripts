--Fallout4 script
-- MyNameIsMeerkat 2016 (https://github.com/MyNameIsMeerkat/LogitechGamingScripts)
function OnEvent(event, arg)

	--Choose the logitech device to use weapon M-State 2 for. 'lhc' for G13 or 'kb' for G15,19 etc
	logitech_device = "lhc";
     REPEAT_COUNT=5;
     REPEAT_DELAY=20;

	--Debug output
	current_mkey = GetMKeyState(logitech_device);
	OutputLogMessage("Starting M Profile = %d\n", current_mkey);
	OutputLogMessage("event = %s, arg = %s\n", event, arg);

	--This is for M-State 2, G-Keys 1-10 are assigned to number keys 1-0 and once the number key is pressed
	-- and release the M-State is changed back to M-State 1 which is the normal WASD
	if (current_mkey == 2 and event == "G_PRESSED" and arg == 1) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x02, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 2) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x03, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 3) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x04, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 4) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x05, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 5) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x06, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 6) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x07, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 7) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x08, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 8) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x09, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 9) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x0a, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);
	elseif (current_mkey == 2 and event == "G_PRESSED" and arg == 10) then
		--Press the keymultiple times so it registers (PressAndRelease() was unreliable?)
         RepeatKeyPress(0x0b, REPEAT_COUNT, REPEAT_DELAY);
		Sleep (500);
         --Auto set the M-State back to M1
		SetMKeyState(1, logitech_device);

    end -- End of G-Key mapping


end

--Simulate a keypress with a delay between the press and release, repeated X times
function RepeatKeyPress(key, repeat_count, delay)
    for i=1,repeat_count do
         PressKey(key);
         Sleep (delay);
         ReleaseKey (key);
    end

end