class BB

inherit

	CC
		redefine
			f, f
		end

feature

	f is
		do
			print ("BB%N")
		end

end -- class BB
