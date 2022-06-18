import os


def build_all_dir(dir_path, file_name):
    os.chdir(dir_path)
    os.system(
        "xelatex --no-pdf -synctex=1 -interaction=nonstopmode -file-line-erro -shell-escape " + file_name)
    os.system(
        "xelatex -synctex=1 -interaction=nonstopmode -file-line-erro -shell-escape " + file_name)
    os.system("rm *.bcf *.out *.xml *.toc *.xdv")


if __name__ == "__main__":
    build_all_dir("书籍/基础篇/", "基础篇.tex")
