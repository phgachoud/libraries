indexing
	description:
		"The demo that goes with the button demo";
	date: "$Date$";
	revision: "$Revision$"

class
	DRAWING_WINDOW

inherit
	DEMO_WINDOW

	EV_DRAWING_AREA
		redefine
			make
		end

creation
	make

feature {NONE} -- Initialization

	make (par: EV_CONTAINER) is
			-- Create the demo in `par'.
		local
			cmd: EV_ROUTINE_COMMAND
		do
			{EV_DRAWING_AREA} Precursor (par)
			set_minimum_size (200, 200)

		end

	set_tabs is
			-- Set the tabs for the action window.
		do
			set_primitive_tabs
			tab_list.extend (pixmapable_tab)
			tab_list.extend (drawable_tab)
			tab_list.extend (drawing_area_tab)
			create action_window.make (Current, tab_list)
		end

feature -- Access


feature -- Execute command

	
end -- class DRAWING_WINDOW

--|----------------------------------------------------------------
--| EiffelVision Tutorial: Example for the ISE EiffelVision library.
--| Copyright (C) 1986-1998 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building, 2nd floor
--| 270 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------
