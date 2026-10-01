timer++;

if (timer >= duration)
{
    // quick fade on the knight-cut layers so they don't click off, then stop them
    for (var i = 0; i < array_length(sounds); i++)
    {
        if (audio_is_playing(sounds[i])) audio_sound_gain(sounds[i], 0, 150);
    }
    scr_call_after_frames(method({ snds: sounds }, function()
    {
        for (var i = 0; i < array_length(snds); i++) audio_stop_sound(snds[i]);
    }), 10);

    var _cb = on_finish;
    instance_destroy();
    if (_cb != undefined) _cb();
}