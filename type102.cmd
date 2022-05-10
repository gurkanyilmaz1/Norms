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
VarStr = 'R1 40 R2 -10 R3 900 R4 2'
EXIT

LABEL 5
VarCutOut = ''

IF Prof_Type[1\2] = 'hp' THEN
{  
  IF Prof_Height <120       : VarCutOut = 'r1 12 r2 25 r3 20 r4 45 '
  IF Prof_Height >119 & <161: VarCutOut = 'r1 12 r2 25 r3 30 r4 60 '
  IF Prof_Height >179 & <201: VarCutOut = 'r1 12 r2 25 r3 35 r4 75 '
  IF Prof_Height >219 & <241: VarCutOut = 'r1 12 r2 25 r3 40 r4 80 '
  IF Prof_Height >259 & <301: VarCutOut = 'r1 12 r2 25 r3 45 r4 90 '
  IF Prof_Height >319 & <1000:VarCutOut = 'r1 12 r2 25 r3 50 r4 100 '
}

IF VarCutOut = '' THEN
{
   Hint = '^prof_type not a proper profile for the cutout'
   do -gui/noterr
   VarCutOut='r1 75 r2 '<60-85>' r3 '<60*60>' r4 2 '
}
EXIT