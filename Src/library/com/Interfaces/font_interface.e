indexing
	description: "OLE Automation."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	generator: "Automatically generated by the EiffelCOM Wizard."

deferred class
	FONT_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Access

	name: STRING is
			-- No description available.
		require
			name_user_precondition: name_user_precondition
		deferred

		end

	size: ECOM_CURRENCY is
			-- No description available.
		require
			size_user_precondition: size_user_precondition
		deferred

		end

	bold: BOOLEAN is
			-- No description available.
		require
			bold_user_precondition: bold_user_precondition
		deferred

		end

	italic: BOOLEAN is
			-- No description available.
		require
			italic_user_precondition: italic_user_precondition
		deferred

		end

	underline: BOOLEAN is
			-- No description available.
		require
			underline_user_precondition: underline_user_precondition
		deferred

		end

	strikethrough: BOOLEAN is
			-- No description available.
		require
			strikethrough_user_precondition: strikethrough_user_precondition
		deferred

		end

	weight: INTEGER is
			-- No description available.
		require
			weight_user_precondition: weight_user_precondition
		deferred

		end

	charset: INTEGER is
			-- No description available.
		require
			charset_user_precondition: charset_user_precondition
		deferred

		end

feature -- Status Report

	name_user_precondition: BOOLEAN is
			-- User-defined preconditions for `name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_name_user_precondition (a_value: STRING): BOOLEAN is
			-- User-defined preconditions for `set_name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	size_user_precondition: BOOLEAN is
			-- User-defined preconditions for `size'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_size_user_precondition (a_value: ECOM_CURRENCY): BOOLEAN is
			-- User-defined preconditions for `set_size'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	bold_user_precondition: BOOLEAN is
			-- User-defined preconditions for `bold'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_bold_user_precondition (a_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_bold'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	italic_user_precondition: BOOLEAN is
			-- User-defined preconditions for `italic'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_italic_user_precondition (a_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_italic'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	underline_user_precondition: BOOLEAN is
			-- User-defined preconditions for `underline'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_underline_user_precondition (a_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_underline'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	strikethrough_user_precondition: BOOLEAN is
			-- User-defined preconditions for `strikethrough'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_strikethrough_user_precondition (a_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_strikethrough'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	weight_user_precondition: BOOLEAN is
			-- User-defined preconditions for `weight'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_weight_user_precondition (a_value: INTEGER): BOOLEAN is
			-- User-defined preconditions for `set_weight'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	charset_user_precondition: BOOLEAN is
			-- User-defined preconditions for `charset'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_charset_user_precondition (a_value: INTEGER): BOOLEAN is
			-- User-defined preconditions for `set_charset'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Element Change

	set_name (a_value: STRING) is
			-- Set 'name' with 'a_value'
		require
			set_name_user_precondition: set_name_user_precondition (a_value)
		deferred

		end

	set_size (a_value: ECOM_CURRENCY) is
			-- Set 'size' with 'a_value'
		require
			non_void_a_value: a_value /= Void
			valid_a_value: a_value.item /= default_pointer
			set_size_user_precondition: set_size_user_precondition (a_value)
		deferred

		end

	set_bold (a_value: BOOLEAN) is
			-- Set 'bold' with 'a_value'
		require
			set_bold_user_precondition: set_bold_user_precondition (a_value)
		deferred

		end

	set_italic (a_value: BOOLEAN) is
			-- Set 'italic' with 'a_value'
		require
			set_italic_user_precondition: set_italic_user_precondition (a_value)
		deferred

		end

	set_underline (a_value: BOOLEAN) is
			-- Set 'underline' with 'a_value'
		require
			set_underline_user_precondition: set_underline_user_precondition (a_value)
		deferred

		end

	set_strikethrough (a_value: BOOLEAN) is
			-- Set 'strikethrough' with 'a_value'
		require
			set_strikethrough_user_precondition: set_strikethrough_user_precondition (a_value)
		deferred

		end

	set_weight (a_value: INTEGER) is
			-- Set 'weight' with 'a_value'
		require
			set_weight_user_precondition: set_weight_user_precondition (a_value)
		deferred

		end

	set_charset (a_value: INTEGER) is
			-- Set 'charset' with 'a_value'
		require
			set_charset_user_precondition: set_charset_user_precondition (a_value)
		deferred

		end

indexing
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- FONT_INTERFACE

