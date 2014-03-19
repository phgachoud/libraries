note
	description: "Task Scheduler."
	generator: "Automatically generated by the EiffelCOM Wizard."

class
	X_TASK_TRIGGER_RECORD

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

	cb_trigger_size: INTEGER
			-- Structure size.
		do
			Result := ccom_x_task_trigger_cb_trigger_size (item)
		end

	reserved1: INTEGER
			-- Reserved. Must be zero.
		do
			Result := ccom_x_task_trigger_reserved1 (item)
		end

	w_begin_year: INTEGER
			-- Trigger beginning date year.
		do
			Result := ccom_x_task_trigger_w_begin_year (item)
		end

	w_begin_month: INTEGER
			-- Trigger beginning date month.
		do
			Result := ccom_x_task_trigger_w_begin_month (item)
		end

	w_begin_day: INTEGER
			-- Trigger beginning date day.
		do
			Result := ccom_x_task_trigger_w_begin_day (item)
		end

	w_end_year: INTEGER
			-- Optional trigger ending date year.
		do
			Result := ccom_x_task_trigger_w_end_year (item)
		end

	w_end_month: INTEGER
			-- Optional trigger ending date month.
		do
			Result := ccom_x_task_trigger_w_end_month (item)
		end

	w_end_day: INTEGER
			-- Optional trigger ending date day.
		do
			Result := ccom_x_task_trigger_w_end_day (item)
		end

	w_start_hour: INTEGER
			-- Run bracket start time hour.
		do
			Result := ccom_x_task_trigger_w_start_hour (item)
		end

	w_start_minute: INTEGER
			-- Run bracket start time minute.
		do
			Result := ccom_x_task_trigger_w_start_minute (item)
		end

	minutes_duration: INTEGER
			-- Duration of run bracket.
		do
			Result := ccom_x_task_trigger_minutes_duration (item)
		end

	minutes_interval: INTEGER
			-- Run bracket repetition interval.
		do
			Result := ccom_x_task_trigger_minutes_interval (item)
		end

	rg_flags: INTEGER
			-- Trigger flags.
		do
			Result := ccom_x_task_trigger_rg_flags (item)
		end

	trigger_type: INTEGER
			-- Trigger type.
		do
			Result := ccom_x_task_trigger_trigger_type (item)
		end

	type: X_TRIGGER_TYPE_UNION_UNION
			-- Trigger data.
		do
			Result := ccom_x_task_trigger_type (item)
		ensure
			valid_type: Result.item /= default_pointer
		end

	reserved2: INTEGER
			-- Reserved. Must be zero.
		do
			Result := ccom_x_task_trigger_reserved2 (item)
		end

	w_random_minutes_interval: INTEGER
			-- Maximum number of random minutes after start time.
		do
			Result := ccom_x_task_trigger_w_random_minutes_interval (item)
		end

feature -- Measurement

	structure_size: INTEGER
			-- Size of structure
		do
			Result := c_size_of_x_task_trigger
		end

feature -- Basic Operations

	set_cb_trigger_size (a_cb_trigger_size: INTEGER)
			-- Set `cb_trigger_size' with `a_cb_trigger_size'.
		do
			ccom_x_task_trigger_set_cb_trigger_size (item, a_cb_trigger_size)
		end

	set_reserved1 (a_reserved1: INTEGER)
			-- Set `reserved1' with `a_reserved1'.
		do
			ccom_x_task_trigger_set_reserved1 (item, a_reserved1)
		end

	set_w_begin_year (a_w_begin_year: INTEGER)
			-- Set `w_begin_year' with `a_w_begin_year'.
		do
			ccom_x_task_trigger_set_w_begin_year (item, a_w_begin_year)
		end

	set_w_begin_month (a_w_begin_month: INTEGER)
			-- Set `w_begin_month' with `a_w_begin_month'.
		do
			ccom_x_task_trigger_set_w_begin_month (item, a_w_begin_month)
		end

	set_w_begin_day (a_w_begin_day: INTEGER)
			-- Set `w_begin_day' with `a_w_begin_day'.
		do
			ccom_x_task_trigger_set_w_begin_day (item, a_w_begin_day)
		end

	set_w_end_year (a_w_end_year: INTEGER)
			-- Set `w_end_year' with `a_w_end_year'.
		do
			ccom_x_task_trigger_set_w_end_year (item, a_w_end_year)
		end

	set_w_end_month (a_w_end_month: INTEGER)
			-- Set `w_end_month' with `a_w_end_month'.
		do
			ccom_x_task_trigger_set_w_end_month (item, a_w_end_month)
		end

	set_w_end_day (a_w_end_day: INTEGER)
			-- Set `w_end_day' with `a_w_end_day'.
		do
			ccom_x_task_trigger_set_w_end_day (item, a_w_end_day)
		end

	set_w_start_hour (a_w_start_hour: INTEGER)
			-- Set `w_start_hour' with `a_w_start_hour'.
		do
			ccom_x_task_trigger_set_w_start_hour (item, a_w_start_hour)
		end

	set_w_start_minute (a_w_start_minute: INTEGER)
			-- Set `w_start_minute' with `a_w_start_minute'.
		do
			ccom_x_task_trigger_set_w_start_minute (item, a_w_start_minute)
		end

	set_minutes_duration (a_minutes_duration: INTEGER)
			-- Set `minutes_duration' with `a_minutes_duration'.
		do
			ccom_x_task_trigger_set_minutes_duration (item, a_minutes_duration)
		end

	set_minutes_interval (a_minutes_interval: INTEGER)
			-- Set `minutes_interval' with `a_minutes_interval'.
		do
			ccom_x_task_trigger_set_minutes_interval (item, a_minutes_interval)
		end

	set_rg_flags (a_rg_flags: INTEGER)
			-- Set `rg_flags' with `a_rg_flags'.
		do
			ccom_x_task_trigger_set_rg_flags (item, a_rg_flags)
		end

	set_trigger_type (a_trigger_type: INTEGER)
			-- Set `trigger_type' with `a_trigger_type'.
		do
			ccom_x_task_trigger_set_trigger_type (item, a_trigger_type)
		end

	set_type (a_type: X_TRIGGER_TYPE_UNION_UNION)
			-- Set `type' with `a_type'.
		require
			attached_a_type: a_type /= Void
			valid_a_type: a_type.item /= default_pointer
		do
			ccom_x_task_trigger_set_type (item, a_type.item)
		end

	set_reserved2 (a_reserved2: INTEGER)
			-- Set `reserved2' with `a_reserved2'.
		do
			ccom_x_task_trigger_set_reserved2 (item, a_reserved2)
		end

	set_w_random_minutes_interval (a_w_random_minutes_interval: INTEGER)
			-- Set `w_random_minutes_interval' with `a_w_random_minutes_interval'.
		do
			ccom_x_task_trigger_set_w_random_minutes_interval (item, a_w_random_minutes_interval)
		end

