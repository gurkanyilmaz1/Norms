LABEL 1
EXIT

LABEL 3
VarStr = ''
EXIT

LABEL 4
Quest[1] = 'Quest 1'
Quest[2] = 'Quest 2'
Quest[3] = 'Quest 3'
Quest[4] = 'Quest 4'
Quest[5] = 'Quest 5'
VarStr = 'r1 28 r2 60 r3 80 r4 927 r5 11'
EXIT

LABEL 5
varcutout=' '
if prof_type[1\2]='hp' then
{
   if prof_height<61:varcutout='r1 13 r2 5 r3 80 r4 920 r5 7.5'
   if prof_height>61:varcutout='r1 14 r2 5.5 r3 80 r4 921 r5 7.5'
   if prof_height>81:varcutout='r1 15.5 r2 6 r3 80 r4 922 r5 8.5'
   if prof_height>101:varcutout='r1 17 r2 6.5 r3 80 r4 923 r5 8.5'
   if prof_height>121:varcutout='r1 19 r2 7 r3 80 r4 924 r5 8.5'
   if prof_height>141:varcutout='r1 22 r2 7.5 r3 80 r4 925 r5 10'
   if prof_height>161:varcutout='r1 25 r2 8.5 r3 80 r4 926 r5 10'
   if prof_height>181:varcutout='r1 28 r2 9.5 r3 80 r4 927 r5 11'
   if prof_height>201:varcutout='r1 31 r2 10.5 r3 80 r4 928 r5 11'
   if prof_height>221:varcutout='r1 34 r2 11.5 r3 80 r4 929 r5 12'
   if prof_height>241:varcutout='r1 37 r2 12.5 r3 80 r4 930 r5 12'
   if prof_height>261:varcutout='r1 40 r2 13.5 r3 80 r4 931 r5 12'
   if prof_height>281:varcutout='r1 43 r2 14.5 r3 80 r4 932 r5 13'
   if prof_height>301:varcutout='r1 46 r2 15.5 r3 80 r4 933 r5 13'
   if prof_height>321:varcutout='r1 49 r2 16.5 r3 80 r4 934 r5 13'
   if prof_height>341:varcutout='r1 53,5 r2 18 r3 80 r4 935 r5 14'
   if prof_height>371:varcutout='r1 58 r2 19.5 r3 80 r4 936 r5 14'
   if prof_height>401:varcutout='r1 62,5 r2 21 r3 80 r4 937 r5 14'
}
IF Prof_Type[1\2] = 'hg' | Prof_Type[1\2] = 'ho' THEN
{
  IF Prof_Height > 74 & < 160 & Prof_Flange > 74 & < 121: VarCutOut = 'r1 90 r2 7.5 r3 60 r4 925 r5 10'
  IF Prof_Height > 161 & < 251 & Prof_Flange > 74 & < 121: VarCutOut = 'r1 90 r2 7.5 r3 60 r4 925 r5 10'
}

if prof_type[1\2]='st' then
{
   varcutout='r1 20 r2 1 r3 85 r4 955 r5 10'
}

if varcutout=' ' then
{
   Hint = '^prof_type not a proper profile for the cutout'
   do -gui/noterr
   varcutout='r1 50 r2 25 r3 80 r4 956 r5 10'
}
EXIT

LABEL 6
EnableLug[1]='702'
DefaultType='702'
EXIT