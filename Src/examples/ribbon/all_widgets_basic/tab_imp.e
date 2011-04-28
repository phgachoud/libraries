note
	description: "[
					Generated by EiffelRibbon tool
					Don't edit this file, since it will be replaced by EiffelRibbon tool
					generated files everytime
																							]"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	TAB_IMP

inherit
	EV_RIBBON_TAB

feature {NONE} -- Initialization

	create_interface_objects
			-- Create objects
		do
			create group.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.group>>)
			create group_in_ribbon_gallery.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.group_in_ribbon_gallery>>)
			create group_drop_down_color_picker.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.group_drop_down_color_picker>>)
			create group_font_control.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.group_font_control>>)
			create group_context_popups.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.group_context_popups>>)

			create groups.make (1)
			groups.extend (group)
			groups.extend (group_in_ribbon_gallery)
			groups.extend (group_drop_down_color_picker)
			groups.extend (group_font_control)
			groups.extend (group_context_popups)

		end

feature -- Query
	group: GROUP
	group_in_ribbon_gallery: GROUP_IN_RIBBON_GALLERY
	group_drop_down_color_picker: GROUP_DROP_DOWN_COLOR_PICKER
	group_font_control: GROUP_FONT_CONTROL
	group_context_popups: GROUP_CONTEXT_POPUPS


end

