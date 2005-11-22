indexing
	description: "Objects that draw feedback when user dragging a window."
	date: "$Date$"
	revision: "$Revision$"

class
	SD_FEEDBACK_DRAWER

feature -- Basic operations

	draw_pixmap (a_screen_x, a_screen_y: INTEGER; a_pixmap: EV_PIXMAP) is
			-- Draw a pixmap at desktop.
		require
			a_pixmap_not_void: a_pixmap /= Void
		do
			screen.set_copy_mode
			screen.draw_pixmap (a_screen_x, a_screen_y, a_pixmap)
		end

	draw_shadow_rectangle (a_start_x, a_start_y, a_width, a_height: INTEGER) is
			-- Draw a vertical line on the screen.
		do
			if last_half_tone_pixmap = Void or
				last_half_tone_pixmap.width /= a_width or last_half_tone_pixmap.height /= a_height then
				last_half_tone_pixmap := half_tone_pixmap (a_width, a_height)
			end
			screen.set_invert_mode
			screen.draw_pixmap (a_start_x, a_start_y, last_half_tone_pixmap)
		end

	draw_line (a_x_1, a_y_1, a_x_2, a_y_2: INTEGER) is
			-- Draw a line on screen.
		do
			screen.set_foreground_color ((create {EV_STOCK_COLORS}).black)
			screen.draw_segment (a_x_1, a_y_1, a_x_2, a_y_2)
		end

	clear_screen is
			-- Maximum amount of bytes the run-time can allocate.
		do
		end

	draw_red_rectangle (left, top, width, height: INTEGER) is
			-- Draw red rectangle.
		do
			screen.set_foreground_color ((create {EV_STOCK_COLORS}).red)
			screen.draw_rectangle (left, top, width, height)
		end

	draw_rectangle (left, top, width, height, line_width: INTEGER) is
			-- Draw a rectangle on the screen which center is blank.
		require
			line_width_valid: line_width > 0
		do
			-- Draw window area, top one.
			draw_shadow_rectangle (left, top, width, line_width)
			-- Draw window area, bottom one.
			draw_shadow_rectangle (left, top + height - line_width, width, line_width)
			-- Draw window area, left one.
			draw_shadow_rectangle (left, top, line_width, height)
			-- Draw window area, right one.
			draw_shadow_rectangle (left + width - line_width, top, line_width, height)
		end

	draw_transparency_rectangle (a_left, a_top, a_width, a_height: INTEGER) is
			-- Draw transparency rectangle.
		local
			l_pixmap: EV_PIXMAP
		do
			l_pixmap := internal_blue_pixmap
			l_pixmap.stretch (a_width, a_height)

			debug ("larry")
				io.put_string ("SD_FEEDBACK_DRAWER: draw_transparency_rectangle " + a_width.out + " " + a_height.out)
			end
			screen.set_and_mode
			screen.draw_pixmap (a_left, a_top, l_pixmap)
		end

	internal_blue_pixmap: EV_PIXMAP is
			-- Feedback pixmap when user dragging a SD_ZONE.
		do
			if internal_blue_pixmap_cell.item = Void then
				create Result
				Result.set_with_named_file ("D:\Projects\NewDocking\images\blue.png")
				internal_blue_pixmap_cell.put (Result)
			else
				Result := internal_blue_pixmap_cell.item
			end
		ensure
			not_void: Result /= Void
		end

	internal_blue_pixmap_cell: CELL [EV_PIXMAP] is
			-- Singleton cell of internal blue pixmap
		once
			create Result
		ensure
			not_void: Result /= Void
		end

feature {NONE} -- Implementation

	screen: EV_SCREEN is
			-- Utility to draw things on screen.
			-- FIXIT: should use once, but it not work when relogin to Windows.
		once
			create Result
		ensure
			result_not_void: Result /= Void
		end

	half_tone_pixmap (a_width, a_height: INTEGER): EV_PIXMAP is
			-- Get a dot line pixmap.
		local
			l_pixmap: EV_PIXMAP
			l_x,l_y: INTEGER
			l_white, l_black: EV_COLOR
			l_black_or_white: BOOLEAN
		do
			create l_white.make_with_rgb (1, 1, 1)
			create l_black.make_with_rgb (0, 0, 0)
			create l_pixmap.make_with_size (a_width, a_height)
			from
				l_x := 0
			until
				l_x > a_width
			loop
				from
					l_y := 0
				until
					l_y > a_height
				loop
					if l_black_or_white then
						l_pixmap.set_foreground_color (l_white)
					else
						l_pixmap.set_foreground_color (l_black)
					end
					l_pixmap.draw_point (l_x, l_y)
					l_y := l_y + 1
					l_black_or_white := not l_black_or_white
				end
				l_x := l_x + 1
			end
			Result := l_pixmap
		ensure
			not_void: Result /= Void
		end

	last_half_tone_pixmap: EV_PIXMAP
			-- Half tone pixmap last time drawn.
invariant


end
