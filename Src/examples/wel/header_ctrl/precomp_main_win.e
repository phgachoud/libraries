indexing
	description: "Main window class of the WEL example : Header_Control."
	status: "See notice at end of class."
	date: "11/021999"
	revision: "1.1"

class
	PRECOMP_MAIN_WINDOW

inherit
	WEL_FRAME_WINDOW
		redefine
			class_background,
			default_style,
			on_size
		end

	APPLICATION_IDS
		export
			{NONE} all
		end

	WEL_WINDOWS_ROUTINES
		export
			{NONE} all
		end

creation
	make

feature {NONE} -- Initialization

	make is
		do
			make_top (Title)
			resize (400, 240)

			-- Create the list view.
			create header_control.make (Current, client_rect.x, client_rect.y, 
												 client_rect.width, client_rect.height, -1)
			header_control.set_font(gui_font)

			-- Create the output
			create label.make (Current, "What happens?", 0, 30, client_rect.width, 20, 0)
			label.set_font(gui_font)
			create list.make (Current, 0, 50,
							  client_rect.width, client_rect.height - 55, 1)
			list.set_font(gui_font)

			header_control.set_item_output (label)
			header_control.set_mess_output (list)
		end

feature -- Access

	list: WEL_SINGLE_SELECTION_LIST_BOX

	label: WEL_STATIC

	header_control: HEADER_CONTROL

feature {NONE} -- Implementation

	Title: STRING is "WEL Header Control"
			-- Window's title

	class_background: WEL_BRUSH is
			-- background color
		once
			create Result.make_by_sys_color (Color_background)
		end

	gui_font: WEL_DEFAULT_GUI_FONT is
			-- Default font used to draw dialogs.
		once
			create Result.make
		end

	default_style: INTEGER is
			-- The window do not redraw the children.
		once
			Result := {WEL_FRAME_WINDOW} Precursor
				+ Ws_clipchildren + Ws_clipsiblings
		end

   	on_size (size_type, a_width, a_height: INTEGER) is
   			-- Wm_size message
   		do
			if header_control /= Void then
				header_control.retrieve_and_set_windows_pos (client_rect)
			end
			if list /= Void then
				list.resize (client_rect.width, client_rect.height - 55)
			end
		end

end -- class PRECOMP_MAIN_WINDOW

--|-------------------------------------------------------------------------
--| Windows Eiffel Library: library of reusable components for ISE Eiffel.
--| Copyright (C) 1995-1997, Interactive Software Engineering, Inc.
--| All rights reserved. Duplication and distribution prohibited.
--|
--| 270 Storke Road, Suite 7, Goleta, CA 93117 USA
--| Telephone 805-685-1006
--| Fax 805-685-6869
--| Information e-mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--|-------------------------------------------------------------------------
