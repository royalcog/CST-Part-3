/// @func scr_ease(_t, _type)
/// @param _t     progress 0..1
/// @param _type  "linear", "in", "out", "inout", "smooth", "back"
function scr_ease(_t, _type)
{
    _t = clamp(_t, 0, 1);
    switch (_type)
    {
        case "in":     return _t * _t * _t;                                   // slow start, fast end
        case "out":    return 1 - power(1 - _t, 3);                           // fast start, slow stop
        case "inout":  return (_t < 0.5) ? 4 * _t * _t * _t
                                         : 1 - power(-2 * _t + 2, 3) / 2;     // slow, fast, slow
        case "smooth": return _t * _t * (3 - 2 * _t);                         // gentle inout
        case "back":                                                          // tiny overshoot, settles back
            var _c1 = 1.70158;
            var _c3 = _c1 + 1;
            return 1 + _c3 * power(_t - 1, 3) + _c1 * power(_t - 1, 2);
        default:       return _t;                                             // "linear"
    }
}