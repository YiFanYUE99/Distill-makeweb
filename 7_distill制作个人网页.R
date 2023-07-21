

#GIT故障：git pull->git add -A

#1 github建立域名 拷贝url
#2 回到Rstudio 创建新项目，克隆域名
#3 打开文件中的Rproject即可对网站工作
#安装distill
#install.packages("distill")
#install.packages("postcards")
library(distill)
create_website(dir = ".",#将网站建立在当前目录下
               title="YifanYue's personal website",#网站
               gh_pages = TRUE)
#不要动docs文件
#创建完成后关闭Rstudio，从Rproject处重新进入
#4 点击右上角Build->build website
#5 登录https://github.com/seankross/postcards选择网站模板
create_article(file="index",#设置主页的模板
               template="trestles",#模板名称
               package="postcards")#模板从postcards包中来
#若果显示index已经存在删掉他即可
#6打开index.RMD 在第二个三根横线插入 site: distill::distill_website
#7 在Rstudio中点击Tools->Shell
#输入 git config --global user.name "YiFanYUE99"
#输入 git config --global user.email "yifanyue@outlook.com"
#输入 git add -A
#8 返回RStudio界面；点击Git->commit->在commit message中输入信息->commit
install.packages("usethis")
usethis::create_github_token()#在GitHub上建立token
gitcreds::gitcreds_set()#输入token码
#随后点击push即可
#9 返回GitHub上当前域名，点击setting，点击pages,Branches->main->docs->save


#10 打开index，更换头像;不要用空格命名;文件名只需要接着project所在文件夹写下去
#11 修改label和url，使它们变得更好看；并且让它们在另外的窗口打开:在url后面加入target="_blank"
#12 下载emoji包，美化我的网站;把输出的表情复制黏贴进index.Rmd即可
install.packages("emoji")
library(emoji)
emoji_keyword
emoji("smile")
emoji("cry")
emoji("happy")
#13更改字体等等
create_theme("YueYF-theme")
#在 site.yml中加入一句话——theme: Yue-theme.css
#14 google fonts 寻找自己喜欢的字体；点击它，选择字号，import；复制两个style之间的内容，黏贴到css文件开始部分
#在css文件中修改font，""内输入字体，保存即可
#16 size处修改字体大小
#17 选择字体颜色：https://coolors.co/
#在css中：.distill-site-header改变背景颜色
#打开网页，按钮右键检查即可查看自己的设置
#
#注意每次更改完之后一定不要忘了build website
#

#18创建子页面
create_article("Blog1")#名称需要与site中的href相同
create_theme("Blog1-theme")
create_article("Blog2")
create_article("pinfo")

#上传失败，先 git pull;再git add-A

#19 用xfun包插入让人下载的文件，在pinfo中

