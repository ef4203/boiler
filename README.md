# boiler
Collection of project templates and quick creation script

## Dependencies

- Installation: ``make``, ``git``
- C: ``make``, ``cmake``, ``gcc``
- C++: ``make``, ``cmake``, ``g++``
- HTML: none

## Installation

Verify that you have ``make`` and ``git`` installed and in your PATH.

Clone the repository into a temporary directory, (for example ~/Downloads)
```
cd ~/Downloads
git clone https://github.com/ef4203/boiler
```

Go inside the boiler directory and run:
```
sudo make install
```

You can now remove the boiler folder in your Download directory.

## Removal

To remove boiler from your system run
```
cd /usr/share/boiler
sudo make remove
```

## Usage

Create a new directory for your project and then run boiler.

For example to create a C project, run:
```
boiler c
```
