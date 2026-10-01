/// Full-screen swoon overlay + the layered slowed-down knight cut sounds
function scr_swoon(_sprite, _duration = 180, _on_finish = undefined, _gain = 5)
{
    var _s = instance_create_depth(0, 0, -10001, obj_swoon);
    _s.sprite_index = _sprite;
    _s.duration     = _duration;
    _s.on_finish    = _on_finish;

    var _pitches = [0.06, 0.1, 0.12, 0.18, 0.24];
    for (var i = 0; i < array_length(_pitches); i++)
    {
        var _snd = audio_play_sound(snd_knight_cut, 10, false);
        audio_sound_gain(_snd, _gain, 0);
        audio_sound_pitch(_snd, _pitches[i]);
        array_push(_s.sounds, _snd);
    }
    return _s;
}

/// bottom-center of an instance's current sprite, in room coords
function scr_get_feet(_obj)
{
    with (_obj)
    {
        return {
            x: x + (sprite_get_width(sprite_index) / 2 - sprite_get_xoffset(sprite_index)) * image_xscale,
            y: y + (sprite_get_height(sprite_index) - sprite_get_yoffset(sprite_index)) * image_yscale
        };
    }
}

/// x/y an instance needs so _sprite's bottom-center lands on (_fx, _fy)
function scr_feet_to_xy(_obj, _sprite, _fx, _fy)
{
    return {
        x: _fx - (sprite_get_width(_sprite) / 2 - sprite_get_xoffset(_sprite)) * _obj.image_xscale,
        y: _fy - (sprite_get_height(_sprite) - sprite_get_yoffset(_sprite)) * _obj.image_yscale
    };
}

/// swap sprite without the character visually jumping (origins differ between sprites)
function scr_set_sprite_keep_feet(_obj, _sprite)
{
    if (!instance_exists(_obj)) exit;
    var _f = scr_get_feet(_obj);
    var _p = scr_feet_to_xy(_obj, _sprite, _f.x, _f.y);
    _obj.sprite_index = _sprite;
    _obj.image_index  = 0;
    _obj.image_speed  = 0;
    _obj.x = _p.x;
    _obj.y = _p.y;
}

/// after Susie's swoon: fell sprite, knocked back to where she jumped from, screen shake
function scr_susie_knockback()
{
    if (!instance_exists(obj_susie)) exit;

    var _dur = 18;
    scr_set_sprite_keep_feet(obj_susie, spr_susie_fell);

    var _t  = scr_feet_to_xy(obj_susie, spr_susie_fell, obj_susie.leap_home_x, obj_susie.leap_home_y);
    var _dx = (_t.x - obj_susie.x) / _dur;
    var _dy = (_t.y - obj_susie.y) / _dur;
    scr_char_move_now(obj_susie, spr_susie_fell, false, _dx, _dy, 1, _dur, false, 0.05, "out");

    scr_camera_shake(4, 20);

    scr_call_after_frames(function() { global.cutscene_lock = false; }, _dur);
}