feature {NONE}  -- Externals

	c_size_of_x_task_trigger: INTEGER
			-- Size of structure
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER.h%"]"
		alias 
			"sizeof (ecom_MS_TaskSched_lib::_TASK_TRIGGER)"
		end

	ccom_x_task_trigger_cb_trigger_size (a_pointer: POINTER): INTEGER
			-- Structure size.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_cb_trigger_size (a_pointer: POINTER; arg2: INTEGER)
			-- Structure size.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_reserved1 (a_pointer: POINTER): INTEGER
			-- Reserved. Must be zero.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_reserved1 (a_pointer: POINTER; arg2: INTEGER)
			-- Reserved. Must be zero.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_begin_year (a_pointer: POINTER): INTEGER
			-- Trigger beginning date year.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_begin_year (a_pointer: POINTER; arg2: INTEGER)
			-- Trigger beginning date year.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_begin_month (a_pointer: POINTER): INTEGER
			-- Trigger beginning date month.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_begin_month (a_pointer: POINTER; arg2: INTEGER)
			-- Trigger beginning date month.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_begin_day (a_pointer: POINTER): INTEGER
			-- Trigger beginning date day.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_begin_day (a_pointer: POINTER; arg2: INTEGER)
			-- Trigger beginning date day.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_end_year (a_pointer: POINTER): INTEGER
			-- Optional trigger ending date year.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_end_year (a_pointer: POINTER; arg2: INTEGER)
			-- Optional trigger ending date year.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_end_month (a_pointer: POINTER): INTEGER
			-- Optional trigger ending date month.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_end_month (a_pointer: POINTER; arg2: INTEGER)
			-- Optional trigger ending date month.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_end_day (a_pointer: POINTER): INTEGER
			-- Optional trigger ending date day.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_end_day (a_pointer: POINTER; arg2: INTEGER)
			-- Optional trigger ending date day.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_start_hour (a_pointer: POINTER): INTEGER
			-- Run bracket start time hour.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_start_hour (a_pointer: POINTER; arg2: INTEGER)
			-- Run bracket start time hour.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_start_minute (a_pointer: POINTER): INTEGER
			-- Run bracket start time minute.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_start_minute (a_pointer: POINTER; arg2: INTEGER)
			-- Run bracket start time minute.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_minutes_duration (a_pointer: POINTER): INTEGER
			-- Duration of run bracket.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_minutes_duration (a_pointer: POINTER; arg2: INTEGER)
			-- Duration of run bracket.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, ULONG)"
		end

	ccom_x_task_trigger_minutes_interval (a_pointer: POINTER): INTEGER
			-- Run bracket repetition interval.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_minutes_interval (a_pointer: POINTER; arg2: INTEGER)
			-- Run bracket repetition interval.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, ULONG)"
		end

	ccom_x_task_trigger_rg_flags (a_pointer: POINTER): INTEGER
			-- Trigger flags.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_rg_flags (a_pointer: POINTER; arg2: INTEGER)
			-- Trigger flags.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, ULONG)"
		end

	ccom_x_task_trigger_trigger_type (a_pointer: POINTER): INTEGER
			-- Trigger type.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_REFERENCE"
		end

	ccom_x_task_trigger_set_trigger_type (a_pointer: POINTER; arg2: INTEGER)
			-- Trigger type.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, long)"
		end

	ccom_x_task_trigger_type (a_pointer: POINTER): X_TRIGGER_TYPE_UNION_UNION
			-- Trigger data.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_REFERENCE"
		end

	ccom_x_task_trigger_set_type (a_pointer: POINTER; arg2: POINTER)
			-- Trigger data.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, ecom_MS_TaskSched_lib::_TRIGGER_TYPE_UNION *)"
		end

	ccom_x_task_trigger_reserved2 (a_pointer: POINTER): INTEGER
			-- Reserved. Must be zero.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_reserved2 (a_pointer: POINTER; arg2: INTEGER)
			-- Reserved. Must be zero.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

	ccom_x_task_trigger_w_random_minutes_interval (a_pointer: POINTER): INTEGER
			-- Maximum number of random minutes after start time.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *):EIF_INTEGER"
		end

	ccom_x_task_trigger_set_w_random_minutes_interval (a_pointer: POINTER; arg2: INTEGER)
			-- Maximum number of random minutes after start time.
		external
			"C++ [macro %"ecom_MS_TaskSched_lib__TASK_TRIGGER_impl.h%"](ecom_MS_TaskSched_lib::_TASK_TRIGGER *, USHORT)"
		end

end -- X_TASK_TRIGGER_RECORD

