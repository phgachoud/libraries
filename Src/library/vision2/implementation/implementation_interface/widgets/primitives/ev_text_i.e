indexing
	description: 
		"EiffelVision text area. Implementation interface."
	status: "See notice at end of class"
	id: "$Id$"
	date: "$Date$"
	revision: "$Revision$"
	
deferred class
	EV_TEXT_I
	
inherit
	EV_TEXT_COMPONENT_I
		redefine
			interface
		end
	
	EV_FONTABLE_I
		redefine
			interface
		end

feature -- Access

	line (i: INTEGER): STRING is
			-- `Result' is content of the `i'th line.
		require
			valid_line: valid_line_index (i)
		deferred
		ensure
			result_not_void: Result /= Void
		end

feature -- Status report

		has_word_wrapping: BOOLEAN is
			-- Is word wrapping enabled?
			-- If enabled, lines that are too long to be displayed
			-- in `Current' will be wrapped onto new lines.
			-- If disabled, a horizontal scroll bar will be displayed
			-- and lines will not be wrapped.
		deferred
		end

	current_line_number: INTEGER is
			-- `Result'is number of line containing cursor.
		require
		deferred
		ensure
			valid_line_index: valid_line_index (Result)
		end

	line_count: INTEGER is
			-- Number of lines of text in `Current'.
		deferred
		ensure
			result_greater_zero: Result > 0
		end 

	first_position_from_line_number (i: INTEGER): INTEGER is
			-- Position of the first character on the `i'-th line.
		require
			valid_line: valid_line_index (i)
		deferred
		ensure
			valid_caret_position: valid_caret_position (i)
		end

	last_position_from_line_number (i: INTEGER): INTEGER is
			-- Position of the last character on the `i'-th line.
		require
			valid_line: valid_line_index (i)
		deferred
		ensure
			valid_caret_position: valid_caret_position (i)
		end

feature -- Basic operation

	enable_word_wrapping is
			-- Ensure `has_word_wrap' is True.
		deferred
		ensure
			word_wrapping_enabled: has_word_wrapping
		end
		
	disable_word_wrapping is
			-- Ensure `has_word_wrap' is False.
		deferred
		ensure
			word_wrapping_disabled: not has_word_wrapping
		end

	search (str: STRING; start: INTEGER): INTEGER is
			-- Position of first occurrence of `str' at or after `start';
			-- 0 if none.
		require
			valid_string: str /= Void
		do
			Result := text.substring_index (str, start)	
		end

	scroll_to_line (i: INTEGER) is
			-- Ensure that line `i' is visible in `Current'.
		require
			valid_line_index: valid_line_index (i)
		deferred
		end

feature -- Assertions

	valid_line_index (i: INTEGER): BOOLEAN is
			-- Is `i' a valid line index?
		require
		do
			Result := i > 0 and i <= line_count
		end
		
feature {EV_ANY_I} -- Implementation

	interface: EV_TEXT

end -- class EV_TEXT_I

--|----------------------------------------------------------------
--| EiffelVision2: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-2001 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building
--| 360 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support: http://support.eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

