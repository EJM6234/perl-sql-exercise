use DBI;

#Connect to database
my $dbh = DBI->connect('DBI:SQLite:dbname=database.sqlite', "", "", { RaiseError => 1, AutoCommit => 0 }) or die "Couldn't connect to database: " . DBI->errstr;

#Drop data table to avoid errors when running program more than once
$dbh->do("DROP TABLE IF EXISTS data");

#Create table
my $statement = qq(
  CREATE TABLE data (
    id          INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name  CHAR(100) NOT NULL,
    last_name   CHAR(100),
    home        CHAR(100) NOT NULL
  );
);
my $rv = $dbh->do($statement);
if($rv < 0) {
  print DBI->errstr;
}

#Populate table with data
$statement = qq(
  INSERT INTO data
    (first_name, last_name, home)
  VALUES
    ('Rose', 'Tyler', 'Earth'),
    ('Zoe', 'Heriot', 'Space Station W3'),
    ('Jo', 'Grant', 'Earth'),
    ('Leela', null, 'Unspecified'),
    ('Romana', null, 'Gallifrey'),
    ('Clara', 'Oswald', 'Earth'),
    ('Adric', null, 'Alzarius'),
    ('Susan', 'Foreman', 'Gallifrey')
  ;
);
$rv = $dbh->do($statement);
if($rv < 0) {
  print DBI->errstr;
}

#Query database and print data
$statement = qq(SELECT * FROM data;);
my $sth = $dbh->prepare($statement) or die "Couldn't prepare statement: " . $dbh->errstr;
$rv = $sth->execute() or die "Couldn't execute query: " . $dbh->errstr;

while(my @row = $sth->fetchrow_array()) {
  print "ID: " . $row[0] . "\n";
  print "FIRST NAME: " . $row[1] . "\n";
  print "LAST NAME: " . $row[2] . "\n";
  print "HOME: " . $row[3] . "\n";
  print "--------------------------\n"
}

#Disconnect from database
$dbh->disconnect();
