indexing

	description: 
		"Callback structure specific to the row column. %
		%Associated C structure is XmRowColumnCallbackStruct.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class
	MEL_ROW_COLUMN_CALLBACK_STRUCT

inherit

	MEL_ANY_CALLBACK_STRUCT
		redefine
			reasons_list
		end

creation
	make

feature -- Access

	reasons_list: ARRAY [INTEGER] is 
			-- List of reasons that is valid for this
			-- callback structure
			-- (Reasons - XmCR_ACTIVATE, XmCR_MAP, XmCR_TEAR_OFF_ACTIVATE,
			-- XmCR_TEAR_OFF_DEACTIVATE, XmCR_UNMAP)
		once
			Result := <<XmCR_ACTIVATE, XmCR_MAP, XmCR_TEAR_OFF_ACTIVATE, 
				XmCR_TEAR_OFF_DEACTIVATE, XmCR_UNMAP>>
		end;

	activated_widget: MEL_ROW_COLUMN is
			-- Widget of activated Row Column item
		local
			w: POINTER
		do
			w := c_widget (handle);
			if w /= default_pointer then	
				Result ?= Mel_widgets.item (w)
			end
		end;

feature -- Pointer access

	data: POINTER is
			-- Value of application's client data
		do
			Result := c_data (handle)
		end;

	callback_struct: POINTER is
			-- Created when item is activated
		do
			Result := c_callback_struct (handle)
		end;

feature {NONE} -- Implementation

	c_widget (a_callback_struct_ptr: POINTER): POINTER is
		external
			"C [macro %"callback_struct.h%"] (XmRowColumnCallbackStruct *): EIF_POINTER"
		end;

	c_data (a_callback_struct_ptr: POINTER): POINTER is
		external
			"C [macro %"callback_struct.h%"] (XmRowColumnCallbackStruct *): EIF_POINTER"
		end;

	c_callback_struct (a_callback_struct_ptr: POINTER): POINTER is
		external
			"C [macro %"callback_struct.h%"] (XmRowColumnCallbackStruct *): EIF_POINTER"
		end;

end -- class MEL_ROW_COLUMN_CALLBACK_STRUCT

--|-----------------------------------------------------------------------
--| Motif Eiffel Library: library of reusable components for ISE Eiffel 3.
--| Copyright (C) 1996, Interactive Software Engineering, Inc.
--| All rights reserved. Duplication and distribution prohibited.
--|
--| 270 Storke Road, Suite 7, Goleta, CA 93117 USA
--| Telephone 805-685-1006
--| Fax 805-685-6869
--| Information e-mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--|-----------------------------------------------------------------------
