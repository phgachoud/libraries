note
	description: "Control interfaces. Help file: "
	legal: "See notice at end of class."
	status: "See notice at end of class."
	generator: "Automatically generated by the EiffelCOM Wizard."

class
	X_POINTL_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

create
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make
			-- Make.
		do
			Precursor {ECOM_STRUCTURE}
		end

	make_from_pointer (a_pointer: POINTER)
			-- Make from pointer.
		do
			make_by_pointer (a_pointer)
		end

feature -- Access

	x: INTEGER
			-- No description available.
		do
			Result := ccom_x_pointl_x (item)
		end

	y: INTEGER
			-- No description available.
		do
			Result := ccom_x_pointl_y (item)
		end

feature -- Measurement

	structure_size: INTEGER
			-- Size of structure
		do
			Result := c_size_of_x_pointl
		end

feature -- Basic Operations

	set_x (a_x: INTEGER)
			-- Set `x' with `a_x'.
		do
			ccom_x_pointl_set_x (item, a_x)
		end

	set_y (a_y: INTEGER)
			-- Set `y' with `a_y'.
		do
			ccom_x_pointl_set_y (item, a_y)
		end

feature {NONE}  -- Externals

	c_size_of_x_pointl: INTEGER
			-- Size of structure
		external
			"C [macro %"ecom_control_library__POINTL_s.h%"]"
		alias
			"sizeof(ecom_control_library::_POINTL)"
		end

	ccom_x_pointl_x (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__POINTL_s_impl.h%"](ecom_control_library::_POINTL *):EIF_INTEGER"
		end

	ccom_x_pointl_set_x (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__POINTL_s_impl.h%"](ecom_control_library::_POINTL *, LONG)"
		end

	ccom_x_pointl_y (a_pointer: POINTER): INTEGER
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__POINTL_s_impl.h%"](ecom_control_library::_POINTL *):EIF_INTEGER"
		end

	ccom_x_pointl_set_y (a_pointer: POINTER; arg2: INTEGER)
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__POINTL_s_impl.h%"](ecom_control_library::_POINTL *, LONG)"
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- X_POINTL_RECORD

