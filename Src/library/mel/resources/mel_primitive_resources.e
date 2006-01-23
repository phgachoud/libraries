indexing

	description: 
		"Primitive resources."
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class
	MEL_PRIMITIVE_RESOURCES

feature -- Implementation

	XmNbottomShadowColor: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNbottomShadowColor"
		end;	

	XmNbottomShadowPixmap: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNbottomShadowPixmap"
		end;	

	XmNforeground: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNforeground"
		end;	

	XmNhighlightColor: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNhighlightColor"
		end;	

	XmNhighlightOnEnter: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNhighlightOnEnter"
		end;	

	XmNhighlightPixmap: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNhighlightPixmap"
		end;	

	XmNhighlightThickness: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNhighlightThickness"
		end;	

	XmNnavigationType: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNnavigationType"
		end;	

	XmNshadowThickness: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNshadowThickness"
		end;	

	XmNtopShadowColor: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNtopShadowColor"
		end;	

	XmNtopShadowPixmap: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNtopShadowPixmap"
		end;	

	XmNtraversalOn: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNtraversalOn"
		end;	

	XmNunitType: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNunitType"
		end;	

	XmNuserData: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNuserData"
		end;	

	XmNhelpCallback: POINTER is
			-- Motif resource
		external
			"C [macro <Xm/Xm.h>] : EIF_POINTER"
		alias
			"XmNhelpCallback"
		end;	

	XmNONE: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"XmNONE"
		end;	

	XmTAB_GROUP: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"XmTAB_GROUP"
		end;	

	XmSTICKY_TAB_GROUP: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"XmSTICKY_TAB_GROUP"
		end;	

	XmEXCLUSIVE_TAB_GROUP: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"XmEXCLUSIVE_TAB_GROUP"
		end;	

	XmPIXELS: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"XmPIXELS"
		end;	

	Xm100TH_MILLIMETERS: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"Xm100TH_MILLIMETERS"
		end;	

	Xm1000TH_INCHES: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"Xm1000TH_INCHES"
		end;	

	Xm100TH_POINTS: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"Xm100TH_POINTS"
		end;	

	Xm100TH_FONT_UNITS: INTEGER is
			-- Motif constant value
		external
			"C [macro <Xm/Xm.h>] : EIF_INTEGER"
		alias
			"Xm100TH_FONT_UNITS"
		end;	

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




end -- class MEL_PRIMITIVE_RESOURCES


