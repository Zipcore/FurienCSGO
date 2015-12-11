public void Menu_SelectWeapon(int client)
{
  char buffer[32];
  char ch_int[10];

  Menu menu = CreateMenu(h_AF_SelectWeapon);
  menu.SetTitle("Select weapon");
  for(int i; i < sizeof(g_sAntiFuriensWeps); i += 3)
  {
    IntToString(i, ch_int, sizeof(ch_int));
    if(StringToInt(g_sAntiFuriensWeps[i+2]) > 0)
    {
      Format(buffer,sizeof(buffer), "%s [%s]",g_sAntiFuriensWeps[i],g_sAntiFuriensWeps[i+2]);
      menu.AddItem(ch_int, buffer);
    }
    else
    {
      menu.AddItem(ch_int,g_sAntiFuriensWeps[i]);
    }
  }
  menu.Display(client, MENU_TIME_FOREVER);
  menu.ExitButton = true;
}
