indexing
	description: "Control that displays a hierarchical list of items."
	note: "The common controls dll (WEL_COMMON_CONTROLS_DLL) needs to %
		%be loaded to use this control."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	WEL_TREE_VIEW

inherit
	WEL_CONTROL
		redefine
			process_notification_info
		end

	WEL_TVS_CONSTANTS
		export
			{NONE} all
		end

	WEL_TVM_CONSTANTS
		export
			{NONE} all
		end

	WEL_TVN_CONSTANTS
		export
			{NONE} all
		end

	WEL_TVGN_CONSTANTS
		export
			{NONE} all
		end

	WEL_TVAF_CONSTANTS
		export
			{NONE} all
		end

creation
	make,
	make_by_id

feature {NONE} -- Initialization

	make (a_parent: WEL_WINDOW; a_x, a_y, a_width, a_height,
				an_id: INTEGER) is
			-- Make a tree view control.
		require
			a_parent_not_void: a_parent /= Void
		do
			internal_window_make (a_parent, Void,
				default_style, a_x, a_y, a_width, a_height,
				an_id, default_pointer)
			id := an_id
		ensure
			exists: exists
			parent_set: parent = a_parent
			id_set: id = an_id
		end

feature -- Access

	last_item: INTEGER
			-- Handle of the last item inserted

feature -- Status report

	count: INTEGER is
			-- Number of items in the tree view window
		require
			exists: exists
		do
			Result := cwin_send_message_result (item, Tvm_getcount,
				0, 0)
		ensure
			positive_result: Result >= 0
		end

	visible_count: INTEGER is
			-- Number of items that will fit into the tree
			-- view window
		require
			exists: exists
		do
			Result := cwin_send_message_result (item,
				Tvm_getvisiblecount, 0, 0)
		ensure
			positive_result: Result >= 0
		end

	indent: INTEGER is
			-- Amout, in pixels, that child items are indented
			-- relative to their parent items.
		require
			exists: exists
		do
			Result := cwin_send_message_result (item,
				Tvm_getindent, 0, 0)
		end

feature -- Status setting

	select_item (an_item: WEL_TREE_VIEW_ITEM) is
			-- Set the selection to the given `an_item'.
		require
			exists: exists
		do
			cwin_send_message (item, Tvm_selectitem,
				Tvgn_caret, an_item.h_item)
		end

	select_first_visible (an_item: WEL_TREE_VIEW_ITEM) is
			-- Scrolls the tree view vertically so that 
			-- the given `an_item' is the first visible item.
		require
			exists: exists
		do
			cwin_send_message (item, Tvm_selectitem,
				Tvgn_firstvisible, an_item.h_item)
		end

	select_drop_target (an_item: WEL_TREE_VIEW_ITEM) is
			-- Redraw the given `an_item' in the style used to 
			-- indicate the target of a drag and drop operation.
		require
			exists: exists
		do
			cwin_send_message (item, Tvm_selectitem,
				Tvgn_drophilite, an_item.h_item)
		end

	set_indent (an_indent: INTEGER) is
			-- Set `indent' with `an_indent'.
		require
			exists: exists
		do
			cwin_send_message (item, Tvm_setindent, an_indent, 0)
		end

feature -- Element change

	insert_item (an_item: WEL_TREE_VIEW_INSERT_STRUCT) is
			-- Insert `an_item'.
		require
			exists: exists
			an_item_not_void: an_item /= Void
		do
			last_item := cwin_send_message_result (item,
				Tvm_insertitem, 0, an_item.to_integer)
		ensure
			new_count: count = old count + 1 
		end

feature -- Notifications

	on_tvn_begindrag (info: WEL_NM_TREE_VIEW) is
			-- A drag-and-drop operation involving the left mouse
			-- button is being initiated.
		require
			exists: exists
		do
		end

	on_tvn_beginlabeledit (info: WEL_NM_TREE_VIEW) is
			-- A label editing for an item has started.
		require
			exists: exists
		do
		end

	on_tvn_beginrdrag (info: WEL_NM_TREE_VIEW) is
			-- A drag-and-drop operation involving the right mouse
			-- button is being initiated.
		require
			exists: exists
		do
		end

	on_tvn_deleteitem (info: WEL_NM_TREE_VIEW) is
			-- An item has been deleted.
		require
			exists: exists
		do
		end

	on_tvn_endlabeledit (info: WEL_NM_TREE_VIEW) is
			-- A label editing for an item has ended.
		require
			exists: exists
		do
		end

	on_tvn_itemexpanded (info: WEL_NM_TREE_VIEW) is
			-- a parent item's list of child items has expanded
			-- or collapsed.
		require
			exists: exists
		do
		end

	on_tvn_itemexpanding (info: WEL_NM_TREE_VIEW) is
			-- a parent item's list of child items is about to
			-- expand or collapse.
		require
			exists: exists
		do
		end

	on_tvn_keydown (info: WEL_NM_TREE_VIEW) is
			-- The user pressed a key and the tree-view control 
			-- has the input focus.
		require
			exists: exists
		do
		end

	on_tvn_selchanged (info: WEL_NM_TREE_VIEW) is
			-- Selection has changed from one item to another.
		require
			exists: exists
		do
		end

	on_tvn_selchanging (info: WEL_NM_TREE_VIEW) is
			-- Selection is about to change from one item to
			-- another.
		require
			exists: exists
		do
		end

feature {WEL_COMPOSITE_WINDOW} -- Implementation

	process_notification_info (notification_info: WEL_NMHDR) is
			-- Process a `notification_code' sent by Windows
			-- through the Wm_notify message
		local
			tree_info: WEL_NM_TREE_VIEW
			code: INTEGER
		do
			!! tree_info.make_by_nmhdr (notification_info)
			code := notification_info.code 
			if code = Tvn_begindrag then
				on_tvn_begindrag (tree_info)
			elseif code = Tvn_beginlabeledit then
				on_tvn_beginlabeledit (tree_info)
			elseif code = Tvn_beginrdrag then
				on_tvn_beginrdrag (tree_info)
			elseif code = Tvn_deleteitem then
				on_tvn_deleteitem (tree_info)
			elseif code = Tvn_endlabeledit then
				on_tvn_endlabeledit (tree_info)
			elseif code = Tvn_itemexpanded then
				on_tvn_itemexpanded (tree_info)
			elseif code = Tvn_itemexpanding then
				on_tvn_itemexpanding (tree_info)
			elseif code = Tvn_keydown then
				on_tvn_keydown (tree_info)
			elseif code = Tvn_selchanged then
				on_tvn_selchanged (tree_info)
			elseif code = Tvn_selchanging then
				on_tvn_selchanging (tree_info)
			end
		end

feature {NONE} -- Implementation

	class_name: STRING is
			-- Window class name to create
		once
			!! Result.make (0)
			Result.from_c (cwin_wc_treeview)
		end

	default_style: INTEGER is
			-- Default style used to create the control
		once
			Result := Ws_visible + Ws_child + Ws_group +
				Ws_tabstop + Ws_border + Tvs_haslines +
				Tvs_hasbuttons + Tvs_linesatroot
		end

feature {NONE} -- Externals

	cwin_wc_treeview: POINTER is
		external
			"C [macro <cctrl.h>]"
		alias
			"WC_TREEVIEW"
		end

end -- class WEL_TREE_VIEW

--|----------------------------------------------------------------
--| Windows Eiffel Library: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-1998 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building, 2nd floor
--| 270 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

