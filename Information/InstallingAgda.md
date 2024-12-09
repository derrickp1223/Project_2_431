# We installed Agda using ghcup since we have it already from using Haskell
We do this with the two commands:

```bash
cabal update
cabal install Agda
```

If you do not have cabal you go do enter tui with the command below to install in tui

```bash
ghcup tui
```

To setup the libraries you can download them with 
the command:
```bash
wget -O agda-stdlib.tar https://github.com/agda/agda-stdlib/archive/v2.1.1.tar.gz
```
Then unzip them with:
```bash
tar -zxvf agda-stdlib.tar
```

Lastly go into your agda/libraries file or make one if it does not exist and add:
```bash
$HERE/agda-stdlib-2.1.1/standard-library.agda-lib
```

also can go into agda/default and add that line to 
make it the default library.