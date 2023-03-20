# centos7

## yum

* 更新软件包

```bash
yum update
```

* 安装软件

```bash
yum install
```

## 安装开发工具

```bash
yum groupinstall 'Development Tools'
```

## 安装posix man pages

```bash
yum install man-pages libstdc++-docs
```

## 网络配置

* install ifconfig

```bash
yum provides ifconfig
yum whatprovides ifconfig
yum install net-tools
```

```bash
$ vi /etc/sysconfig/network-scripts/ifcfg-ens33

BOOTPROTO=static
ONBOOT=yes

$ systemctl restart network
```

## 设置英文显示

```shell
vi /etc/profile
    export LANG='en_US.UTF-8'
source /etc/profile
```

## 安装tmux

```shell
https://gist.github.com/shady-robot/d48d5282651634f464af
```

## 安装vim

* 参考

```s
https://konvict.cn/post/centos7-install-vim9/
```

* 卸载现有vim

```s
yum remove -y vim-enhanced vim-common vim-filesystem
```

* 安装依赖

```s
yum install -y \
 make ncurses ncurses-devel ctagstcl-devel ruby ruby-devel lua lua-devel \
 luajit luajit-devel python python-devel perl perl-devel perl-ExtUtils-ParseXS \
 perl-ExtUtils-XSpp perl-ExtUtils-CBuilder perl-ExtUtils-Embed
```

* 安装新版本

```s
cd ~ && git clone https://github.com/vim/vim.git && cd vim
./configure --with-features=huge --enable-luainterp -enable-multibyte --enable-rubyinterp \
--enable-pythoninterp --enable-perlinterp && make && make install
```

## vimplug

```bash
mkdir -p ~/.vim/autoload/
cd ~/.vim/autoload/
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
```

## coc

* 使用vimplug安装

## oh-my-zsh

```shell
sudo yum install zsh -y
chsh -s $(which zsh)
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh
```

* 配置其他用户

```s
cp -r .oh-my-zsh /home/aqiu/
chown -R aqiu:aqiu .oh-my-zsh
cp .zshrc /home/aqiu
chown aqiu:aqiu /home/qcubic/.zshrc
```

## tldr

```shell
yum install epel-release -y
yum install nodejs npm -y
npm install -g tldr
```

## git

* way1

```shell
sudo yum -y remove git
sudo yum -y install https://packages.endpointdev.com/rhel/7/os/x86_64/endpoint-repo.x86_64.rpm
sudo yum install git
```

* way2

```s
https://github.com/git/git/releases/tag/v2.39.2
make configure
sudo ./configure --prefix=/usr
sudo make
sudo make install
```

* 配置git

## lazy-git

## 新建用户

```s
sudo adduser sammy
sudo passwd sammy
sudo usermod -aG wheel sammy
```

## clangd

```
```