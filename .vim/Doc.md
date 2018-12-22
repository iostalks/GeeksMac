# Vim 快捷键记录

## 插件
1）vim-surround

替换： cs"'
"hellow world" -> 'hello world'

替换标签： cst"
<a>abc</a> -> "abc"

添加-单词：ysiw"
hello -> "hello"

添加-当前行: yss", yssb=(), yssB={}
hello world -> "hello world"

添加-上下行: ySS"
hello world
->

"
hello world
"

为选中的添加括号
S (

ysiwb: 为当前单词添加(
yssB: 为当前行添加{
Sr: visible 模式中添加[

2) bronson/vim-trailing-whitespace
去除尾部空格
快捷键 ->  ga

3) Valloric/YouCompleteMe
跳转到定义 -> gd，返回 -> ctr-o
