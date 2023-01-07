# MikanOS-devcontainer

vsocde devcontainer

<br><br><br><br>


## [Webで開発 Codespaces版はこちら](https://github.com/kxkx5150/MikanOS-Codespaces)

<br><br><br><br>


深い理解の為には買いましょう。  

## [ゼロからのOS自作入門 単行本](https://www.amazon.co.jp/%E3%82%BC%E3%83%AD%E3%81%8B%E3%82%89%E3%81%AEOS%E8%87%AA%E4%BD%9C%E5%85%A5%E9%96%80-%E5%86%85%E7%94%B0-%E5%85%AC%E5%A4%AA/dp/4839975868)

[Youtube 自作OS](https://www.youtube.com/watch?v=PvmLLKnIzcs&list=PLbBGNsln3DxTLHB9GFM6_drAJ1JQXIOud&index=1)

<br><br><br><br>

## devcontainer

<br>

全日程のソース同梱

![Screenshot from 2023-01-07 15-50-59](https://user-images.githubusercontent.com/10168979/211135361-58a5176e-a5fd-4eaf-bc4b-7f8b641d4d7c.png)



### ubuntu, windows 用です。  

確認は ubuntu 22.04, windows 10 でしました。

*windowsは**wsl**内でcloneして下さい (遅くなります)

<br><br>

**mac** は未対応ですので[こちら](https://github.com/sarisia/mikanos-devcontainer)

<br><br>

<br><br><br><br>




## ビルド方法

target.txt、buildenv.shは起動時に読み込むようにしました。  
調子が悪いなら再度読み込んで下さい。  

<br><br>

### 各日付 (day***) のサブフォルダに移動して下さい。

<br><br><br>

カーネル + uefi をビルド + qemuで確認
```shell
make run
```


カーネル + uefi をビルド
```shell
make
```


カーネル
```shell
make kernel
```


app
```shell
make app
```


掃除
```shell
make clean
```


qemuで確認
```shell
make qemu
```




<br><br><br>
<br><br><br>


## MikanOS

<br>

同梱のソースは最新では無いので勉強用と考えて下さい。  
機能追加もされており、機能追加に参加したい方は下記へ

<br><br>

### 最新のソースは
[uchan-nos/mikanos](https://github.com/uchan-nos/mikanos)


<br><br><br>
<br><br><br>
<br><br><br>
