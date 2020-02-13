///scr_check_track_and_sfx()
ini_open("save.ini");
music = ini_read_real("options", "music", 1);
sfx = ini_read_real("options", "sfx", 1);
ini_close();
if(music)
   {
   audio_group_load(Tracks);
   //Stop menu track  if playing
if(audio_is_playing(snd_menu_track)){
audio_stop_sound(snd_menu_track);
}
///Play soundtrack
if(!audio_is_playing(snd_soundtrack)){
audio_play_sound(snd_soundtrack, 10, true);
}
   }
   /////////
if(sfx)
   {
   audio_group_load(SFX);
   }else{
   audio_group_unload(SFX);
   }
   ///////
