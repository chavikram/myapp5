pdf.stroke_axis
# Triangle
pdf.stroke_polygon [50, 200], [50, 300], [150, 300]
# Hexagon
pdf.fill_polygon [50, 150], [150, 200], [250, 150],
[250, 50], [150, 0], [50, 50]
# Pentagram
pentagon_points = [500, 100], [430, 5], [319, 41], [319, 159], [430, 195]
pentagram_points = [0, 2, 4, 1, 3].map{ |i| pentagon_points[i] }
pdf.stroke_rounded_polygon(20, *pentagram_points)
pdf.start_new_page
pdf.save_graphics_state do
		pdf.soft_mask do
				0.upto 15 do |i|
					pdf.fill_color 0, 0, 0, 100.0 / 16.0 * (15 - i)
					pdf.fill_circle [75 + i * 25, 100], 60
				end
		end
		pdf.fill_color '009ddc'
		pdf.fill_rectangle [0, 60], 600, 20
		pdf.fill_color '963d97'
		pdf.fill_rectangle [0, 80], 600, 20
		pdf.fill_color 'e03a3e'
		pdf.fill_rectangle [0, 100], 600, 20
		pdf.fill_color 'f5821f'
		pdf.fill_rectangle [0, 120], 600, 20
		pdf.fill_color 'fdb827'
		pdf.fill_rectangle [0, 140], 600, 20
		pdf.fill_color '61bb46'
		pdf.fill_rectangle [0, 160], 600, 20
end