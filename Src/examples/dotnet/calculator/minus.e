indexing
	description: "Minus operation"
	external_name: "ISE.Examples.Calculator.Minus"
	
class 
	MINUS 

inherit 
	STATE 

create
	make

feature 
	
	operation is 
		indexing
			description: "Subtract top element of stack with register."
			external_name: "Operation"
		do 
			register := operand_stack.item - register
		ensure then
			register = operand_stack.item - old register 
		end
	
end -- class MINUS 

--|----------------------------------------------------------------
--| .NET: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-2001 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building
--| 360 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support: http://support.eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

