indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	EDITOR_WINDOW_IMP

inherit
	EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end
			
	EXAMPLE_CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		local
			internal_pixmap: EV_PIXMAP
		do
			Precursor {EV_TITLED_WINDOW}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_menu_bar_1
			create l_ev_menu_2
			create open_file
			create close_file
			create l_ev_vertical_box_1
			create tool_bar
			create cut_tb
			create copy_tb
			create paste_tb
			create l_ev_tool_bar_separator_1
			create l_ev_horizontal_split_area_1
			create editor_container
			create l_ev_notebook_1
			create options_box
			create line_info_check
			create line_info_frame
			create line_info_box
			create token_info_frame
			create l_ev_vertical_box_2
			create token_info_label
			create cursor_info
			create l_ev_vertical_box_3
			create cursor_text_position
			create line_number
			create cursor_line_pos
			create status_label
			create l_ev_vertical_box_4
			create preferences_button
			create editable_check
			create l_ev_frame_1
			create l_ev_vertical_box_5
			create line_number_check
			create invisible_symbol_check
			create l_ev_horizontal_box_1
			create l_ev_label_1
			create goto_line_text
			create goto_line_button
			create l_ev_horizontal_box_2
			create l_ev_label_2
			create select_char_start_text
			create l_ev_label_3
			create select_char_end_text
			create select_char_button
			create l_ev_horizontal_box_3
			create l_ev_label_4
			create select_line_start_text
			create l_ev_label_5
			create select_line_end_text
			create select_line_button
			create l_ev_horizontal_box_4
			create l_ev_frame_2
			create internal_pixmap
			
				-- Build_widget_structure.
			set_menu_bar (l_ev_menu_bar_1)
			l_ev_menu_bar_1.extend (l_ev_menu_2)
			l_ev_menu_2.extend (open_file)
			l_ev_menu_2.extend (close_file)
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (tool_bar)
			tool_bar.extend (cut_tb)
			tool_bar.extend (copy_tb)
			tool_bar.extend (paste_tb)
			tool_bar.extend (l_ev_tool_bar_separator_1)
			l_ev_vertical_box_1.extend (l_ev_horizontal_split_area_1)
			l_ev_horizontal_split_area_1.extend (editor_container)
			l_ev_horizontal_split_area_1.extend (l_ev_notebook_1)
			l_ev_notebook_1.extend (options_box)
			options_box.extend (line_info_check)
			options_box.extend (line_info_frame)
			line_info_frame.extend (line_info_box)
			options_box.extend (token_info_frame)
			token_info_frame.extend (l_ev_vertical_box_2)
			l_ev_vertical_box_2.extend (token_info_label)
			options_box.extend (cursor_info)
			cursor_info.extend (l_ev_vertical_box_3)
			l_ev_vertical_box_3.extend (cursor_text_position)
			l_ev_vertical_box_3.extend (line_number)
			l_ev_vertical_box_3.extend (cursor_line_pos)
			l_ev_vertical_box_3.extend (status_label)
			l_ev_notebook_1.extend (l_ev_vertical_box_4)
			l_ev_vertical_box_4.extend (preferences_button)
			l_ev_vertical_box_4.extend (editable_check)
			l_ev_vertical_box_4.extend (l_ev_frame_1)
			l_ev_frame_1.extend (l_ev_vertical_box_5)
			l_ev_vertical_box_5.extend (line_number_check)
			l_ev_vertical_box_5.extend (invisible_symbol_check)
			l_ev_vertical_box_5.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (l_ev_label_1)
			l_ev_horizontal_box_1.extend (goto_line_text)
			l_ev_horizontal_box_1.extend (goto_line_button)
			l_ev_vertical_box_5.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (l_ev_label_2)
			l_ev_horizontal_box_2.extend (select_char_start_text)
			l_ev_horizontal_box_2.extend (l_ev_label_3)
			l_ev_horizontal_box_2.extend (select_char_end_text)
			l_ev_horizontal_box_2.extend (select_char_button)
			l_ev_vertical_box_5.extend (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.extend (l_ev_label_4)
			l_ev_horizontal_box_3.extend (select_line_start_text)
			l_ev_horizontal_box_3.extend (l_ev_label_5)
			l_ev_horizontal_box_3.extend (select_line_end_text)
			l_ev_horizontal_box_3.extend (select_line_button)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_4)
			l_ev_horizontal_box_4.extend (l_ev_frame_2)
			
			l_ev_menu_2.set_text ("File")
			open_file.set_text ("Open")
			close_file.set_text ("Close")
			l_ev_vertical_box_1.disable_item_expand (tool_bar)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_4)
			cut_tb.set_tooltip ("Cut")
			internal_pixmap.set_with_named_file ("D:\Src\tools\doc_builder\resources\icons\icon_cut_color.ico")
			cut_tb.set_pixmap (internal_pixmap)
			copy_tb.set_tooltip ("Copy")
			internal_pixmap.set_with_named_file ("D:\Src\tools\doc_builder\resources\icons\icon_copy_color.ico")
			copy_tb.set_pixmap (internal_pixmap)
			paste_tb.set_tooltip ("Paste")
			internal_pixmap.set_with_named_file ("D:\Src\tools\doc_builder\resources\icons\icon_paste.ico")
			paste_tb.set_pixmap (internal_pixmap)
			editor_container.set_background_color (create {EV_COLOR}.make_with_8_bit_rgb (0, 128, 0))
			editor_container.set_minimum_width (550)
			editor_container.set_padding_width (1)
			editor_container.set_border_width (1)
			l_ev_notebook_1.set_item_text (options_box, "Info")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_4, "Options")
			options_box.set_minimum_width (250)
			options_box.set_padding_width (5)
			options_box.set_border_width (10)
			options_box.disable_item_expand (line_info_check)
			line_info_check.set_text ("Show line structure information")
			line_info_frame.set_text ("Line information")
			line_info_box.set_padding_width (5)
			line_info_box.set_border_width (5)
			token_info_frame.set_text ("Current token information")
			l_ev_vertical_box_2.set_padding_width (5)
			l_ev_vertical_box_2.set_border_width (5)
			cursor_info.set_text ("Cursor information")
			l_ev_vertical_box_3.set_padding_width (5)
			l_ev_vertical_box_3.set_border_width (5)
			l_ev_vertical_box_3.disable_item_expand (cursor_text_position)
			l_ev_vertical_box_3.disable_item_expand (line_number)
			l_ev_vertical_box_3.disable_item_expand (cursor_line_pos)
			l_ev_vertical_box_3.disable_item_expand (status_label)
			cursor_text_position.set_text ("Position: ")
			cursor_text_position.set_minimum_width (30)
			cursor_text_position.align_text_left
			line_number.set_text ("Line number: ")
			line_number.set_minimum_width (30)
			line_number.align_text_left
			cursor_line_pos.set_text ("Line position: ")
			cursor_line_pos.set_minimum_width (30)
			cursor_line_pos.set_minimum_height (13)
			cursor_line_pos.align_text_left
			status_label.set_text ("Selection: ")
			status_label.align_text_left
			l_ev_vertical_box_4.set_padding_width (5)
			l_ev_vertical_box_4.set_border_width (10)
			l_ev_vertical_box_4.disable_item_expand (preferences_button)
			l_ev_vertical_box_4.disable_item_expand (editable_check)
			preferences_button.set_text ("Preferences")
			editable_check.enable_select
			editable_check.set_text ("Editable")
			l_ev_frame_1.set_text ("Line")
			l_ev_vertical_box_5.set_padding_width (5)
			l_ev_vertical_box_5.set_border_width (5)
			l_ev_vertical_box_5.disable_item_expand (line_number_check)
			l_ev_vertical_box_5.disable_item_expand (invisible_symbol_check)
			l_ev_vertical_box_5.disable_item_expand (l_ev_horizontal_box_1)
			l_ev_vertical_box_5.disable_item_expand (l_ev_horizontal_box_2)
			l_ev_vertical_box_5.disable_item_expand (l_ev_horizontal_box_3)
			line_number_check.set_text ("Show line numbers")
			invisible_symbol_check.set_text ("Show invisible symbols")
			l_ev_horizontal_box_1.set_padding_width (5)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_label_1)
			l_ev_horizontal_box_1.disable_item_expand (goto_line_button)
			l_ev_label_1.set_text ("Go to line")
			l_ev_label_1.align_text_left
			goto_line_text.set_text ("1")
			goto_line_text.value_range.adapt (create {INTEGER_INTERVAL}.make (1, 100))
			goto_line_text.set_value (1)
			goto_line_button.set_text ("Go")
			l_ev_horizontal_box_2.set_padding_width (5)
			l_ev_horizontal_box_2.disable_item_expand (l_ev_label_2)
			l_ev_horizontal_box_2.disable_item_expand (select_char_button)
			l_ev_label_2.set_text ("Select char")
			l_ev_label_2.align_text_left
			select_char_start_text.set_text ("1")
			select_char_start_text.value_range.adapt (create {INTEGER_INTERVAL}.make (1, 100))
			select_char_start_text.set_value (1)
			l_ev_label_3.set_text ("to")
			select_char_end_text.set_text ("1")
			select_char_end_text.value_range.adapt (create {INTEGER_INTERVAL}.make (1, 100))
			select_char_end_text.set_value (1)
			select_char_button.set_text ("Go")
			l_ev_horizontal_box_3.set_padding_width (5)
			l_ev_horizontal_box_3.disable_item_expand (l_ev_label_4)
			l_ev_horizontal_box_3.disable_item_expand (select_line_button)
			l_ev_label_4.set_text ("Select line")
			l_ev_label_4.align_text_left
			select_line_start_text.set_text ("1")
			select_line_start_text.value_range.adapt (create {INTEGER_INTERVAL}.make (1, 100))
			select_line_start_text.set_value (1)
			l_ev_label_5.set_text ("to")
			select_line_end_text.set_text ("1")
			select_line_end_text.value_range.adapt (create {INTEGER_INTERVAL}.make (1, 100))
			select_line_end_text.set_value (1)
			select_line_button.set_text ("Go")
			l_ev_horizontal_box_4.set_border_width (2)
			set_minimum_width (100)
			set_minimum_height (100)
			set_title ("Display window")
			
				--Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	goto_line_text: EV_SPIN_BUTTON
	select_char_start_text: EV_SPIN_BUTTON
	select_char_end_text: EV_SPIN_BUTTON
	select_line_start_text: EV_SPIN_BUTTON
	select_line_end_text: EV_SPIN_BUTTON
	open_file: EV_MENU_ITEM
	close_file: EV_MENU_ITEM
	cut_tb: EV_TOOL_BAR_BUTTON
	copy_tb: EV_TOOL_BAR_BUTTON
	paste_tb: EV_TOOL_BAR_BUTTON
	l_ev_notebook_1: EV_NOTEBOOK
	line_info_check: EV_CHECK_BUTTON
	editable_check: EV_CHECK_BUTTON
	line_number_check: EV_CHECK_BUTTON
	invisible_symbol_check: EV_CHECK_BUTTON
	l_ev_horizontal_split_area_1: EV_HORIZONTAL_SPLIT_AREA
	l_ev_menu_2: EV_MENU
	l_ev_menu_bar_1: EV_MENU_BAR
	l_ev_vertical_box_1: EV_VERTICAL_BOX
	editor_container: EV_VERTICAL_BOX
	options_box: EV_VERTICAL_BOX
	line_info_box: EV_VERTICAL_BOX
	l_ev_vertical_box_2: EV_VERTICAL_BOX
	l_ev_vertical_box_3: EV_VERTICAL_BOX
	l_ev_vertical_box_4: EV_VERTICAL_BOX
	l_ev_vertical_box_5: EV_VERTICAL_BOX
	l_ev_horizontal_box_1: EV_HORIZONTAL_BOX
	l_ev_horizontal_box_2: EV_HORIZONTAL_BOX
	l_ev_horizontal_box_3: EV_HORIZONTAL_BOX
	l_ev_horizontal_box_4: EV_HORIZONTAL_BOX
	token_info_label: EV_LABEL
	cursor_text_position: EV_LABEL
	line_number: EV_LABEL
	cursor_line_pos: EV_LABEL
	status_label: EV_LABEL
	l_ev_label_1: EV_LABEL
	l_ev_label_2: EV_LABEL
	l_ev_label_3: EV_LABEL
	l_ev_label_4: EV_LABEL
	l_ev_label_5: EV_LABEL
	preferences_button: EV_BUTTON
	goto_line_button: EV_BUTTON
	select_char_button: EV_BUTTON
	select_line_button: EV_BUTTON
	line_info_frame: EV_FRAME
	token_info_frame: EV_FRAME
	cursor_info: EV_FRAME
	l_ev_frame_1: EV_FRAME
	l_ev_frame_2: EV_FRAME
	l_ev_tool_bar_separator_1: EV_TOOL_BAR_SEPARATOR
	tool_bar: EV_TOOL_BAR

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN is
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization is
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end
	
end -- class EDITOR_WINDOW_IMP
