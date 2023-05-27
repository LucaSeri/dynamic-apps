package #
Date::Manip::TZ::anpalm00;
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
        [ [1,1,2,0,0,0],[1,1,2,0,0,0],'+00:00:00',[0,0,0],
          '-00',0,[1964,12,31,23,59,59],[1964,12,31,23,59,59],
          '0001010200:00:00','0001010200:00:00','1964123123:59:59','1964123123:59:59' ],
     ],
   1965 =>
     [
        [ [1965,1,1,0,0,0],[1964,12,31,21,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1965,3,1,2,59,59],[1965,2,28,23,59,59],
          '1965010100:00:00','1964123121:00:00','1965030102:59:59','1965022823:59:59' ],
        [ [1965,3,1,3,0,0],[1965,2,28,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1965,10,15,3,59,59],[1965,10,14,23,59,59],
          '1965030103:00:00','1965022823:00:00','1965101503:59:59','1965101423:59:59' ],
        [ [1965,10,15,4,0,0],[1965,10,15,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1966,3,1,2,59,59],[1966,2,28,23,59,59],
          '1965101504:00:00','1965101501:00:00','1966030102:59:59','1966022823:59:59' ],
     ],
   1966 =>
     [
        [ [1966,3,1,3,0,0],[1966,2,28,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1966,10,15,3,59,59],[1966,10,14,23,59,59],
          '1966030103:00:00','1966022823:00:00','1966101503:59:59','1966101423:59:59' ],
        [ [1966,10,15,4,0,0],[1966,10,15,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1967,4,2,2,59,59],[1967,4,1,23,59,59],
          '1966101504:00:00','1966101501:00:00','1967040202:59:59','1967040123:59:59' ],
     ],
   1967 =>
     [
        [ [1967,4,2,3,0,0],[1967,4,1,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1967,10,1,3,59,59],[1967,9,30,23,59,59],
          '1967040203:00:00','1967040123:00:00','1967100103:59:59','1967093023:59:59' ],
        [ [1967,10,1,4,0,0],[1967,10,1,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1968,4,7,2,59,59],[1968,4,6,23,59,59],
          '1967100104:00:00','1967100101:00:00','1968040702:59:59','1968040623:59:59' ],
     ],
   1968 =>
     [
        [ [1968,4,7,3,0,0],[1968,4,6,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1968,10,6,3,59,59],[1968,10,5,23,59,59],
          '1968040703:00:00','1968040623:00:00','1968100603:59:59','1968100523:59:59' ],
        [ [1968,10,6,4,0,0],[1968,10,6,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1969,4,6,2,59,59],[1969,4,5,23,59,59],
          '1968100604:00:00','1968100601:00:00','1969040602:59:59','1969040523:59:59' ],
     ],
   1969 =>
     [
        [ [1969,4,6,3,0,0],[1969,4,5,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1969,10,5,3,59,59],[1969,10,4,23,59,59],
          '1969040603:00:00','1969040523:00:00','1969100503:59:59','1969100423:59:59' ],
        [ [1969,10,5,4,0,0],[1969,10,5,1,0,0],'-03:00:00',[-3,0,0],
          '-03',0,[1974,1,23,2,59,59],[1974,1,22,23,59,59],
          '1969100504:00:00','1969100501:00:00','1974012302:59:59','1974012223:59:59' ],
     ],
   1974 =>
     [
        [ [1974,1,23,3,0,0],[1974,1,23,1,0,0],'-02:00:00',[-2,0,0],
          '-02',1,[1974,5,1,1,59,59],[1974,4,30,23,59,59],
          '1974012303:00:00','1974012301:00:00','1974050101:59:59','1974043023:59:59' ],
        [ [1974,5,1,2,0,0],[1974,4,30,23,0,0],'-03:00:00',[-3,0,0],
          '-03',0,[1982,5,1,2,59,59],[1982,4,30,23,59,59],
          '1974050102:00:00','1974043023:00:00','1982050102:59:59','1982043023:59:59' ],
     ],
   1982 =>
     [
        [ [1982,5,1,3,0,0],[1982,4,30,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1982,10,10,3,59,59],[1982,10,9,23,59,59],
          '1982050103:00:00','1982043023:00:00','1982101003:59:59','1982100923:59:59' ],
        [ [1982,10,10,4,0,0],[1982,10,10,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1983,3,13,2,59,59],[1983,3,12,23,59,59],
          '1982101004:00:00','1982101001:00:00','1983031302:59:59','1983031223:59:59' ],
     ],
   1983 =>
     [
        [ [1983,3,13,3,0,0],[1983,3,12,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1983,10,9,3,59,59],[1983,10,8,23,59,59],
          '1983031303:00:00','1983031223:00:00','1983100903:59:59','1983100823:59:59' ],
        [ [1983,10,9,4,0,0],[1983,10,9,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1984,3,11,2,59,59],[1984,3,10,23,59,59],
          '1983100904:00:00','1983100901:00:00','1984031102:59:59','1984031023:59:59' ],
     ],
   1984 =>
     [
        [ [1984,3,11,3,0,0],[1984,3,10,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1984,10,14,3,59,59],[1984,10,13,23,59,59],
          '1984031103:00:00','1984031023:00:00','1984101403:59:59','1984101323:59:59' ],
        [ [1984,10,14,4,0,0],[1984,10,14,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1985,3,10,2,59,59],[1985,3,9,23,59,59],
          '1984101404:00:00','1984101401:00:00','1985031002:59:59','1985030923:59:59' ],
     ],
   1985 =>
     [
        [ [1985,3,10,3,0,0],[1985,3,9,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1985,10,13,3,59,59],[1985,10,12,23,59,59],
          '1985031003:00:00','1985030923:00:00','1985101303:59:59','1985101223:59:59' ],
        [ [1985,10,13,4,0,0],[1985,10,13,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1986,3,9,2,59,59],[1986,3,8,23,59,59],
          '1985101304:00:00','1985101301:00:00','1986030902:59:59','1986030823:59:59' ],
     ],
   1986 =>
     [
        [ [1986,3,9,3,0,0],[1986,3,8,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1986,10,12,3,59,59],[1986,10,11,23,59,59],
          '1986030903:00:00','1986030823:00:00','1986101203:59:59','1986101123:59:59' ],
        [ [1986,10,12,4,0,0],[1986,10,12,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1987,4,12,2,59,59],[1987,4,11,23,59,59],
          '1986101204:00:00','1986101201:00:00','1987041202:59:59','1987041123:59:59' ],
     ],
   1987 =>
     [
        [ [1987,4,12,3,0,0],[1987,4,11,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1987,10,11,3,59,59],[1987,10,10,23,59,59],
          '1987041203:00:00','1987041123:00:00','1987101103:59:59','1987101023:59:59' ],
        [ [1987,10,11,4,0,0],[1987,10,11,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1988,3,13,2,59,59],[1988,3,12,23,59,59],
          '1987101104:00:00','1987101101:00:00','1988031302:59:59','1988031223:59:59' ],
     ],
   1988 =>
     [
        [ [1988,3,13,3,0,0],[1988,3,12,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1988,10,9,3,59,59],[1988,10,8,23,59,59],
          '1988031303:00:00','1988031223:00:00','1988100903:59:59','1988100823:59:59' ],
        [ [1988,10,9,4,0,0],[1988,10,9,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1989,3,12,2,59,59],[1989,3,11,23,59,59],
          '1988100904:00:00','1988100901:00:00','1989031202:59:59','1989031123:59:59' ],
     ],
   1989 =>
     [
        [ [1989,3,12,3,0,0],[1989,3,11,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1989,10,15,3,59,59],[1989,10,14,23,59,59],
          '1989031203:00:00','1989031123:00:00','1989101503:59:59','1989101423:59:59' ],
        [ [1989,10,15,4,0,0],[1989,10,15,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1990,3,11,2,59,59],[1990,3,10,23,59,59],
          '1989101504:00:00','1989101501:00:00','1990031102:59:59','1990031023:59:59' ],
     ],
   1990 =>
     [
        [ [1990,3,11,3,0,0],[1990,3,10,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1990,9,16,3,59,59],[1990,9,15,23,59,59],
          '1990031103:00:00','1990031023:00:00','1990091603:59:59','1990091523:59:59' ],
        [ [1990,9,16,4,0,0],[1990,9,16,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1991,3,10,2,59,59],[1991,3,9,23,59,59],
          '1990091604:00:00','1990091601:00:00','1991031002:59:59','1991030923:59:59' ],
     ],
   1991 =>
     [
        [ [1991,3,10,3,0,0],[1991,3,9,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1991,10,13,3,59,59],[1991,10,12,23,59,59],
          '1991031003:00:00','1991030923:00:00','1991101303:59:59','1991101223:59:59' ],
        [ [1991,10,13,4,0,0],[1991,10,13,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1992,3,15,2,59,59],[1992,3,14,23,59,59],
          '1991101304:00:00','1991101301:00:00','1992031502:59:59','1992031423:59:59' ],
     ],
   1992 =>
     [
        [ [1992,3,15,3,0,0],[1992,3,14,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1992,10,11,3,59,59],[1992,10,10,23,59,59],
          '1992031503:00:00','1992031423:00:00','1992101103:59:59','1992101023:59:59' ],
        [ [1992,10,11,4,0,0],[1992,10,11,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1993,3,14,2,59,59],[1993,3,13,23,59,59],
          '1992101104:00:00','1992101101:00:00','1993031402:59:59','1993031323:59:59' ],
     ],
   1993 =>
     [
        [ [1993,3,14,3,0,0],[1993,3,13,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1993,10,10,3,59,59],[1993,10,9,23,59,59],
          '1993031403:00:00','1993031323:00:00','1993101003:59:59','1993100923:59:59' ],
        [ [1993,10,10,4,0,0],[1993,10,10,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1994,3,13,2,59,59],[1994,3,12,23,59,59],
          '1993101004:00:00','1993101001:00:00','1994031302:59:59','1994031223:59:59' ],
     ],
   1994 =>
     [
        [ [1994,3,13,3,0,0],[1994,3,12,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1994,10,9,3,59,59],[1994,10,8,23,59,59],
          '1994031303:00:00','1994031223:00:00','1994100903:59:59','1994100823:59:59' ],
        [ [1994,10,9,4,0,0],[1994,10,9,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1995,3,12,2,59,59],[1995,3,11,23,59,59],
          '1994100904:00:00','1994100901:00:00','1995031202:59:59','1995031123:59:59' ],
     ],
   1995 =>
     [
        [ [1995,3,12,3,0,0],[1995,3,11,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1995,10,15,3,59,59],[1995,10,14,23,59,59],
          '1995031203:00:00','1995031123:00:00','1995101503:59:59','1995101423:59:59' ],
        [ [1995,10,15,4,0,0],[1995,10,15,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1996,3,10,2,59,59],[1996,3,9,23,59,59],
          '1995101504:00:00','1995101501:00:00','1996031002:59:59','1996030923:59:59' ],
     ],
   1996 =>
     [
        [ [1996,3,10,3,0,0],[1996,3,9,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1996,10,13,3,59,59],[1996,10,12,23,59,59],
          '1996031003:00:00','1996030923:00:00','1996101303:59:59','1996101223:59:59' ],
        [ [1996,10,13,4,0,0],[1996,10,13,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1997,3,30,2,59,59],[1997,3,29,23,59,59],
          '1996101304:00:00','1996101301:00:00','1997033002:59:59','1997032923:59:59' ],
     ],
   1997 =>
     [
        [ [1997,3,30,3,0,0],[1997,3,29,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1997,10,12,3,59,59],[1997,10,11,23,59,59],
          '1997033003:00:00','1997032923:00:00','1997101203:59:59','1997101123:59:59' ],
        [ [1997,10,12,4,0,0],[1997,10,12,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1998,3,15,2,59,59],[1998,3,14,23,59,59],
          '1997101204:00:00','1997101201:00:00','1998031502:59:59','1998031423:59:59' ],
     ],
   1998 =>
     [
        [ [1998,3,15,3,0,0],[1998,3,14,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1998,9,27,3,59,59],[1998,9,26,23,59,59],
          '1998031503:00:00','1998031423:00:00','1998092703:59:59','1998092623:59:59' ],
        [ [1998,9,27,4,0,0],[1998,9,27,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[1999,4,4,2,59,59],[1999,4,3,23,59,59],
          '1998092704:00:00','1998092701:00:00','1999040402:59:59','1999040323:59:59' ],
     ],
   1999 =>
     [
        [ [1999,4,4,3,0,0],[1999,4,3,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[1999,10,10,3,59,59],[1999,10,9,23,59,59],
          '1999040403:00:00','1999040323:00:00','1999101003:59:59','1999100923:59:59' ],
        [ [1999,10,10,4,0,0],[1999,10,10,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2000,3,12,2,59,59],[2000,3,11,23,59,59],
          '1999101004:00:00','1999101001:00:00','2000031202:59:59','2000031123:59:59' ],
     ],
   2000 =>
     [
        [ [2000,3,12,3,0,0],[2000,3,11,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2000,10,15,3,59,59],[2000,10,14,23,59,59],
          '2000031203:00:00','2000031123:00:00','2000101503:59:59','2000101423:59:59' ],
        [ [2000,10,15,4,0,0],[2000,10,15,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2001,3,11,2,59,59],[2001,3,10,23,59,59],
          '2000101504:00:00','2000101501:00:00','2001031102:59:59','2001031023:59:59' ],
     ],
   2001 =>
     [
        [ [2001,3,11,3,0,0],[2001,3,10,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2001,10,14,3,59,59],[2001,10,13,23,59,59],
          '2001031103:00:00','2001031023:00:00','2001101403:59:59','2001101323:59:59' ],
        [ [2001,10,14,4,0,0],[2001,10,14,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2002,3,10,2,59,59],[2002,3,9,23,59,59],
          '2001101404:00:00','2001101401:00:00','2002031002:59:59','2002030923:59:59' ],
     ],
   2002 =>
     [
        [ [2002,3,10,3,0,0],[2002,3,9,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2002,10,13,3,59,59],[2002,10,12,23,59,59],
          '2002031003:00:00','2002030923:00:00','2002101303:59:59','2002101223:59:59' ],
        [ [2002,10,13,4,0,0],[2002,10,13,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2003,3,9,2,59,59],[2003,3,8,23,59,59],
          '2002101304:00:00','2002101301:00:00','2003030902:59:59','2003030823:59:59' ],
     ],
   2003 =>
     [
        [ [2003,3,9,3,0,0],[2003,3,8,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2003,10,12,3,59,59],[2003,10,11,23,59,59],
          '2003030903:00:00','2003030823:00:00','2003101203:59:59','2003101123:59:59' ],
        [ [2003,10,12,4,0,0],[2003,10,12,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2004,3,14,2,59,59],[2004,3,13,23,59,59],
          '2003101204:00:00','2003101201:00:00','2004031402:59:59','2004031323:59:59' ],
     ],
   2004 =>
     [
        [ [2004,3,14,3,0,0],[2004,3,13,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2004,10,10,3,59,59],[2004,10,9,23,59,59],
          '2004031403:00:00','2004031323:00:00','2004101003:59:59','2004100923:59:59' ],
        [ [2004,10,10,4,0,0],[2004,10,10,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2005,3,13,2,59,59],[2005,3,12,23,59,59],
          '2004101004:00:00','2004101001:00:00','2005031302:59:59','2005031223:59:59' ],
     ],
   2005 =>
     [
        [ [2005,3,13,3,0,0],[2005,3,12,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2005,10,9,3,59,59],[2005,10,8,23,59,59],
          '2005031303:00:00','2005031223:00:00','2005100903:59:59','2005100823:59:59' ],
        [ [2005,10,9,4,0,0],[2005,10,9,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2006,3,12,2,59,59],[2006,3,11,23,59,59],
          '2005100904:00:00','2005100901:00:00','2006031202:59:59','2006031123:59:59' ],
     ],
   2006 =>
     [
        [ [2006,3,12,3,0,0],[2006,3,11,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2006,10,15,3,59,59],[2006,10,14,23,59,59],
          '2006031203:00:00','2006031123:00:00','2006101503:59:59','2006101423:59:59' ],
        [ [2006,10,15,4,0,0],[2006,10,15,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2007,3,11,2,59,59],[2007,3,10,23,59,59],
          '2006101504:00:00','2006101501:00:00','2007031102:59:59','2007031023:59:59' ],
     ],
   2007 =>
     [
        [ [2007,3,11,3,0,0],[2007,3,10,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2007,10,14,3,59,59],[2007,10,13,23,59,59],
          '2007031103:00:00','2007031023:00:00','2007101403:59:59','2007101323:59:59' ],
        [ [2007,10,14,4,0,0],[2007,10,14,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2008,3,30,2,59,59],[2008,3,29,23,59,59],
          '2007101404:00:00','2007101401:00:00','2008033002:59:59','2008032923:59:59' ],
     ],
   2008 =>
     [
        [ [2008,3,30,3,0,0],[2008,3,29,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2008,10,12,3,59,59],[2008,10,11,23,59,59],
          '2008033003:00:00','2008032923:00:00','2008101203:59:59','2008101123:59:59' ],
        [ [2008,10,12,4,0,0],[2008,10,12,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2009,3,15,2,59,59],[2009,3,14,23,59,59],
          '2008101204:00:00','2008101201:00:00','2009031502:59:59','2009031423:59:59' ],
     ],
   2009 =>
     [
        [ [2009,3,15,3,0,0],[2009,3,14,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2009,10,11,3,59,59],[2009,10,10,23,59,59],
          '2009031503:00:00','2009031423:00:00','2009101103:59:59','2009101023:59:59' ],
        [ [2009,10,11,4,0,0],[2009,10,11,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2010,4,4,2,59,59],[2010,4,3,23,59,59],
          '2009101104:00:00','2009101101:00:00','2010040402:59:59','2010040323:59:59' ],
     ],
   2010 =>
     [
        [ [2010,4,4,3,0,0],[2010,4,3,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2010,10,10,3,59,59],[2010,10,9,23,59,59],
          '2010040403:00:00','2010040323:00:00','2010101003:59:59','2010100923:59:59' ],
        [ [2010,10,10,4,0,0],[2010,10,10,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2011,5,8,2,59,59],[2011,5,7,23,59,59],
          '2010101004:00:00','2010101001:00:00','2011050802:59:59','2011050723:59:59' ],
     ],
   2011 =>
     [
        [ [2011,5,8,3,0,0],[2011,5,7,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2011,8,21,3,59,59],[2011,8,20,23,59,59],
          '2011050803:00:00','2011050723:00:00','2011082103:59:59','2011082023:59:59' ],
        [ [2011,8,21,4,0,0],[2011,8,21,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2012,4,29,2,59,59],[2012,4,28,23,59,59],
          '2011082104:00:00','2011082101:00:00','2012042902:59:59','2012042823:59:59' ],
     ],
   2012 =>
     [
        [ [2012,4,29,3,0,0],[2012,4,28,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2012,9,2,3,59,59],[2012,9,1,23,59,59],
          '2012042903:00:00','2012042823:00:00','2012090203:59:59','2012090123:59:59' ],
        [ [2012,9,2,4,0,0],[2012,9,2,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2013,4,28,2,59,59],[2013,4,27,23,59,59],
          '2012090204:00:00','2012090201:00:00','2013042802:59:59','2013042723:59:59' ],
     ],
   2013 =>
     [
        [ [2013,4,28,3,0,0],[2013,4,27,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2013,9,8,3,59,59],[2013,9,7,23,59,59],
          '2013042803:00:00','2013042723:00:00','2013090803:59:59','2013090723:59:59' ],
        [ [2013,9,8,4,0,0],[2013,9,8,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2014,4,27,2,59,59],[2014,4,26,23,59,59],
          '2013090804:00:00','2013090801:00:00','2014042702:59:59','2014042623:59:59' ],
     ],
   2014 =>
     [
        [ [2014,4,27,3,0,0],[2014,4,26,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2014,9,7,3,59,59],[2014,9,6,23,59,59],
          '2014042703:00:00','2014042623:00:00','2014090703:59:59','2014090623:59:59' ],
        [ [2014,9,7,4,0,0],[2014,9,7,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2016,5,15,2,59,59],[2016,5,14,23,59,59],
          '2014090704:00:00','2014090701:00:00','2016051502:59:59','2016051423:59:59' ],
     ],
   2016 =>
     [
        [ [2016,5,15,3,0,0],[2016,5,14,23,0,0],'-04:00:00',[-4,0,0],
          '-04',0,[2016,8,14,3,59,59],[2016,8,13,23,59,59],
          '2016051503:00:00','2016051423:00:00','2016081403:59:59','2016081323:59:59' ],
        [ [2016,8,14,4,0,0],[2016,8,14,1,0,0],'-03:00:00',[-3,0,0],
          '-03',1,[2016,12,4,2,59,59],[2016,12,3,23,59,59],
          '2016081404:00:00','2016081401:00:00','2016120402:59:59','2016120323:59:59' ],
        [ [2016,12,4,3,0,0],[2016,12,4,0,0,0],'-03:00:00',[-3,0,0],
          '-03',0,[9999,12,31,0,0,0],[9999,12,30,21,0,0],
          '2016120403:00:00','2016120400:00:00','9999123100:00:00','9999123021:00:00' ],
     ],
);

%LastRule      = (
);

1;
