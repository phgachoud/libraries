﻿note
	description: "[
		Objects that represent an EV_TITLED_WINDOW.
		The original version of this class was generated by EiffelBuild.
		This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
		You should not modify this code by hand, as it will be re-generated every time
		 modifications are made to the project.
 	]"
	status: "See notice at end of class."
	legal: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ATTRIBUTE_SETTING_PANEL_IMP

inherit
	EV_VERTICAL_BOX
		redefine
			initialize, is_in_default_state
		end

	CONSTANTS
		undefine
			is_equal, default_create, copy
		end

feature {NONE}-- Initialization

	initialize
			-- Initialize `Current'.
		do
			Precursor {EV_VERTICAL_BOX}
			initialize_constants

				-- Build widget structure.
			extend (l_ev_frame_1)
			l_ev_frame_1.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (apply_button)
			l_ev_horizontal_box_1.extend (l_ev_button_1)
			l_ev_horizontal_box_1.extend (l_ev_cell_1)
			l_ev_horizontal_box_1.extend (l_ev_button_2)
			l_ev_horizontal_box_1.extend (l_ev_button_3)
			l_ev_horizontal_box_1.extend (l_ev_button_4)
			extend (l_ev_horizontal_separator_1)
			extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (l_ev_label_1)
			l_ev_horizontal_box_2.extend (short_title_field)
			extend (l_ev_horizontal_separator_2)
			extend (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.extend (l_ev_label_2)
			l_ev_horizontal_box_3.extend (long_title_field)
			extend (l_ev_horizontal_separator_3)
			extend (l_ev_horizontal_box_4)
			l_ev_horizontal_box_4.extend (l_ev_label_3)
			l_ev_horizontal_box_4.extend (tab_tooltip_field)
			extend (l_ev_horizontal_separator_4)
			extend (l_ev_horizontal_box_5)
			l_ev_horizontal_box_5.extend (l_ev_label_4)
			l_ev_horizontal_box_5.extend (description_field)
			extend (l_ev_horizontal_separator_5)
			extend (l_ev_horizontal_box_6)
			l_ev_horizontal_box_6.extend (l_ev_label_5)
			l_ev_horizontal_box_6.extend (detail_field)
			extend (l_ev_horizontal_separator_6)
			extend (l_ev_frame_2)
			l_ev_frame_2.extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_7)
			l_ev_horizontal_box_7.extend (pixmap_radio_button)
			l_ev_horizontal_box_7.extend (pixel_buffer_radio_button)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_8)
			l_ev_horizontal_box_8.extend (l_ev_label_6)
			l_ev_horizontal_box_8.extend (pixmap_field)
			l_ev_horizontal_box_8.extend (browse_pixmap_button)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_9)
			l_ev_horizontal_box_9.extend (l_ev_label_7)
			l_ev_horizontal_box_9.extend (pixel_buffer_field)
			l_ev_horizontal_box_9.extend (browse_pixel_buffer_button)
			extend (l_ev_frame_3)
			l_ev_frame_3.extend (mini_toolbar_check_button)

			l_ev_horizontal_box_1.disable_item_expand (apply_button)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_button_1)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_button_2)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_button_3)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_button_4)
			apply_button.set_text ("Apply Changes")
			apply_button.set_tooltip ("Apply changes.")
			l_ev_button_1.set_text ("Refresh")
			l_ev_button_2.set_text ("Show All")
			l_ev_button_2.set_tooltip ("Show all docking contents.")
			l_ev_button_3.set_text ("Hide")
			l_ev_button_3.set_tooltip ("Hide current content.")
			l_ev_button_4.set_text ("Close")
			l_ev_button_4.set_tooltip ("Close current content.")
			l_ev_horizontal_box_2.disable_item_expand (l_ev_label_1)
			l_ev_label_1.set_text ("Short title: ")
			integer_constant_set_procedures.extend (agent l_ev_label_1.set_minimum_width (?))
			integer_constant_retrieval_functions.extend (agent label_width)
			l_ev_horizontal_box_3.disable_item_expand (l_ev_label_2)
			l_ev_label_2.set_text ("Long title: ")
			integer_constant_set_procedures.extend (agent l_ev_label_2.set_minimum_width (?))
			integer_constant_retrieval_functions.extend (agent label_width)
			l_ev_horizontal_box_4.disable_item_expand (l_ev_label_3)
			l_ev_label_3.set_text ("Tab tooltip: ")
			integer_constant_set_procedures.extend (agent l_ev_label_3.set_minimum_width (?))
			integer_constant_retrieval_functions.extend (agent label_width)
			tab_tooltip_field.set_minimum_height (42)
			l_ev_horizontal_box_5.disable_item_expand (l_ev_label_4)
			l_ev_label_4.set_text ("Description: ")
			integer_constant_set_procedures.extend (agent l_ev_label_4.set_minimum_width (?))
			integer_constant_retrieval_functions.extend (agent label_width)
			description_field.set_minimum_height (42)
			l_ev_horizontal_box_6.disable_item_expand (l_ev_label_5)
			l_ev_label_5.set_text ("Detail: ")
			integer_constant_set_procedures.extend (agent l_ev_label_5.set_minimum_width (?))
			integer_constant_retrieval_functions.extend (agent label_width)
			detail_field.set_minimum_height (42)
			l_ev_frame_2.set_text ("Pixmap")
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_7)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_8)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_9)
			l_ev_horizontal_box_7.disable_item_expand (pixmap_radio_button)
			l_ev_horizontal_box_7.disable_item_expand (pixel_buffer_radio_button)
			pixmap_radio_button.set_text ("Pixmap")
			pixel_buffer_radio_button.set_text ("Pixel Buffer")
			l_ev_horizontal_box_8.disable_item_expand (l_ev_label_6)
			l_ev_horizontal_box_8.disable_item_expand (browse_pixmap_button)
			l_ev_label_6.set_text ("Pixmap: ")
			integer_constant_set_procedures.extend (agent l_ev_label_6.set_minimum_width (?))
			integer_constant_retrieval_functions.extend (agent label_width)
			browse_pixmap_button.set_text ("Browse...")
			l_ev_horizontal_box_9.disable_item_expand (l_ev_label_7)
			l_ev_horizontal_box_9.disable_item_expand (browse_pixel_buffer_button)
			l_ev_label_7.set_text ("Pixel buffer: ")
			integer_constant_set_procedures.extend (agent l_ev_label_7.set_minimum_width (?))
			integer_constant_retrieval_functions.extend (agent label_width)
			browse_pixel_buffer_button.set_text ("Browse...")
			l_ev_frame_3.set_text ("Mini Tool Bar")
			mini_toolbar_check_button.set_text ("Enable Mini Tool Bar")
			disable_item_expand (l_ev_frame_1)
			disable_item_expand (l_ev_horizontal_separator_1)
			disable_item_expand (l_ev_horizontal_box_2)
			disable_item_expand (l_ev_horizontal_separator_2)
			disable_item_expand (l_ev_horizontal_box_3)
			disable_item_expand (l_ev_horizontal_separator_3)
			disable_item_expand (l_ev_horizontal_box_4)
			disable_item_expand (l_ev_horizontal_separator_4)
			disable_item_expand (l_ev_horizontal_box_5)
			disable_item_expand (l_ev_horizontal_separator_5)
			disable_item_expand (l_ev_horizontal_box_6)
			disable_item_expand (l_ev_horizontal_separator_6)
			disable_item_expand (l_ev_frame_2)
			disable_item_expand (l_ev_frame_3)

			set_all_attributes_using_constants

				-- Connect events.
			apply_button.select_actions.extend (agent on_apply)
			l_ev_button_1.select_actions.extend (agent refresh)
			l_ev_button_2.select_actions.extend (agent show_all_content)
			l_ev_button_3.select_actions.extend (agent on_hide_content)
			l_ev_button_4.select_actions.extend (agent on_close_content)
			pixmap_radio_button.select_actions.extend (agent pixmap_radio_button_selected)
			pixel_buffer_radio_button.select_actions.extend (agent pixel_buffer_radio_button_selected)
			browse_pixmap_button.select_actions.extend (agent on_browse_pixmap)
			browse_pixel_buffer_button.select_actions.extend (agent on_browse_pixel_buffer)

				-- Call `user_initialization'.
			user_initialization
		end


