pdf.font "Times-Roman"
pdf.font_size 20
pdf.text "Ministry of #{@question.ministry.name}" , :align=> :center
pdf.text "#{@question.section.name}" , :align=> :center
pdf.text "#{@question.question_type.name} Question No: #{@question.question_no}", :align=> :center

pdf.text "To be answered on dated #{@question.answer_date}", :align=> :center
pdf.text "\n"
flag=true
@question.ministers.each do |minister|
	if(flag) 
		pdf.text "#{@question.question_no}.  #{minister.name_title.name} #{minister.name}",:align=> :left
		flag=false
	else
		pdf.text "#{minister.name_title.name} #{minister.name}",:align=> :left
	end

end

