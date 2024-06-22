# mkgrid

Apply collocation with prediction and filtering for scattered data


## Description

`mkgrid` correlates scattered data of any dimension to a regular grid
making use of the collocation method with prediction and filtering of
Moritz and Wolf.

If no output file `OUTFILE` is given, the output is directed to `STDOUT`.


## Synopsis

```console
$ mkgrid [OPTION]... OUTFILE
```


## Options

+ `-i`, `--infile` _filename_

  Sets the filename of the input spreadsheet.  If omitted, input data is read
  read from `STDIN`.

+ `-u`, `--using` _col[,..],col_

  Sets the columns of the input spreadsheet to read the sample data from.
  More than one abscissa column can be specified.  The last column holds
  the value at the given locations.  If omitted, all available columns
  are selected.

+ `--sheet` _name_

  Sets the name of the spreadsheet the columns of option **--using** refer to.
  If omitted, the first avilable sheet is selected.

+ `-r`, `--range` _lbound:ubound[,..]_

  Sets the output range for which the regular grid data shall be predicted.
  Each dimension can be specified using a lower and an upper boundary value
  separated by a colon (`:`).  If either of both values is omitted, the
  value will be determined automatically according to the submitted samples.

+ `-g`, `--grid` _number[,..]_

  Sets the discretization for the output regular grid.  If only one value
  is given, it will be used for each dimension of the problem.  Multiple
  grid values can be given by a comma-separated list.

+ `-s`, `--sigs` _value_

  Sets the signal variance.

+ `-n`, `--sign` _value_

  Sets the noise variance.  Set this value to zero if the sample data is
  free of any measurement error.

+ `--sh` _number_

  Sets the half width of the problem.  If omitted, the smallest distance
  of all given samples is used as default which is usually a good value.

+ `--bucket` _number_

  Sets the number of samples to consider for collocation.  If undefined, all
  sample points are used.  Use this option for large data sets.

+ `-y`, `--yes`

  Overwrite existing output files.

+ `--man`

  Prints the manual page and exits.

+ `--help`

  Prints a brief help message and exits.


## Requirements

- [Speadsheet::Read::Simple](https://github.com/mboljen/spreadsheet-read-simple-perl)
- [Math::Collocate](https://github.com/mboljen/math-collocate-perl)


## Installation

Use the following command to install this software:

```console
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.


## License

[MIT](https://choosealicense.com/licenses/mit/)
