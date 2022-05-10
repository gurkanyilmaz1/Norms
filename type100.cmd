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
Quest[6] = 'Quest 6'
Quest[7] = 'Quest 7'
VarStr = 'r3 35 r4 75 r9 28 ra 60 rb 80 rc 927 rd 11'
EXIT

LABEL 5
VarCutOut = ''

if prof_type[1\2]='hp' then
{
   if prof_height<61:varcutout='r3 25 r4 55 r9 13 ra 5 rb 80 rc 920 rd 7.5'
   if prof_height>61:varcutout='r3 25 r4 55 r9 14 ra 5.5 rb 80 rc 921 rd 7.5'
   if prof_height>81:varcutout='r3 25 r4 55 r9 15.5 ra 6 rb 80 rc 922 rd 8.5'
   if prof_height>101:varcutout='r3 25 r4 55 r9 17 ra 6.5 rb 80 rc 923 rd 8.5'
   if prof_height>121:varcutout='r3 25 r4 55 r9 19 ra 7 rb 80 rc 924 rd 8.5'
   if prof_height>141:varcutout='r3 35 r4 75 r9 22 ra 7.5 rb 80 rc 925 rd 10'
   if prof_height>161:varcutout='r3 35 r4 75 r9 25 ra 8.5 rb 80 rc 926 rd 10'
   if prof_height>181:varcutout='r3 35 r4 75 r9 28 ra 9.5 rb 80 rc 927 rd 11'
   if prof_height>201:varcutout='r3 35 r4 75 r9 31 ra 10.5 rb 80 rc 928 rd 11'
   if prof_height>211:varcutout='r3 35 r4 75 r9 31 ra 11 rb 80 rc 928 rd 11'
   if prof_height>221:varcutout='r3 35 r4 75 r9 34 ra 11.5 rb 80 rc 929 rd 12'
   if prof_height>241:varcutout='r3 50 r4 100 r9 37 ra 12.5 rb 80 rc 930 rd 12'
   if prof_height>261:varcutout='r3 50 r4 100 r9 40 ra 13.5 rb 80 rc 931 rd 12'
   if prof_height>281:varcutout='r3 50 r4 100 r9 43 ra 14.5 rb 80 rc 932 rd 13'
   if prof_height>301:varcutout='r3 50 r4 100 r9 46 ra 15.5 rb 80 rc 933 rd 13'
   if prof_height>321:varcutout='r3 50 r4 100 r9 49 ra 16 rb 80 rc 934 rd 13'
   if prof_height>341:varcutout='r3 50 r4 100 r9 53.5 ra 18 rb 80 rc 935 rd 14'
   if prof_height>371:varcutout='r3 50 r4 100 r9 58 ra 19.5 rb 80 rc 936 rd 14'
   if prof_height>401:varcutout='r3 50 r4 100 r9 62,5 ra 21 rb 80 rc 937 rd 14'
}

if prof_type[1\2]='ho'  then
{
  if prof_height>59&<81& prof_flange=40:varcutout='r1 25 r2 15 r3 60 r4 '<25-15>' r5 85'
  if prof_height>59&<80& prof_flange>49&<61:varcutout='r1 25 r2 15 r3 75 r4 '<25-15>' r5 105'
  if prof_height>79&<106& prof_flange>49&<61:varcutout='r1 25 r2 20 r3 75 r4 '<25-20>' r5 105'
  if prof_height>69&<100& prof_flange>60&<75:varcutout='r1 25 r2 15 r3 90 r4 '<25-15>' r5 120'
  if prof_height>99&<140& prof_flange>60&<75:varcutout='r1 35 r2 20 r3 90 r4 '<25-20>' r5 125'
  if prof_height>74&<100& prof_flange>74&<85:varcutout='r1 25 r2 15 r3 100 r4 '<25-15>' r5 135'
  if prof_height>99&<160& prof_flange>64&<85:varcutout='r1 10 r2 15 r3 95 r4 '<25-25>' r5 135'
  if prof_height>124&<256& prof_flange>84&<91:varcutout='r1 45 r2 20 r3 115 r4 '<25-20>' r5 150'
  if prof_height>149&<256& prof_flange>90&<106:varcutout='r1 50 r2 25 r3 130 r4 '<25-25>' r5 165'
}

if prof_type[1\2]='hg'  then
{
  if prof_height>59&<80:varcutout='r1 25 r2 15 r3 '<prof_flange+15>' r4 '<25-15>' r5 '<prof_flange+40>
  if prof_height>79&<106:varcutout='r1 25 r2 20 r3 '<prof_flange+15>' r4 '<25-20>' r5 '<prof_flange+45>
  if prof_height>99&<140:varcutout='r1 35 r2 20 r3 '<prof_flange+15>' r4 '<25-20>' r5 '<prof_flange+45>
  if prof_height>124&<256:varcutout='r1 45 r2 20 r3 '<prof_flange+15>' r4 '<25-20>' r5 '<prof_flange+45>
}
if varcutout='': varcutout='r1 25 r2 15 r3 45 r4 '<25-15>' r5 75'
EXIT

LABEL 6
EnableLug[1]='704'
DefaultType='704'
Varstr=''
Exit