/// Full-screen swoon overlay + the layered slowed-down knight cut sounds
function scr_swoon(_sprite, _duration = 180, _on_finish = undefined, _gain = 5)
{
    var _s = instance_create_depth(0, 0, -10001, obj_swoon);
    _s.sprite_index = _sprite;
    _s.duration     = _duration;
    _s.on_finish    = _on_finish;
    _s.sound_gain   = _gain;

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
    _obj.last_sprite = _sprite; // already re-anchored, so End Step doesn't do it again
}

/// same idea as scr_set_sprite_keep_feet, but lines up the bottom-center of the
/// *visible pixels* (bbox) instead of the whole canvas — for sprites like Ralsei's
/// battle ones whose canvas is a lot wider/taller than his body
function scr_set_sprite_keep_body(_obj, _sprite, _anim_loop = false)
{
    if (!instance_exists(_obj)) exit;
    with (_obj)
    {
        var _old = sprite_index;
        var _fx = x + ((sprite_get_bbox_left(_old) + sprite_get_bbox_right(_old) + 1) / 2 - sprite_get_xoffset(_old)) * image_xscale;
        var _fy = y + (sprite_get_bbox_bottom(_old) + 1 - sprite_get_yoffset(_old)) * image_yscale;
        x = _fx - ((sprite_get_bbox_left(_sprite) + sprite_get_bbox_right(_sprite) + 1) / 2 - sprite_get_xoffset(_sprite)) * image_xscale;
        y = _fy - (sprite_get_bbox_bottom(_sprite) + 1 - sprite_get_yoffset(_sprite)) * image_yscale;

        sprite_index = _sprite;
        last_sprite  = _sprite; // already placed, End Step shouldn't nudge it again
        image_index  = 0;
        image_speed  = _anim_loop ? 1 : 0;
        anim_loop    = _anim_loop;
    }
}

/// after Susie's swoon: fell sprite, knocked back to where she jumped from, screen shake
function scr_susie_knockback()
{
    if (!instance_exists(obj_susie)) exit;

    var _dur = 18;
    scr_set_sprite_keep_feet(obj_susie, spr_susie_fell);
    scr_swoon_fall_sounds();

    var _t  = scr_feet_to_xy(obj_susie, spr_susie_fell, obj_susie.leap_home_x, obj_susie.leap_home_y);
    var _dx = (_t.x - obj_susie.x) / _dur;
    var _dy = (_t.y - obj_susie.y) / _dur;
    scr_char_move_now(obj_susie, spr_susie_fell, false, _dx, _dy, 1, _dur, false, 0.05, "out");

    scr_camera_shake(4, 20);

    scr_call_after_frames(function() { global.cutscene_lock = false; }, _dur);
}

/// the hit/fall sound stack when a character drops into their fell/defeat sprite
/// _scale: multiplier on every layer's volume (1 = the original screenshot values)
/// returns the playing sound instances, so the crash can be cut off later (scr_stop_sounds)
function scr_swoon_fall_sounds(_scale = 0.75)
{
    var _layers = [
        [snd_impact,        1,   1],
        [snd_closet_impact, 1,   1],
        [snd_closet_impact, 1,   0.5],
        [snd_bageldefeat,   0.8, 0.8],
        [snd_damagetaken,   1,   1],
        [snd_glassbreak,    0.8, 0.4],
        [snd_glassbreak,    0.6, 0.3]
    ];

    var _playing = [];
    for (var i = 0; i < array_length(_layers); i++)
    {
        var _snd = audio_play_sound(_layers[i][0], 10, false);
        audio_sound_gain(_snd, _layers[i][1] * _scale, 0);
        audio_sound_pitch(_snd, _layers[i][2]);
        array_push(_playing, _snd);
    }
    return _playing;
}

/// stops every sound instance in an array (e.g. what scr_swoon_fall_sounds returned)
function scr_stop_sounds(_sounds)
{
    if (!is_array(_sounds)) exit;
    for (var i = 0; i < array_length(_sounds); i++)
    {
        audio_stop_sound(_sounds[i]);
    }
}