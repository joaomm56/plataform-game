volume = global.music;
audio_sound_gain(sound_instance, volume, 0);
if (!audio_is_playing(current_music)) {
    play_next_music();
}