indexing
	description: "Implementation of TUPLE";
	status: "See notice at end of class";
	date: "$Date$";
	revision: "$Revision$"

class
	TUPLE

inherit
	ARRAY [ANY]
		rename
			make as array_make
		end

creation
	make

feature -- Creation

	make is

		do
			array_make (1, eif_gen_count ($Current))
		end

feature -- Type queries

	is_boolean_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' a BOOLEAN?
		require
			valid_index: valid_index (idx)
		do
			Result := (eif_gen_typecode ($Current, idx) = 'b')
		end

	is_character_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' a CHARACTER?
		require
			valid_index: valid_index (idx)
		do
			Result := (eif_gen_typecode ($Current, idx) = 'c')
		end

	is_double_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' a DOUBLE?
		require
			valid_index: valid_index (idx)
		do
			Result := (eif_gen_typecode ($Current, idx) = 'd')
		end

	is_integer_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' an INTEGER?
		require
			valid_index: valid_index (idx)
		do
			Result := (eif_gen_typecode ($Current, idx) = 'i')
		end

	is_pointer_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' a POINTER?
		require
			valid_index: valid_index (idx)
		do
			Result := (eif_gen_typecode ($Current, idx) = 'p')
		end

	is_real_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' a REAL?
		require
			valid_index: valid_index (idx)
		do
			Result := (eif_gen_typecode ($Current, idx) = 'f')
		end

	is_reference_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' a REFERENCE?
		require
			valid_index: valid_index (idx)
		do
			Result := (eif_gen_typecode ($Current, idx) = 'r')
		end

	is_numeric_item (idx: INTEGER): BOOLEAN is
			-- Is item at index `idx' a number?
		require
			valid_index: valid_index (idx)
		local
			tcode: CHARACTER
		do
			tcode := eif_gen_typecode ($Current, idx)
			Result := (tcode = 'i') or else
					  (tcode = 'f') or else
					  (tcode = 'd')
		end

	is_uniform: BOOLEAN is
			-- Are all items of the same basic type or all of reference type?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, '?')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	is_uniform_boolean: BOOLEAN is
			-- Are all items of type BOOLEAN?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, 'b')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	is_uniform_character: BOOLEAN is
			-- Are all items of type CHARACTER?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, 'c')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	is_uniform_double: BOOLEAN is
			-- Are all items of type DOUBLE?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, 'd')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	is_uniform_integer: BOOLEAN is
			-- Are all items of type INTEGER?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, 'i')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	is_uniform_pointer: BOOLEAN is
			-- Are all items of type POINTER?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, 'p')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	is_uniform_real: BOOLEAN is
			-- Are all items of type REAL?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, 'f')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	is_uniform_reference: BOOLEAN is
			-- Are all items of reference type?
		do
			if count > 0 then
				Result := eif_gen_is_uniform ($Current, 'r')
			else
				Result := True
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

feature -- Type conversion queries

	convertible_to_double: BOOLEAN is
			-- Is current convertible to an array of doubles?
		local
			i, cnt: INTEGER
			tcode: CHARACTER
		do
			Result := True
			from
				i := 1
				cnt := count
			until
				i > cnt or else not Result
			loop
				tcode := eif_gen_typecode ($Current, i)
				Result := (tcode = 'i') or else 
						  (tcode = 'f') or else 
						  (tcode = 'd')
				i := i + 1
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

	convertible_to_real: BOOLEAN is
			-- Is current convertible to an array of reals?
		local
			i, cnt: INTEGER
			tcode: CHARACTER
		do
			Result := True
			from
				i := 1
				cnt := count
			until
				i > cnt or else not Result
			loop
				tcode := eif_gen_typecode ($Current, i)
				Result := (tcode = 'i') or else (tcode = 'f')
				i := i + 1
			end
		ensure
			yes_if_empty: (count = 0) implies Result
		end

feature -- Access

	boolean_item (idx: INTEGER): BOOLEAN is
			-- Boolean item at index `idx'.
		require
			valid_index: valid_index (idx);
			is_boolean: is_boolean_item (idx)
		local
			ref: BOOLEAN_REF
		do
			ref ?= item (idx)
			if ref /= Void then
				Result := ref.item
			end
		end

	character_item (idx: INTEGER): CHARACTER is
			-- Character item at index `idx'.
		require
			valid_index: valid_index (idx);
			is_character: is_character_item (idx)
		local
			ref: CHARACTER_REF
		do
			ref ?= item (idx)
			if ref /= Void then
				Result := ref.item
			end
		end

	double_item (idx: INTEGER): DOUBLE is
			-- Double item at index `idx'.
		require
			valid_index: valid_index (idx);
			is_numeric: is_numeric_item (idx)
		local
			iref: INTEGER_REF
			rref: REAL_REF
			dref: DOUBLE_REF
		do
			dref ?= item (idx)
			if dref /= Void then
				Result := dref.item
			else
				rref ?= item (idx)
				if rref /= Void then
					Result := rref.item
				else
					iref ?= item (idx)
					if iref /= Void then
						Result := iref.item
					end
				end
			end
		end

	integer_item (idx: INTEGER): INTEGER is
			-- Integer item at index `idx'.
		require
			valid_index: valid_index (idx);
			is_integer: is_integer_item (idx)
		local
			ref: INTEGER_REF
		do
			ref ?= item (idx)
			if ref /= Void then
				Result := ref.item
			end
		end

	pointer_item (idx: INTEGER): POINTER is
			-- Pointer item at index `idx'.
		require
			valid_index: valid_index (idx);
			is_pointer: is_pointer_item (idx)
		local
			ref: POINTER_REF
		do
			ref ?= item (idx)
			if ref /= Void then
				Result := ref.item
			end
		end

	real_item (idx: INTEGER): REAL is
			-- real item at index `idx'.
		require
			valid_index: valid_index (idx);
			is_real_or_integer: is_real_item (idx) or else is_integer_item (idx)
		local
			iref: INTEGER_REF
			rref: REAL_REF
			dref: DOUBLE_REF
		do
			rref ?= item (idx)
			if rref /= Void then
				Result := rref.item
			else
				iref ?= item (idx)
				if iref /= Void then
					Result := iref.item
				else
					-- Special case (manifest TUPLEs)
					dref ?= item (idx)
					if dref /= Void then
						Result := dref.truncated_to_real
					end
				end
			end
		end

feature -- Conversion

	arrayed: ARRAY [ANY] is
			-- Items of Current as array
		local
			i, cnt: INTEGER
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				Result.put (item (i), i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
			same_items: -- Items are the same in same order
		end

	boolean_arrayed: ARRAY [BOOLEAN] is
			-- Items of Current as array
		require
			is_uniform_boolean: is_uniform_boolean
		local
			i, cnt: INTEGER
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				Result.put (boolean_item (i), i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
			same_items: -- Items are the same in same order
		end

	character_arrayed: ARRAY [CHARACTER] is
			-- Items of Current as array
		require
			is_uniform_character: is_uniform_character
		local
			i, cnt: INTEGER
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				Result.put (character_item (i), i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
			same_items: -- Items are the same in same order
		end

	double_arrayed: ARRAY [DOUBLE] is
			-- Items of Current as array
		require
			convertible: convertible_to_double
		local
			i, cnt: INTEGER
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				Result.put (double_item (i), i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
			same_items: -- Items are the same in same order
		end

	integer_arrayed: ARRAY [INTEGER] is
			-- Items of Current as array
		require
			is_uniform_integer: is_uniform_integer
		local
			i, cnt: INTEGER
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				Result.put (integer_item (i), i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
			same_items: -- Items are the same in same order
		end

	pointer_arrayed: ARRAY [POINTER] is
			-- Items of Current as array
		require
			is_uniform_pointer: is_uniform_pointer
		local
			i, cnt: INTEGER
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				Result.put (pointer_item (i), i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
			same_items: -- Items are the same in same order
		end

	real_arrayed: ARRAY [REAL] is
			-- Items of Current as array
		require
			convertible: convertible_to_real
		local
			i, cnt: INTEGER
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				Result.put (real_item (i), i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
			same_items: -- Items are the same in same order
		end

	string_arrayed: ARRAY [STRING] is
			-- Items of Current as array
			-- NOTE: Items with a type not cconforming to
			--       type STRING are set to Void.
		local
			i, cnt: INTEGER
			s: STRING
		do
			from
				i := 1
				cnt := count
				!!Result.make (1, cnt)
			until
				i > cnt
			loop
				s ?= item (i)
				Result.put (s, i)
				i := i + 1
			end
		ensure
			exists: Result /= Void;
			same_count: Result.count = count;
		end

feature {ROUTINE}

	arg_item_code (idx: INTEGER): CHARACTER is
			-- Type code of item at `index'. Used for
			-- argument processing in ROUTINE
		require
			valid_index: valid_index (idx)
		do
			Result := eif_gen_typecode ($Current, idx)
		end

feature {NONE} -- Implementation

	eif_gen_is_uniform (obj: POINTER; code: CHARACTER): BOOLEAN is
			-- Are all items in `obj' of type `code'?
		external
			"C | %"eif_gen_conf.h%""
		end

	eif_gen_typecode (obj: POINTER; pos: INTEGER): CHARACTER is
			-- Code for generic parameter `pos' in `obj'.
		external
			"C | %"eif_gen_conf.h%""
		end

	eif_gen_count (obj: POINTER): INTEGER is
			-- Number of generic parameters of `obj'.
		external
			"C | %"eif_gen_conf.h%""
		end

end -- class TUPLE

