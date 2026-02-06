musics = [snd_music1, snd_music2, snd_music3];
music_index = 0;
current_music = noone;
volume = global.music;

function play_next_music() {
    current_music = musics[music_index]; 
    sound_instance = audio_play_sound(current_music, 1, false);
    
    audio_sound_gain(sound_instance, volume, 0);
    music_index++;
    if (music_index >= array_length(musics)) {
        music_index = 0;
    }
}

play_next_music();
