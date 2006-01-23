indexing
	description: "Main arguments received in the WinMain Windows function."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	WEL_MAIN_ARGUMENTS

feature -- Access

	current_instance, resource_instance: WEL_INSTANCE is
			-- Current instance argument received in WinMain
		once
			create Result.make (cwel_hinstance)
		ensure
			result_not_void: Result /= Void
		end

	previous_instance: WEL_INSTANCE is
			-- Previous instance argument received in WinMain
		once
			create Result.make (cwel_previous_hinstance)
		ensure
			result_not_void: Result /= Void
		end

	command_line: STRING is
			-- Command line argument received in WinMain
		once
			create Result.make_from_c (cwel_command_line)
		ensure
			result_not_void: Result /= Void
		end

	command_show: INTEGER is
			-- Command show argument received in WinMain
		once
			Result := cwel_command_show
		end

feature {NONE} -- Externals

	cwel_hinstance: POINTER is
		external
			"C [macro <mainarg.h>]: EIF_POINTER"
		end

	cwel_previous_hinstance: POINTER is
		external
			"C [macro <mainarg.h>]: EIF_POINTER"
		end

	cwel_command_line: POINTER is
		external
			"C [macro <mainarg.h>]: EIF_POINTER"
		end

	cwel_command_show: INTEGER is
		external
			"C [macro <mainarg.h>]: EIF_INTEGER"
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




end -- class WEL_MAIN_ARGUMENTS

