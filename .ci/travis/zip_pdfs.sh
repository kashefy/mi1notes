# A lecture pdf filename starts with two digits (e.g. 00*.pdf)
# Get the path to each lecture pdf
FILES=`find . -maxdepth 3 -name tutorial_[[:digit:]][[:digit:]]_*.pdf -not -name *comms*.pdf`
# zip them into a file
zip -j tutorial_pdfs.zip $FILES
FILES=`find . -maxdepth 3 -name tutorial_[[:digit:]][[:digit:]]_*.slides.pdf -not -name *comms*.pdf`
# zip them into a file
zip -j tutorial_slides.zip $FILES
FILES=`find . -maxdepth 3 -name tutorial_[[:digit:]][[:digit:]]_*.notes.pdf -not -name *comms*.pdf`
# zip them into a file
zip -j tutorial_notes.zip $FILES
