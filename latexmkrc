# Overleaf uses latexmk and imports Git projects with pdfLaTeX as the default.
# Route that build rule through XeLaTeX because this template uses fontspec and xeCJK.
$pdf_mode = 1;
$pdflatex = 'xelatex %O %S';
