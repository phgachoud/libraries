note
	description: "Argument parser that accepts only switch options."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ARGUMENT_OPTION_PARSER

obsolete
	"Use the new library with Unicode argument support at $ISE_LIBRARY/library/runtime/process/args".

inherit
	ARGUMENT_BASE_PARSER
		rename
			make as make_base_parser
		export
			{NONE} values
		redefine
			execute_noop
		end

feature {NONE} -- Initialization

	make (a_cs: like is_case_sensitive)
			-- ...
		do
			make_base_parser (a_cs, False, False)
		ensure
			is_case_sensitive_set: is_case_sensitive = a_cs
		end

feature {NONE} -- Basic Operations

	execute_noop (a_action: PROCEDURE [ANY, detachable TUPLE])
			-- <Precursor>
		do
			a_action.call (Void)
		end

invariant
	not_is_allowing_non_switched_arguments: not is_allowing_non_switched_arguments

note
	copyright: "Copyright (c) 1984-2009, Eiffel Software"
	license:   "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options: "http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end -- class {ARGUMENT_OPTION_PARSER}
