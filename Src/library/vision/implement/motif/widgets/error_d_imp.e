indexing

	description: 
		"EiffelVision implementation of a Motif error dialog."
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class 
	ERROR_D_IMP

inherit

	ERROR_D_I;

	MESSAGE_D_IMP
		undefine
			create_widget
		redefine
			make, parent
		end;

	MEL_ERROR_DIALOG
		rename
			make as mel_error_make,
			make_no_auto_unmanage as mel_error_make_no_auto,
			foreground_color as mel_foreground_color,
			background_color as mel_background_color,
			background_pixmap as mel_background_pixmap,
			set_background_color as mel_set_background_color,
			set_foreground_color as mel_set_foreground_color,
			set_background_pixmap as mel_set_background_pixmap,
			destroy as mel_destroy,
			set_insensitive as mel_set_insensitive,
			screen as mel_screen,
			is_shown as shown
		undefine
			raise, lower, show, hide
		redefine
			parent
		select
			mel_error_make, mel_error_make_no_auto
		end

create

	make

feature {NONE} -- Initialization

	make (an_error_dialog: ERROR_D; oui_parent: COMPOSITE) is
			-- Create a motif error dialog.
		local
			mc: MEL_COMPOSITE
		do
			mc ?= oui_parent.implementation;
			widget_index := widget_manager.last_inserted_position;
			mel_error_make_no_auto (an_error_dialog.identifier, mc);
			an_error_dialog.set_dialog_imp (Current);
			initialize (parent)
		end;

feature -- Access

	parent: MEL_DIALOG_SHELL;
			-- Dialog shell of the working dialog

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




end -- class ERROR_D_IMP

