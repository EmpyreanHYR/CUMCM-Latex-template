# CUMCM-Latex-template

数学建模国赛（CUMCM）LaTeX模板，适用于中国大学生数学建模竞赛论文撰写，支持中文、公式、代码、参考文献、自动目录等。

## 关于2025年新规定的AI工具使用详情报告模板

为可能的AI工具使用，提供了一个参考模板，详情可参见仓库 [CUMCM-AI-Usage-Report](https://github.com/EmpyreanHYR/CUMCM-AI-Usage-Report) 。

## 项目结构

- `document.tex`：主控文件，包含所有章节和宏包设置。
- `cumcmthesis.cls`：模板核心类文件，定义论文格式。
- `book.bib`：参考文献数据库（BibTeX格式）。
- `code/`：存放代码示例（支持Python、MATLAB等）。
- `texfile/`：各章节内容，按比赛论文结构拆分：
  - `1abstract.tex`：摘要
  - `2ProblemRestatement.tex`：问题重述
  - `3ProblemAnalysis.tex`：问题分析
  - `4AssumptionAndSign.tex`：假设与符号说明
  - `5MakeModel.tex`：模型建立与求解
  - `6ErrorAnalysis.tex`：误差分析
  - `7ModelEvaluation.tex`：模型评价
  - `8Reference.tex`：参考文献
  - `9Appendix.tex`：附录
  - `figures/`：图片资源
- `常用LaTex代码指令.txt`：常用LaTeX命令备忘
- `build.bat`：一键编译脚本（双击即可：XeLaTeX + BibTeX 完整编译，编译后自动清理冗余文件，目录保持干净）

## 主要功能

- 支持中文排版（ctex）
- 自动生成目录、图表目录
- 参考文献自动排序与压缩（natbib、bibtex）
- 代码高亮（listings）
- 数学公式增强（amsmath、amssymb）
- 页面布局灵活（geometry）
- 支持多栏、长表格、旋转图表等
- PDF跳转与超链接（hyperref）

## 使用方法

1. 推荐使用 [TeX Live](https://www.tug.org/texlive/) 或 [MiKTeX](https://miktex.org/) 作为编译环境。
2. 使用 XeLaTeX 编译 `document.tex`，可自动生成 PDF。
3. 按需编辑 `texfile/` 下各章节内容，图片放入 `figures/` 文件夹。
4. 参考文献可编辑 `book.bib`，正文引用格式如 `\cite{引用标签}`。
5. 代码示例可参考 `code/` 文件夹。
6. 双击 `build.bat` 一键编译（XeLaTeX → BibTeX → XeLaTeX ×2 → 自动清理辅助文件），或运行 `build.bat clean` 仅清理冗余文件。

## 依赖宏包

模板已集成常用宏包：ctex、amsmath、amssymb、geometry、natbib、listings、graphicx、hyperref、booktabs、longtable、rotating、enumitem、caption、fancyhdr、titlesec 等。

## 许可证

本项目遵循 MIT License。

---

如有建议或问题欢迎 Issue 或 PR。诚挚邀请各位有志于完善模板的人加入协作！

谢谢大家
