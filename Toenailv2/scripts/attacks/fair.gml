// fair.gml

make_attack(AT_FAIR,
    AG_CATEGORY, 1,
    AG_SPRITE, sprite_get("fair"),
    AG_NUM_WINDOWS, 3,
    AG_HAS_LANDING_LAG, 1,
    AG_LANDING_LAG, 6,
    AG_HURTBOX_SPRITE, sprite_get("fair_hurt"),
)

make_window(AT_FAIR, 1,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAMES, 1,
    
    AG_WINDOW_VSPEED, -1,

    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"),
    AG_WINDOW_SFX_FRAME, 2,
)

make_window(AT_FAIR, 2,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 1,
)

make_window(AT_FAIR, 3,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_HAS_WHIFFLAG, 5,
)
    
set_num_hitboxes(AT_FAIR, 3)

make_hitbox(AT_FAIR, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 3,

    HG_HITBOX_X, 45,
    HG_HITBOX_Y, -20,
    HG_WIDTH, 55,
    HG_HEIGHT, 80,

    HG_PRIORITY, 2,
    HG_DAMAGE, 8,
    HG_ANGLE, 361,
    HG_ANGLE_FLIPPER, 6,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, .7,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, .25,

    HG_VISUAL_EFFECT, 301,
    HG_VISUAL_EFFECT_X_OFFSET, 32,
    HG_VISUAL_EFFECT_Y_OFFSET, 5,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
)

make_hitbox(AT_FAIR, 2,
    HG_WINDOW, 2,
    HG_LIFETIME, 3,

    HG_HITBOX_X, 30,
    HG_HITBOX_Y, -70,
    HG_WIDTH, 15,
    HG_HEIGHT, 10,

    HG_PRIORITY, 3,
    HG_DAMAGE, 6,
    HG_ANGLE, 60,
    HG_ANGLE_FLIPPER, 6,
    HG_BASE_KNOCKBACK, 5,
    HG_KNOCKBACK_SCALING, 0.2,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, .5,

    HG_VISUAL_EFFECT, 301,
    HG_VISUAL_EFFECT_X_OFFSET, 20,
    HG_VISUAL_EFFECT_Y_OFFSET, 0,
    HG_HIT_SFX, asset_get("sfx_blow_weak1"),
)

make_hitbox(AT_FAIR, 3,
    HG_WINDOW, 2,
    HG_LIFETIME, 3,

    HG_HITBOX_X, 40,
    HG_HITBOX_Y, 10,
    HG_WIDTH, 10,
    HG_HEIGHT, 10,

    HG_PRIORITY, 4,
    HG_DAMAGE, 13,
    HG_ANGLE, 40,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 0.75,
    HG_BASE_HITPAUSE, 10,
    HG_HITPAUSE_SCALING, .7,

    HG_VISUAL_EFFECT, 304,
    HG_VISUAL_EFFECT_X_OFFSET, 20,
    HG_VISUAL_EFFECT_Y_OFFSET, 0,
    HG_HIT_SFX, asset_get("sfx_blow_heavy2"),
    HG_EXTRA_CAMERA_SHAKE, 2,
)

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_attack // Version 0
    // make_attack(_attack_name, (value_name, value)... )
    // Sets attack values for the given attack.
    // e.g. make_attack(AT_BAIR,
    //     AG_CATEGORY, 1,
    //     AG_SPRITE, sprite_get("bair")
    // )
    var _attack_name = argument[0]
    for(var i=1; i<=argument_count-1; i+=2) {
        set_attack_value(
            _attack_name, argument[i], argument[i+1]
        )
    }

#define make_window // Version 0
    // make_window(_attack_name, _index, (value_name, value)... )
    // Sets window values for the given window.
    // e.g.make_window(AT_BAIR, 1,
    //         AG_WINDOW_TYPE, 1,
    //         AG_WINDOW_LENGTH, 6
    //     )
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_window_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }

#define make_hitbox // Version 0
    // make_hitbox(_attack_name, _index, (value_name, value)... )
    // Sets hitbox values for the given hitbox.
    // e.g. make_hitbox(AT_BAIR, 1,
    //         HG_PARENT_HITBOX, 1,
    //         HG_HITBOX_TYPE, 1
    //     );
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_hitbox_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!