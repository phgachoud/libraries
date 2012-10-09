note

	description:
		"Directories, in the Unix sense, with creation and exploration features"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class DIRECTORY_32

inherit
	DIRECTORY
		rename
			change_name as change_name_8,
			delete_content_with_action as delete_content_with_action_8,
			has_entry as has_entry_8,
			lastentry as lastentry_8,
			linear_representation as linear_representation_8,
			make as make_8,
			make_open_read as make_open_read_8,
			name as name_8,
			readentry as readentry_8,
			recursive_delete as recursive_delete_8,
			recursive_delete_with_action as recursive_delete_with_action_8
		export
			{NONE} all
			{ANY}
				close,
				deep_twin,
				is_equal,
				is_closed,
				is_deep_equal,
				is_empty,
				open_read,
				standard_is_equal,
				start
		redefine
			count,
			create_dir,
			delete,
			delete_content,
			exists,
			is_executable,
			is_readable,
			is_writable,
			recursive_create_dir
		end

create

	make, make_open_read

feature -- Initialization

	make (dn: STRING_32)
			-- Create directory object for the directory
			-- of name `dn'.
		require
			string_exists: dn /= Void
		local
			u: UTF_CONVERTER
		do
				-- Use UTF-8 versions of the features by default.
			make_8 (u.string_32_to_utf_8_string_8 (dn))
		end

	make_open_read (dn: STRING_32)
			-- Create directory object for the directory
			-- of name `dn' and open it for reading.
		require
			string_exists: dn /= Void
		do
			make (dn)
			open_read
		end

	create_dir
			-- Create a physical directory.
		local
			di: detachable DIRECTORY_INFO
			l_sub_dir: STRING_32
			l_sep_index: INTEGER
			l_full_path: STRING_32
		do
			create di.make (name.to_cil)
			create l_full_path.make_from_cil (di.full_name)
			l_sep_index := l_full_path.last_index_of ({PATH}.directory_separator_char,
				(1).max (l_full_path.count - 1))
			if l_sep_index = 0 then
				di := {SYSTEM_DIRECTORY}.create_directory (l_full_path.to_cil)
			else
					-- Might be a complex path, we need to check that path up to `l_sep_index'
					-- does not exist.
				l_sub_dir := l_full_path.substring (1, l_sep_index - 1)
				if {SYSTEM_DIRECTORY}.exists (l_sub_dir.to_cil) then
					di := {SYSTEM_DIRECTORY}.create_directory (l_full_path.to_cil)
				else
					{ISE_RUNTIME}.raise (create {IO_EXCEPTION}.make)
				end
			end
		end

	recursive_create_dir
			-- Create the directory `a_directory_name' recursively.
			--
			-- Ex: if /temp/ exists but not /temp/test, calling
			--     `recursive_create_directory ("/temp/test/toto")'
			--     will create /temp/test and then /temp/test/toto.
		local
			l_directory: DIRECTORY_32
			l_new_directory_name: DIRECTORY_NAME_32
			l_directories_to_build: ARRAYED_LIST [STRING_32]
			l_built_directory: STRING_32
			l_loc_directory_name: STRING_32
			l_separator_index: INTEGER
			l_io_exception: IO_FAILURE
		do
			create l_directories_to_build.make (10)

				-- Find the first existing directory in the path name
			from
				l_built_directory := name.twin
				l_separator_index := l_built_directory.count
				create l_directory.make (l_built_directory)
			until
				l_directory.exists
			loop
				l_separator_index := l_built_directory.last_index_of (Operating_environment.Directory_separator, l_built_directory.count)
				if l_separator_index = 0 then
					create l_io_exception
					l_io_exception.set_message ("Invalid directory: " + l_built_directory)
					l_io_exception.raise
				end
				l_directories_to_build.extend (l_built_directory.substring (l_separator_index + 1, l_built_directory.count))
				if l_built_directory @ (l_separator_index - 1) = ':' then
					l_loc_directory_name := l_built_directory.substring (1, l_separator_index)
				else
					l_loc_directory_name := l_built_directory.substring (1, l_separator_index - 1)
				end
				l_built_directory := l_built_directory.substring (1, l_separator_index - 1)
				create l_directory.make (l_loc_directory_name)
			end

				-- Recursively create the directory.
			from
				l_directories_to_build.finish
				create l_new_directory_name.make_from_string (l_built_directory)
			until
				l_directories_to_build.before
			loop
				l_new_directory_name.extend (l_directories_to_build.item)
				l_directories_to_build.back

				create l_directory.make (l_new_directory_name)
				l_directory.create_dir
				if not l_directory.exists then
					create l_io_exception
					l_io_exception.set_message ({STRING_32} "Cannot create: " + l_new_directory_name)
					l_io_exception.raise
				end
			end
		end

feature -- Access

	readentry
			-- Read next directory entry
			-- make result available in `lastentry'.
			-- Make result void if all entries have been read.
		require
			is_opened: not is_closed
		local
			l_name: SYSTEM_STRING
			l_entry: like lastentry
		do
			l_name := name.to_cil
			check attached {SYSTEM_DIRECTORY}.get_file_system_entries (l_name) as ent then
				if search_index >= ent.count then
					lastentry := Void
				else
					create l_entry.make_from_cil (ent.item (search_index))
						-- Because .NET will return something like `Current_dir\found_entry'
						-- we need to get rid of `Current_dir\' to be consistent with
						-- classic EiffelBase.
					l_entry.remove_head (name.count + 1)
					lastentry := l_entry
					search_index := search_index + 1
				end
			end
		end

	name: STRING_32
			-- Directory name
		local
			u: UTF_CONVERTER
		do
			Result := u.utf_8_string_8_to_string_32 (name_8)
		end

	has_entry (entry_name: STRING_32): BOOLEAN
			-- Has directory the entry `entry_name'?
			-- The use of `dir_temp' is required not
			-- to change the position in the current
			-- directory entries list.
		require
			string_exists: entry_name /= Void
		local
			l_name: SYSTEM_STRING
			en: SYSTEM_STRING
			i: INTEGER
			c: INTEGER
		do
			l_name := name.to_cil
			check attached {SYSTEM_DIRECTORY}.get_file_system_entries (l_name) as ent then
				en := entry_name.to_cil
				c := ent.count
				from

				until
					i = c or Result
				loop
					Result := attached ent.item (i) as l_string and then l_string.ends_with (en)
					i := i + 1
				end
			end
		end

	change_name (new_name: STRING_32)
			-- Change file name to `new_name'
		require
			not_new_name_void: new_name /= Void
			file_exists: exists
		local
			l_info: FILE_INFO
			u: UTF_CONVERTER
		do
			create l_info.make (new_name.to_cil)
			if l_info.exists then
				l_info.delete
			end
			{SYSTEM_DIRECTORY}.move (name.to_cil, new_name.to_cil)
			name_8 := u.string_32_to_utf_8_string_8 (new_name)
		ensure
			name_changed: name.is_equal (new_name)
		end

feature -- Measurement

	count: INTEGER
			-- Number of entries in directory.
		do
			if attached {SYSTEM_DIRECTORY}.get_file_system_entries ( name.to_cil) as ent then
				Result := ent.count
			end
		end

feature -- Conversion

	linear_representation: ARRAYED_LIST [STRING_32]
			-- The entries, in sequential format.
		local
			i, c, dc: INTEGER
			l_string: detachable SYSTEM_STRING
		do
			check attached {SYSTEM_DIRECTORY}.get_file_system_entries (name.to_cil) as ent then
				c := ent.count
				dc := name.count
				if name.item (name.count) = (create {OPERATING_ENVIRONMENT}).directory_separator then
					dc := dc - 1
				end
				create Result.make (c)
				from

				until
					i = c
				loop
					l_string := ent.item (i)
					if l_string /= Void then
						Result.extend (create {STRING}.make_from_cil (l_string.remove (0, dc + 1)))
					end
					i := i + 1
				end
			end
		end

feature -- Status report

	lastentry: detachable STRING_32
			-- Last entry read by `readentry'

	exists: BOOLEAN
			-- Does the directory exist?
		local
			retried: BOOLEAN
		do
			if not retried then
				Result := {SYSTEM_DIRECTORY}.exists (name.to_cil)
			end
		rescue
			retried := True
			retry
		end

	is_readable: BOOLEAN
			-- Is the directory readable?
		local
			pa: FILE_IO_PERMISSION
			di: DIRECTORY_INFO
			retried: BOOLEAN
		do
			if not retried then
				create di.make (name.to_cil)
				create pa.make_from_access_and_path ({FILE_IO_PERMISSION_ACCESS}.Read,
					di.full_name)
				pa.demand
			end
			Result := not retried
		rescue
			retried := True
			retry
		end

	is_executable: BOOLEAN
			-- Is the directory executable?
		local
			pa: FILE_IO_PERMISSION
			di: DIRECTORY_INFO
			retried: BOOLEAN
		do
			if not retried then
				create di.make (name.to_cil)
				create pa.make_from_access_and_path (
					{FILE_IO_PERMISSION_ACCESS}.path_discovery,
					di.full_name)
				pa.demand
			end
			Result := not retried
		rescue
			retried := True
			retry
		end

	is_writable: BOOLEAN
			-- Is the directory writable?
		local
			pa: FILE_IO_PERMISSION
			di: DIRECTORY_INFO
			retried: BOOLEAN
		do
			if not retried then
				create di.make (name.to_cil)
				create pa.make_from_access_and_path ({FILE_IO_PERMISSION_ACCESS}.write,
					di.full_name)
				pa.demand
			end
			Result := not retried
		rescue
			retried := True
			retry
		end

