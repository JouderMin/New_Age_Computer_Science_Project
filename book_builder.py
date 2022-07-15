import os
import sys


def build_project_quick(dir_path: str, project_name: str) -> None:
    os.chdir(dir_path)
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape " +
        project_name + ".tex"
    )
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape " +
        project_name + ".tex"
    )
    os.system(
        "xdvipdfmx -E -z0 -V 1.7 " + project_name + ".xdv")
    if os.name == "nt":
        os.system("del *.bcf *.out *.xml *.toc *.xdv *.bbl *.blg")
    else:
        os.system("del *.bcf *.out *.xml *.toc *.xdv *.bbl *.blg")


def build_project_bib(dir_path: str, project_name: str) -> None:
    os.chdir(dir_path)
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape " +
        project_name + ".tex"
    )
    os.system(
        "bibtex " + project_name
    )
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape " +
        project_name + ".tex"
    )
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape " +
        project_name + ".tex"
    )
    os.system(
        "xdvipdfmx -E -V 1.7 " + project_name + ".xdv"
    )
    if os.name == "nt":
        os.system("del *.bcf *.out *.xml *.toc *.xdv *.bbl *.blg")
    else:
        os.system("rm *.bcf *.out *.xml *.toc *.xdv *.bbl *.blg")


if __name__ == "__main__":
    bib = False
    for arg in sys.argv:
        if arg == "-b":
            bib = True

    if bib:
        build_project_bib("./书籍/基础篇/", "基础篇")
    else:
        build_project_quick("./书籍/基础篇/", "基础篇")