feature -- Access

	apply_button, browse_pixmap_button, browse_pixel_buffer_button: EV_BUTTON
	tab_tooltip_field,
	description_field, detail_field: EV_TEXT
	pixmap_radio_button, pixel_buffer_radio_button: EV_RADIO_BUTTON
	mini_toolbar_check_button: EV_CHECK_BUTTON
	short_title_field,
	long_title_field, pixmap_field, pixel_buffer_field: EV_TEXT_FIELD

feature {NONE} -- Implementation

	l_ev_horizontal_separator_1, l_ev_horizontal_separator_2, l_ev_horizontal_separator_3,
	l_ev_horizontal_separator_4, l_ev_horizontal_separator_5, l_ev_horizontal_separator_6: EV_HORIZONTAL_SEPARATOR
	l_ev_cell_1: EV_CELL
	l_ev_button_1,
	l_ev_button_2, l_ev_button_3, l_ev_button_4: EV_BUTTON
	l_ev_horizontal_box_1, l_ev_horizontal_box_2,
	l_ev_horizontal_box_3, l_ev_horizontal_box_4, l_ev_horizontal_box_5, l_ev_horizontal_box_6,
	l_ev_horizontal_box_7, l_ev_horizontal_box_8, l_ev_horizontal_box_9: EV_HORIZONTAL_BOX
	l_ev_vertical_box_1: EV_VERTICAL_BOX
	l_ev_label_1,
	l_ev_label_2, l_ev_label_3, l_ev_label_4, l_ev_label_5, l_ev_label_6, l_ev_label_7: EV_LABEL
	l_ev_frame_1,
	l_ev_frame_2, l_ev_frame_3: EV_FRAME

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end

	user_initialization
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end

	on_apply
			-- Called by `select_actions' of `apply_button'.
		deferred
		end

	refresh
			-- Called by `select_actions' of `l_ev_button_1'.
		deferred
		end

	show_all_content
			-- Called by `select_actions' of `l_ev_button_2'.
		deferred
		end

	on_hide_content
			-- Called by `select_actions' of `l_ev_button_3'.
		deferred
		end

	on_close_content
			-- Called by `select_actions' of `l_ev_button_4'.
		deferred
		end

	pixmap_radio_button_selected
			-- Called by `select_actions' of `pixmap_radio_button'.
		deferred
		end

	pixel_buffer_radio_button_selected
			-- Called by `select_actions' of `pixel_buffer_radio_button'.
		deferred
		end

	on_browse_pixmap
			-- Called by `select_actions' of `browse_pixmap_button'.
		deferred
		end

	on_browse_pixel_buffer
			-- Called by `select_actions' of `browse_pixel_buffer_button'.
		deferred
		end


