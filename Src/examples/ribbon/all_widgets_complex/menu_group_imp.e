﻿note
	description: "[
					Generated by EiffelRibbon tool
					Don't edit this file, since it will be replaced by EiffelRibbon tool
					generated files everytime
																							]"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	MENU_GROUP_IMP

inherit
	EV_RIBBON_APPLICATION_MENU_GROUP

feature {NONE} -- Initialization

	create_interface_objects
			-- Create objects
		do
			create application_menu_button.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.application_menu_button>>)

			create buttons.make (1)
			buttons.extend (application_menu_button)

		end

feature -- Query

	application_menu_button: APPLICATION_MENU_BUTTON


end

