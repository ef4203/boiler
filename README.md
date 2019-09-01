# boiler

Collection of project templates and quick creation script

## Dependencies

- Installation: `make`, `git`
- C: `cmake`, any cmake compatable C compiler (e.g. `gcc`)
- C++: `cmake`, any cmake compatable C++ compiler (e.g. `g++`)
- Latex: `make`, `pdflatex`
- HTML: none

## Installation

### On Linux or MacOS systems

Verify that you have `make` and `git` installed and added to your PATH.

Clone the repository into a temporary directory, (for example ~/Downloads)

```
cd ~/Downloads
git clone https://github.com/ef4203/boiler
```

Change into the boiler directory and run:

```
sudo make install
```

You can now remove the boiler folder in your Download directory.

### On Windows systems

Verify that you have [git](https://gitforwindows.org/) installed and added to your Path.

Then run in a PowerShell:

```ps
git clone https://github.com/ef4203/boiler/ $env:USERPROFILE\AppData\Roaming\boiler

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted

Unblock-File $env:USERPROFILE\AppData\Roaming\boiler\boiler.ps1

$env:Path += $env:USERPROFILE\AppData\Roaming\boiler
```

## Usage

Create a new directory for your project and then run boiler.

For example to create a C project, run:

```
boiler c
```

## Removal

To remove boiler from your system run:

```
cd /usr/share/boiler
sudo make remove
```
