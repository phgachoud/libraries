class AA

create

	make

feature

	make
		local
			b: BB [STRING]
		do
			create b
			b.f
			print (b.item.generating_type)
		end

end -- class AA
