/*
 * TVINSS.H
 */

#ifndef __WEL_TREEVIEWINSERTSTRUCT__
#define __WEL_TREEVIEWINSERTSTRUCT__

#ifndef __WEL__
#	include <cctrl.h>
#endif

#define cwel_insertstruct_set_hparent(_ptr_, _value_) (((TV_INSERTSTRUCT *) _ptr_)->hParent = (HTREEITEM) (_value_))
#define cwel_insertstruct_set_hinsertafter(_ptr_, _value_) (((TV_INSERTSTRUCT *) _ptr_)->hInsertAfter = (HTREEITEM) (_value_))
#define cwel_insertstruct_set_item(_ptr_, _value_) (((TV_INSERTSTRUCT *) _ptr_)->item = (*(TV_ITEM *) (_value_)))

#define cwel_insertstruct_get_hparent(_ptr_) ((((TV_INSERTSTRUCT *) _ptr_)->hParent))
#define cwel_insertstruct_get_hinsertafter(_ptr_) ((((TV_INSERTSTRUCT *) _ptr_)->hInsertAfter))
#define cwel_insertstruct_get_item(_ptr_) (&(((TV_INSERTSTRUCT *) _ptr_)->item))

#endif /* __WEL_TREEVIEWINSERTSTRUCT__ */

/*
--|-------------------------------------------------------------------------
--| Windows Eiffel Library: library of reusable components for ISE Eiffel 3.
--| Copyright (C) 1995, Interactive Software Engineering, Inc.
--| All rights reserved. Duplication and distribution prohibited.
--|
--| 270 Storke Road, Suite 7, Goleta, CA 93117 USA
--| Telephone 805-685-1006
--| Fax 805-685-6869
--| Information e-mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--|-------------------------------------------------------------------------
*/
