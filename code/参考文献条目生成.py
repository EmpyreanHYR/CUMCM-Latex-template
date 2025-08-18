import os

def generate_bibitems(start, end, filename=None, dirpath=None):
    lines = []
    for i in range(start, end + 1):
        num = f"{i:02d}"
        lines.append(f"\\bibitem{{ref{num}}}\n\n\n%\\textsuperscript{{\\cite{{ref{num}}}}}")
    output = "\n".join(lines)
    if filename:
        if dirpath:
            os.makedirs(dirpath, exist_ok=True)
            filepath = os.path.join(dirpath, filename)
        else:
            filepath = filename
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(output)
        print(f"已生成文件：{filepath}")
    else:
        print(output)

if __name__ == "__main__":
    # 设置起始编号和结束编号
    start_num = 1
    end_num = 10
    # 指定输出目录
    output_dir = "output_bib"
    # 输出到指定目录下的 bibitems.txt 文件
    generate_bibitems(start_num, end_num, "bibitems.txt", output_dir)