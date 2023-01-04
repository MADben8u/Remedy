// attack_update.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#every-frame
// Runs every frame while your character is attacking.

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse()
}

// Sandbert code. Replace with your own.
if (attack == AT_NSPECIAL) {
    if (window == 3){
        if (special_pressed) {
            window = 1
            window_timer = 0
        }
    }
}

if (attack == AT_FSPECIAL) {
    if (window == 2){
        if (special_pressed) {
            window = 3
            window_timer = 0
            destroy_hitboxes()
        }
    }
    can_fast_fall = false
}

if (attack == AT_USPECIAL){
    if (window == 1 && window_time_is(1)) {
        times_through = 0
    }
    if (window == 2){
        if (window_time_is(get_window_value(attack, 2, AG_WINDOW_LENGTH))) {
            if (times_through < 10) {
                times_through++
                window_timer = 0
            }
        }
        if (!joy_pad_idle) {
            hsp += lengthdir_x(1, joy_dir)
            vsp += lengthdir_y(1, joy_dir)
        } else {
            hsp *= .6
            vsp *= .6
        }
        var fly_dir = point_direction(0,0,hsp,vsp)
        var fly_dist = point_distance(0,0,hsp,vsp)
        var max_speed = 12
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir)
            vsp = lengthdir_y(max_speed, fly_dir)
        }
        if (special_pressed && times_through > 0){
            window = 4
            window_timer = 0
        }
        if (shield_pressed){
            window = 3
            window_timer = 0
        }
    }
    if (window > 3 && window < 6 && window_time_is(get_window_value(attack, window, AG_WINDOW_LENGTH))){
        window++
        window_timer = 0
    }
}

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true
    }
    can_fast_fall = false
    can_move = false
}

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!