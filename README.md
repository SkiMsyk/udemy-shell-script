udemy 20時間で【Linux】マスター！！基礎、シェルスクリプト、Docker基礎、ネットワーク 、セキュリティを体系的に解説 コースのコード保存用

# 環境

MacOS Catalina 10.15.17
Docker 4.2.0
Docker-Image: centos latest (2022/2/26時点)

# セットアップ

centosのイメージからコンテナを必要なパッケージをインストールする

```
dnf -y install sudo
dnf -y install man
```

## git関連

参考にしたページ
https://qiita.com/ponsuke0531/items/fe6011a1d5a7d764551c

```
$ sudo yum -y install gcc curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker autoconf openssh-clients
```

```
$ cd /opt/
$ sudo wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz
$ sudo tar xzvf git-2.9.5.tar.gz
$ sudo rm git-2.9.5.tar.gz
$ cd git-2.9.5/
$ sudo make prefix=/usr/local all
$ sudo make prefix=/usr/local install
$ git --version
```
