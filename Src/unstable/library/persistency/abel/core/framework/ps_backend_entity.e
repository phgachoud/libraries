note
	description: "Represents an entity (i.e. a collection or object) within the database."
	author: "Roman Schmocker"
	date: "$Date$"
	revision: "$Revision$"

class
	PS_BACKEND_ENTITY

create {PS_EIFFELSTORE_EXPORT}
	make

feature {PS_EIFFELSTORE_EXPORT} -- Access

	primary_key: INTEGER
			-- The primary key of the entity.

	metadata: PS_TYPE_METADATA
			-- The type of the entity.

--	operation: PS_WRITE_OPERATION
--			-- The operation to be performed on the current entity.

feature {PS_EIFFELSTORE_EXPORT} -- Status report

	is_new: BOOLEAN
			-- Has the current entity been freshly generated by the backend?

feature {PS_EIFFELSTORE_EXPORT} -- Element change

	declare_as_old
			-- Set `is_new' to `False'
		do
			is_new := False
		ensure
			is_old: not is_new
		end

--	set_operation (op: PS_WRITE_OPERATION)
--			-- Set the current operation
--		do
--			operation := op
--		end

feature {NONE} -- Initialization

	make (key: INTEGER; type: PS_TYPE_METADATA)
			-- Initialization for `Current'.
		do
			primary_key := key
			metadata := type
--			create operation
--			operation := operation.No_operation
		ensure
			key_set: primary_key = key
			metadata_set: metadata.is_equal (type)
--			default_operation: operation = operation.No_operation
			not_fresh: not is_new
		end

	make_fresh (key: INTEGER; type: PS_TYPE_METADATA)
			-- Initialization for `Current'.
		do
			make (key, type)
			is_new := True
		ensure
			key_set: primary_key = key
			metadata_set: metadata.is_equal (type)
--			default_operation: operation = operation.No_operation
			fresh: is_new
		end


end
