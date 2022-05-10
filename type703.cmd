LABEL 1
EXIT

LABEL 3
VarStr = 'l1 703'
EXIT

LABEL 4
Quest[1] = 'Quest 1'
Quest[2] = 'Quest 2'
Quest[3] = 'Quest 3'
Quest[4] = 'Quest 4'
Quest[5] = 'Quest 5'
Quest[6] = 'Quest 6'
Quest[7] = 'Quest 7'
VarStr = 'r3 35 r4 75 r9 28 ra 60 rb 80 rc 927 rd 11'
EXIT

LABEL 5
varlug=' '
if prof_type[1\2]='hp' then
{
   if prof_height<61:varlug='r3 20 r4 45 r9 13 ra 5 rb 80 rc 920 rd 7.5'
   if prof_height>61:varlug='r3 20 r4 45 r9 14 ra 5.5 rb 80 rc 921 rd 7.5'
   if prof_height>81:varlug='r3 20 r4 45 r9 15.5 ra 6 rb 80 rc 922 rd 8.5'
   if prof_height>101:varlug='r3 30 r4 60 r9 17 ra 6.5 rb 80 rc 923 rd 8.5'
   if prof_height>121:varlug='r3 30 r4 60 r9 19 ra 7 rb 80 rc 924 rd 8.5'
   if prof_height>141:varlug='r3 30 r4 60 r9 22 ra 7.5 rb 80 rc 925 rd 10'
   if prof_height>161:varlug='r3 35 r4 75 r9 25 ra 8.5 rb 80 rc 926 rd 10'
   if prof_height>181:varlug='r3 35 r4 75 r9 28 ra 9.5 rb 80 rc 927 rd 11'
   if prof_height>201:varlug='r3 20 r4 45 r9 31 ra 10.5 rb 80 rc 928 rd 11'
   if prof_height>211:varlug='r3 40 r4 80 r9 31 ra 11 rb 80 rc 928 rd 11'
   if prof_height>221:varlug='r3 40 r4 80 r9 34 ra 11.5 rb 80 rc 929 rd 12'
   if prof_height>241:varlug='r3 45 r4 90 r9 37 ra 12.5 rb 80 rc 930 rd 12'
   if prof_height>261:varlug='r3 45 r4 90 r9 40 ra 13.5 rb 80 rc 931 rd 12'
   if prof_height>281:varlug='r3 45 r4 90 r9 43 ra 14.5 rb 80 rc 932 rd 13'
   if prof_height>301:varlug='r3 45 r4 90 r9 46 ra 15.5 rb 80 rc 933 rd 13'
   if prof_height>321:varlug='r3 50 r4 100 r9 50 ra 16 rb 80 rc 934 rd 13'
   if prof_height>341:varlug='r3 50 r4 100 r9 53.5 ra 18 rb 80 rc 935 rd 14'
   if prof_height>371:varlug='r3 50 r4 100 r9 58 ra 19.5 rb 80 rc 936 rd 14'
   if prof_height>401:varlug='r3 50 r4 100 r9 62,5 ra 21 rb 80 rc 937 rd 14'
}
if prof_type[1\2]='st' then
{
   varlug='r3 20 r4 45 r9 20 ra 1 rb 85 rc 955 rd 10'
}

if varlug=' ' then
{
   Hint = '^prof_type not a proper profile for the cutout'
   do -gui/noterr
   varlug='r3 50 r4 75 r9 50 ra 25 rb 80 rc 956 rd 10'
}
EXIT

LABEL 6
EnableCutout[1]='102'
DefaultType='102'
EXIT 