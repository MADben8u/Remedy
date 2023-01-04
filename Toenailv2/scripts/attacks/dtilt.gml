// dtilt.gml

make_attack(AT_DTILT,
    AG_SPRITE, sprite_get("dtilt"),
    AG_NUM_WINDOWS, 3,
    AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"),
)

make_window(AT_DTILT, 1,
    AG_WINDOW_LENGTH, 4,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"),
    AG_WINDOW_SFX_FRAME, 2,
)

make_window(AT_DTILT, 2,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 1,
)

make_window(AT_DTILT, 3,
    AG_WINDOW_LENGTH, 12,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_HAS_WHIFFLAG, 6,
)

set_num_hitboxes(AT_DTILT, 1)

make_hitbox(AT_DTILT, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 3,

    HG_HITBOX_X, 50,
    HG_HITBOX_Y, -10,
    HG_WIDTH, 90,
    HG_HEIGHT, 20,
    HG_SHAPE, 1,

    HG_PRIORITY, 1,
    HG_DAMAGE, 9,
    HG_ANGLE, 70,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, .5,
    HG_BASE_HITPAUSE, 7,
    HG_HITPAUSE_SCALING, .25,

    HG_VISUAL_EFFECT_X_OFFSET, 30,
    HG_VISUAL_EFFECT_Y_OFFSET, 10,
    HG_HIT_SFX, asset_get("sfx_blow_weak2"),
    HG_IGNORES_PROJECTILES, 1,
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