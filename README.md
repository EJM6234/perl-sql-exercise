# Perl / SQL Exercise
---------------------------------------------------
## Description:
A Perl script that creates a table in a database, seeds the table with data from a local .csv file, and prints table contents to the command line.

## Getting started (w/ Text::CSV_XS module):
1. Clone this repository: **git clone https://github.com/EJM6234/perl-sql-exercise.git**
2. Change directories: **cd perl-sql-exercise**
3. Install Text::CSV_XS module: **sudo cpan Text::CSV_XS**
4. Run App: **perl access.pl**

_If you don't want to install the Text::CSV_XS module, run the simple version with:_ **perl access2.pl**

## Notes:
I decided to handle the database/table creation and population inside of the Perl script. I believe the most efficient and dynamic way of handling the data, for my purposes, is writing it to a .csv file, dropping/re-creating the table and reading the .csv file each time the script is run. If you don't care to install the dependency, I included an additional script that hard-codes the data into an SQL INSERT statement. I used Perl's documentation and some answers from Stack Overflow and PerlMonks to complete this project.
