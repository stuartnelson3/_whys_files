fork do
args = `ls | grep -v .md | grep -v .rb | grep -v .pdf`.split("\n")
args.each {|e| `pcl6 -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile=#{e}.pdf #{e}` }
end
exit
