Perl / SQL Exercise

Description:
A Perl script that creates a table in a database, seeds the table with data from a local .csv file, and prints table contents to the command line.

---------------------------------------------------
Getting started (w/ Text::CSV_XS module):
1. Install Text::CSV_XS module:     sudo cpan Text::CSV_XS
2. Run App:                         perl access.pl

If you don't want to install the Text::CSV_XS module, run the simple version with:       perl access2.pl
---------------------------------------------------

Notes:
I decided to handle the database/table creation and population inside of the Perl script. I believe the most efficient and dynamic way of handling the data, for my purposes, is writing it to a .csv file, dropping/re-creating the table and reading the .csv file each time the script is run. If you don't care to install the dependency, I included an additional script that hard-codes the data into an SQL INSERT statement(access2.pl). I used Perl's documentation and some answers from Stack Overflow and PerlMonks to complete this project.