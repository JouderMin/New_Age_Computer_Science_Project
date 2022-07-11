import os


def build_project(dir_path: str, project_name: str) -> None:
    os.chdir(dir_path)
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-erro -shell-escape " + project_name + ".tex")
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-erro -shell-escape " + project_name + ".tex")
    os.system(
        "xdvipdfmx -E " + project_name + ".xdv")
    if os.name == "nt":
        os.system("del *.bcf *.out *.xml *.toc *.xdv")
    else:
        os.system("rm *.bcf *.out *.xml *.toc *.xdv")


if __name__ == "__main__":
    build_project("书籍/基础篇/", "基础篇")
