note
	description: "Client window where drawing will be performed"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	CLIENT_WINDOW

inherit
	WEL_CONTROL_WINDOW
		redefine
			on_wm_close,
			class_background,
			class_name,
			default_ex_style
		end

create
	make

feature -- Redefine features

	on_wm_close
			-- Wm_close message.
			-- If `closeable' is False further processing is halted.
		do
			set_default_processing (closeable)
		end

	class_background: WEL_GRAY_BRUSH
			-- Standard window background color
		once
			create Result.make
		end

feature {NONE} -- Implementation

	default_ex_style: INTEGER
			-- Style of Client Window.
		do
			Result := Ws_ex_overlappedwindow
		end

	class_name: STRING_32
			-- Name of window class.
		once
			Result := "Client Window"
		end

note
	copyright:	"Copyright (c) 1984-2012, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"


end -- class CLIENT_WINDOW

