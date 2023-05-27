package #
Date::Manip::TZ::amguat00;
# Copyright (c) 2008-2019 Sullivan Beck.  All rights reserved.
# This program is free software; you can redistribute it and/or modify it
# under the same terms as Perl itself.

# This file was automatically generated.  Any changes to this file will
# be lost the next time 'tzdata' is run.
#    Generated on: Mon Dec  2 09:45:01 EST 2019
#    Data version: tzdata2019c
#    Code version: tzcode2019c

# This module contains data from the zoneinfo time zone database.  The original
# data was obtained from the URL:
#    ftp://ftp.iana.org/tz

use strict;
use warnings;
require 5.010000;

our (%Dates,%LastRule);
END {
   undef %Dates;
   undef %LastRule;
}

our ($VERSION);
$VERSION='6.79';
END { undef $VERSION; }

%Dates         = (
   1    =>
     [
        [ [1,1,2,0,0,0],[1,1,1,17,57,56],'-06:02:04',[-6,-2,-4],
          'LMT',0,[1918,10,5,6,2,3],[1918,10,4,23,59,59],
          '0001010200:00:00','0001010117:57:56','1918100506:02:03','1918100423:59:59' ],
     ],
   1918 =>
     [
        [ [1918,10,5,6,2,4],[1918,10,5,0,2,4],'-06:00:00',[-6,0,0],
          'CST',0,[1973,11,25,5,59,59],[1973,11,24,23,59,59],
          '1918100506:02:04','1918100500:02:04','1973112505:59:59','1973112423:59:59' ],
     ],
   1973 =>
     [
        [ [1973,11,25,6,0,0],[1973,11,25,1,0,0],'-05:00:00',[-5,0,0],
          'CDT',1,[1974,2,24,4,59,59],[1974,2,23,23,59,59],
          '1973112506:00:00','1973112501:00:00','1974022404:59:59','1974022323:59:59' ],
     ],
   1974 =>
     [
        [ [1974,2,24,5,0,0],[1974,2,23,23,0,0],'-06:00:00',[-6,0,0],
          'CST',0,[1983,5,21,5,59,59],[1983,5,20,23,59,59],
          '1974022405:00:00','1974022323:00:00','1983052105:59:59','1983052023:59:59' ],
     ],
   1983 =>
     [
        [ [1983,5,21,6,0,0],[1983,5,21,1,0,0],'-05:00:00',[-5,0,0],
          'CDT',1,[1983,9,22,4,59,59],[1983,9,21,23,59,59],
          '1983052106:00:00','1983052101:00:00','1983092204:59:59','1983092123:59:59' ],
        [ [1983,9,22,5,0,0],[1983,9,21,23,0,0],'-06:00:00',[-6,0,0],
          'CST',0,[1991,3,23,5,59,59],[1991,3,22,23,59,59],
          '1983092205:00:00','1983092123:00:00','1991032305:59:59','1991032223:59:59' ],
     ],
   1991 =>
     [
        [ [1991,3,23,6,0,0],[1991,3,23,1,0,0],'-05:00:00',[-5,0,0],
          'CDT',1,[1991,9,7,4,59,59],[1991,9,6,23,59,59],
          '1991032306:00:00','1991032301:00:00','1991090704:59:59','1991090623:59:59' ],
        [ [1991,9,7,5,0,0],[1991,9,6,23,0,0],'-06:00:00',[-6,0,0],
          'CST',0,[2006,4,30,5,59,59],[2006,4,29,23,59,59],
          '1991090705:00:00','1991090623:00:00','2006043005:59:59','2006042923:59:59' ],
     ],
   2006 =>
     [
        [ [2006,4,30,6,0,0],[2006,4,30,1,0,0],'-05:00:00',[-5,0,0],
          'CDT',1,[2006,10,1,4,59,59],[2006,9,30,23,59,59],
          '2006043006:00:00','2006043001:00:00','2006100104:59:59','2006093023:59:59' ],
        [ [2006,10,1,5,0,0],[2006,9,30,23,0,0],'-06:00:00',[-6,0,0],
          'CST',0,[9999,12,31,0,0,0],[9999,12,30,18,0,0],
          '2006100105:00:00','2006093023:00:00','9999123100:00:00','9999123018:00:00' ],
     ],
);

%LastRule      = (
);

1;