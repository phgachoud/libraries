indexing
	description: "Event interface for the Font object. OLE Automation."
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	FONT_EVENTS_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	font_changed_user_precondition (property_name: STRING): BOOLEAN is
			-- User-defined preconditions for `font_changed'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	font_changed (property_name: STRING) is
			-- No description available.
			-- `property_name' [in].  
		require
			font_changed_user_precondition: font_changed_user_precondition (property_name)
		deferred

		end

end -- FONT_EVENTS_INTERFACE

--|----------------------------------------------------------------
--| EiffelCOM: library of reusable components for ISE Eiffel.
--| Copyright (C) 1985-2004 Eiffel Software. All rights reserved.
--| Duplication and distribution prohibited.  May be used only with
--| ISE Eiffel, under terms of user license.
--| Contact Eiffel Software for any other use.
--|
--| Interactive Software Engineering Inc.
--| dba Eiffel Software
--| 356 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Contact us at: http://www.eiffel.com/general/email.html
--| Customer support: http://support.eiffel.com
--| For latest info on our award winning products, visit:
--|	http://www.eiffel.com
--|----------------------------------------------------------------