feature {NONE} -- Constant setting

	set_attributes_using_string_constants
			-- Set all attributes relying on string constants to the current
			-- value of the associated constant.
		do
			from
				string_constant_set_procedures.start
			until
				string_constant_set_procedures.off
			loop
				string_constant_set_procedures.item (string_constant_retrieval_functions.i_th (string_constant_set_procedures.index).item)
				string_constant_set_procedures.forth
			end
		end

	set_attributes_using_integer_constants
			-- Set all attributes relying on integer constants to the current
			-- value of the associated constant.
		local
			i: INTEGER
			arg1, arg2: INTEGER
			int: INTEGER_INTERVAL
		do
			from
				integer_constant_set_procedures.start
			until
				integer_constant_set_procedures.off
			loop
				integer_constant_retrieval_functions.i_th (integer_constant_set_procedures.index).call (Void)
				i := integer_constant_retrieval_functions.i_th (integer_constant_set_procedures.index).last_result
				integer_constant_set_procedures.item.call ([i])
				integer_constant_set_procedures.forth
			end
			from
				integer_interval_constant_retrieval_functions.start
				integer_interval_constant_set_procedures.start
			until
				integer_interval_constant_retrieval_functions.off
			loop
				integer_interval_constant_retrieval_functions.item.call (Void)
				arg1 := integer_interval_constant_retrieval_functions.item.last_result
				integer_interval_constant_retrieval_functions.forth
				integer_interval_constant_retrieval_functions.item.call (Void)
				arg2 := integer_interval_constant_retrieval_functions.item.last_result
				create int.make (arg1, arg2)
				integer_interval_constant_set_procedures.item.call ([int])
				integer_interval_constant_retrieval_functions.forth
				integer_interval_constant_set_procedures.forth
			end
		end

	set_attributes_using_pixmap_constants
			-- Set all attributes relying on pixmap constants to the current
			-- value of the associated constant.
		do
			from
				pixmap_constant_set_procedures.start
			until
				pixmap_constant_set_procedures.off
			loop
				pixmap_constant_set_procedures.item (pixmap_constant_retrieval_functions.i_th (pixmap_constant_set_procedures.index).item)
				pixmap_constant_set_procedures.forth
			end
		end

	set_attributes_using_font_constants
			-- Set all attributes relying on font constants to the current
			-- value of the associated constant.
		do
			from
				font_constant_set_procedures.start
			until
				font_constant_set_procedures.off
			loop
				font_constant_set_procedures.item (font_constant_retrieval_functions.i_th (font_constant_set_procedures.index).item)
				font_constant_set_procedures.forth
			end
		end

	set_attributes_using_color_constants
			-- Set all attributes relying on color constants to the current
			-- value of the associated constant.
		do
			from
				color_constant_set_procedures.start
			until
				color_constant_set_procedures.off
			loop
				color_constant_set_procedures.item (color_constant_retrieval_functions.i_th (color_constant_set_procedures.index).item)
				color_constant_set_procedures.forth
			end
		end

	set_all_attributes_using_constants
			-- Set all attributes relying on constants to the current
			-- calue of the associated constant.
		do
			set_attributes_using_string_constants
			set_attributes_using_integer_constants
			set_attributes_using_pixmap_constants
			set_attributes_using_font_constants
			set_attributes_using_color_constants
		end

	string_constant_set_procedures: ARRAYED_LIST [PROCEDURE [STRING_GENERAL]]
	string_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [STRING_GENERAL]]
	integer_constant_set_procedures: ARRAYED_LIST [PROCEDURE [INTEGER]]
	integer_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [INTEGER]]
	pixmap_constant_set_procedures: ARRAYED_LIST [PROCEDURE [EV_PIXMAP]]
	pixmap_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [EV_PIXMAP]]
	integer_interval_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [INTEGER]]
	integer_interval_constant_set_procedures: ARRAYED_LIST [PROCEDURE [INTEGER_INTERVAL]]
	font_constant_set_procedures: ARRAYED_LIST [PROCEDURE [EV_FONT]]
	font_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [EV_FONT]]
	color_constant_set_procedures: ARRAYED_LIST [PROCEDURE [EV_COLOR]]
	color_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [EV_COLOR]]

	integer_from_integer (an_integer: INTEGER): INTEGER
			-- Return `an_integer', used for creation of
			-- an agent that returns a fixed integer value.
		do
			Result := an_integer
		end

note
	copyright:	"Copyright (c) 1984-2016, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
	]"

end
