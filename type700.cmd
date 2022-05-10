LABEL 1
EXIT

LABEL 3
VarStr = 'l1 700'
EXIT

LABEL 4
Quest[1] = 'Quest 1'
Quest[2] = 'Quest 2'
Quest[3] = 'Quest 3'
Quest[4] = 'Quest 4'
Quest[5] = 'Quest 5'
VarStr = 'R9 31 RA 9 RB 2 RC 20 RD 100'
EXIT

LABEL 5
varlug = ''
IF Prof_Type[1\2] = 'hp' THEN
{
  IF Prof_Height <  81 : varlug = 'RD 70'; EXIT
  IF Prof_Height < 101 : varlug = 'RD 75'; EXIT
  IF Prof_Height < 121 : varlug = 'RD 75'; EXIT
  IF Prof_Height < 141 : varlug = 'RD 85'; EXIT
  IF Prof_Height < 161 : varlug = 'RD 85'; EXIT
  IF Prof_Height < 181 : varlug = 'RD 100'; EXIT
  IF Prof_Height < 201 : varlug = 'RD 100'; EXIT
  IF Prof_Height < 221 : varlug = 'RD 100'; EXIT
  IF Prof_Height < 241 : varlug = 'RD 120'; EXIT
  IF Prof_Height < 261 : varlug = 'RD 120'; EXIT
  IF Prof_Height < 281 : varlug = 'RD 120'; EXIT
  IF Prof_Height < 301 : varlug = 'RD 135'; EXIT
  IF Prof_Height < 321 : varlug = 'RD 135'; EXIT
  IF Prof_Height < 341 : varlug = 'RD 135'; EXIT
  IF Prof_Height < 371 : varlug = 'RD 150'; EXIT
  IF Prof_Height < 401 : varlug = 'RD 150'; EXIT
  IF Prof_Height < 431 : varlug = 'RD 150'; EXIT
}

IF Prof_Type[1\2] = 'hg' | Prof_Type[1\2] = 'ho' THEN
{
  varlug = 'R9 '<Prof_Flange>' RD 100'
}

IF varlug = '': varlug = 'R9 85 RD 100'
EXIT

LABEL 6
EnableCutout[1]='100'
EnableCutout[2]='115'
DefaultType='100'
EXIT 
