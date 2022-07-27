(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-run-style-hooks
    "latex2e"
    "PersonalStatement"
    "Education"
    "ResearchExperience"
    "WorkExperience"
    "Skills"
    "Publications"
    "Talks"
    "Workshops"
    "Scholarships"
    "Prizes"
    "Societies"
    "Extra"
    "article"
    "art10"
    "amsmath"
    "amsthm"
    "amssymb"
    "amsfonts"
    "multibib"
    "hyperref")
   (TeX-add-symbols
    "grob"))
 :latex)

