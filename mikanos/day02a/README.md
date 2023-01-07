<br><br><br>


```shell
cd $HOME/edk2
rm MikanLoaderPkg
ln -s $HOME/workspace/mikanos/day02a/MikanLoaderPkg ./
rm -r Build
source edksetup.sh 
build
```

<br><br><br>

### qemu
```shell
$HOME/osbook/devenv/run_qemu.sh $HOME/edk2/Build/MikanLoaderX64/DEBUG_CLANG38/X64/Loader.efi
```
