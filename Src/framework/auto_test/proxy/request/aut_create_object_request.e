note
	description:

		"Instruction that requests the creation of an object"

	copyright: "Copyright (c) 2006, Andreas Leitner and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class AUT_CREATE_OBJECT_REQUEST

inherit
	AUT_CALL_BASED_REQUEST
		rename
			make as make_request,
			feature_to_call as creation_procedure
		end

	INTERNAL_COMPILER_STRING_EXPORTER

create
	make
--	make
--	make_default

feature {NONE} -- Initialization

	make (a_system: like system; a_receiver: like target; a_type: like target_type; a_procedure: like creation_procedure; an_argument_list: like argument_list)
			-- Create new request to create an object.
		require
			a_system_not_void: a_system /= Void
			a_receiver_not_void: a_receiver /= Void
			a_type_not_void: a_type /= Void
			a_procedure_not_void: a_procedure /= Void
			an_argument_list_not_void: an_argument_list /= Void
			a_type_not_expanded: not a_type.is_expanded
			a_type_has_class: a_type.has_associated_class
--			a_procedure_is_creation: a_type.base_class.is_creation_exported_to (a_procedure.name, a_system.any_class)
--			a_procedure_is_not_infix_or_prefix: not a_procedure.name.is_prefix and not a_procedure.name.is_infix
			no_argument_void: not an_argument_list.has (Void)
		do
			make_request (a_system)
			target := a_receiver
			target_type := a_type
			creation_procedure := a_procedure
			argument_list := an_argument_list
		ensure
			system_set: system = a_system
			receiver_set: target = a_receiver
			type_set: target_type = a_type
			procdure_set: creation_procedure = a_procedure
			argument_list_set:  argument_list = an_argument_list
		end

feature -- Status report

	is_setup_ready: BOOLEAN
			-- Is setup of current request ready?
		do
			Result := target_type.has_associated_class
		ensure then
			good_result: Result = target_type.has_associated_class
		end

	is_default_create_used: BOOLEAN
			-- Is the default creation procedure used to create the object?
		do
			Result := creation_procedure.feature_name.is_equal ("default_create")
		ensure
			definition: Result = creation_procedure.feature_name.is_equal ("default_create")
		end

feature -- Access

	creation_procedure: FEATURE_I
			-- Procedure used to create object;
			-- note that this must be a creation-procedure.
			-- If the default creation procedure should be used to create the object
			-- `creation_procecure' will be Void.

feature -- Processing

	process (a_processor: AUT_REQUEST_PROCESSOR)
			-- Process current request.
		do
			a_processor.process_create_object_request (Current)
		end

invariant

	receiver_not_void: target /= Void
	type_not_void: target_type /= Void
	type_not_expanded: not target_type.is_expanded
--	procedure_is_creation: not default_creation implies type.base_class.is_creation_exported_to (procedure.name, system.any_class)
--	procedure_is_not_infix_or_prefix: not default_creation implies (not procedure.name.is_prefix and not procedure.name.is_infix)
	no_argument_void: argument_list /= Void implies  not argument_list.has (Void)
--	is_default_creatable: default_creation implies is_default_creatable (type.base_class, system)

note
	copyright: "Copyright (c) 1984-2018, Eiffel Software"
	license: "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
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
end