feature -- Removal

	delete
			-- Delete directory if empty
		do
			{SYSTEM_DIRECTORY}.delete (name.to_cil)
		end

	delete_content
			-- Delete all files located in current directory and its
			-- subdirectories.
		local
			l: LINEAR [STRING_32]
			file_name: FILE_NAME_32
			file: RAW_FILE_32
			dir: DIRECTORY_32
		do
			l := linear_representation
			from
				l.start
			until
				l.after
			loop
				if
					not l.item.is_equal (".") and
					not l.item.is_equal ("..")
				then
					create file_name.make_from_string (name)
					file_name.set_file_name (l.item)
					create file.make (file_name)
					if
						file.exists and then
						not file.is_symlink and then
						file.is_directory
					then
							-- Start the recursion
						create dir.make (file_name)
						dir.recursive_delete
					else
						if file.exists and then file.is_writable then
							file.delete
						end
					end
				end
				l.forth
			end
		end

	recursive_delete
			-- Delete directory, its files and its subdirectories.
		require
			directory_exists: exists
		do
			{SYSTEM_DIRECTORY}.delete_string_boolean (name.to_cil, True)
		end

	delete_content_with_action (
			action: PROCEDURE [ANY, TUPLE]
			is_cancel_requested: FUNCTION [ANY, TUPLE, BOOLEAN]
			file_number: INTEGER)

			-- Delete all files located in current directory and its
			-- subdirectories.
			--
			-- `action' is called each time `file_number' files has
			-- been deleted and before the function exits.
			-- `action' may be set to Void if you don't need it.
			--
			-- Same for `is_cancel_requested'.
			-- Make it return `True' to cancel the operation.
			-- `is_cancel_requested' may be set to Void if you don't need it.
		require
			directory_exists: exists
			valid_file_number: file_number > 0
		local
			l: LINEAR [STRING_32]
			file_name: FILE_NAME_32
			file: RAW_FILE_32
			dir: DIRECTORY_32
			file_count: INTEGER
			deleted_files: ARRAYED_LIST [STRING_32]
			deleted_files_tuple: TUPLE [ARRAYED_LIST [STRING_32]]
			current_directory: STRING_32
			parent_directory: STRING_32
			requested_cancel: BOOLEAN
		do
			file_count := 1
			create deleted_files.make (file_number)
			create deleted_files_tuple

			l := linear_representation
			current_directory := "."
			parent_directory := ".."
			from
				l.start
			until
				l.after or requested_cancel
			loop
				if
					not l.item.is_equal (current_directory) and
					not l.item.is_equal (parent_directory)
				then
					create file_name.make_from_string (name)
					file_name.set_file_name (l.item)
					create file.make (file_name)
					if
						file.exists and then
						not file.is_symlink and then
						file.is_directory
					then
							-- Start the recursion
						create dir.make (file_name)
						dir.recursive_delete_with_action (action, is_cancel_requested, file_number)
					else
						if file.exists and then file.is_writable then
							file.delete
						end
					end
						-- Add the name of the deleted file to our array
						-- of deleted files.
					deleted_files.extend (file_name)
					file_count := file_count + 1

						-- If `file_number' has been reached, call `action'.
					if file_count > file_number then
						if action /= Void then
							deleted_files_tuple.put (deleted_files, 1)
							action.call (deleted_files_tuple)
						end
						if is_cancel_requested /= Void then
							requested_cancel := is_cancel_requested.item ([])
						end
						deleted_files.wipe_out
						file_count := 1
					end
				end
				l.forth
			end
				-- If there is more than one deleted file and no
				-- agent has been called, call one now.
			if file_count > 1 then
				if action /= Void then
					deleted_files_tuple.put (deleted_files, 1)
					action.call (deleted_files_tuple)
				end
				deleted_files.wipe_out
				file_count := 1
			end
		end

	recursive_delete_with_action (
			action: PROCEDURE [ANY, TUPLE]
			is_cancel_requested: FUNCTION [ANY, TUPLE, BOOLEAN]
			file_number: INTEGER)

			-- Delete directory, its files and its subdirectories.
			--
			-- `action' is called each time `file_number' files has
			-- been deleted and before the function exits.
		require
			directory_exists: exists
		local
			deleted_files: ARRAYED_LIST [STRING_32]
		do
			delete_content_with_action (action, is_cancel_requested, file_number)
			if (is_cancel_requested = Void) or else (not is_cancel_requested.item ([])) then
				delete

					-- Call the agent with the name of the directory
				if action /= Void then
					create deleted_files.make (1)
					deleted_files.extend (name)
					action.call ([deleted_files])
				end
			end
		end

note
	library:	"EiffelBase: Library of reusable components for Eiffel."
	copyright:	"Copyright (c) 1984-2012, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end