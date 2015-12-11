stock SetCvarStr(char[] scvar, char[] svalue)
{
  SetConVarString(FindConVar(scvar), svalue, true);
}
stock SetCvarInt(char[] scvar, int svalue)
{
  SetConVarInt(FindConVar(scvar), svalue, true);
}
