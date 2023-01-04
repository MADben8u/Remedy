// fstrong.gml

make_attack(AT_FSTRONG,
    AG_SPRITE, sprite_get("fstrong"),
    AG_NUM_WINDOWS, 7,
    AG_HAS_LANDING_LAG, 3,
    AG_STRONG_CHARGE_WINDOW, 1,
    AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"),
)

make_window(AT_FSTRONG, 1,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAMES, 1,
)

make_window(AT_FSTRONG, 2,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,

    AG_WINDOW_HSPEED, 4.50,
    AG_WINDOW_HSPEED_TYPE, 1,
    
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"),
    AG_WINDOW_SFX_FRAME, 1,
)

make_window(AT_FSTRONG, 3,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 2,

    AG_WINDOW_HSPEED, 7,
)

make_window(AT_FSTRONG, 4,
    AG_WINDOW_LENGTH, 4,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_HSPEED, 1,

)

make_window(AT_FSTRONG, 5,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 3,

)

make_window(AT_FSTRONG, 6,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 3,

)

make_window(AT_FSTRONG, 7,
    AG_WINDOW_LENGTH, 21,
    AG_WINDOW_HAS_WHIFFLAG, 11,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 4,

)

set_num_hitboxes(AT_FSTRONG, 3)

make_hitbox(AT_FSTRONG, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 5,

    HG_WIDTH, 50,
    HG_HEIGHT, 30,
    HG_HITBOX_X, 15,
    HG_HITBOX_Y, -25,

    HG_PRIORITY, 2,
    HG_ANGLE, 10,
    HG_BASE_KNOCKBACK, 6,
    HG_DAMAGE, 4,
    HG_HITSTUN_MULTIPLIER, 0.25,
    HG_TECHABLE, 1,
    HG_BASE_HITPAUSE, 5,
    HG_EXTRA_HITPAUSE, 6,

    HG_VISUAL_EFFECT_X_OFFSET, 20,
    HG_VISUAL_EFFECT_X_OFFSET, 0,
    HG_HIT_SFX, asset_get("sfx_blow_weak2"),

    HG_IGNORES_PROJECTILES, 1,
    HG_HITBOX_GROUP, -1,
    HG_FORCE_FLINCH, 2,
)

make_hitbox(AT_FSTRONG, 2,
    HG_WINDOW, 5,
    HG_LIFETIME, 2,

    HG_WIDTH, 60,
    HG_HEIGHT, 50,
    HG_HITBOX_X, 50,
    HG_HITBOX_Y, -25,

    HG_PRIORITY, 1,
    HG_ANGLE, 361,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 0.9,
    HG_DAMAGE, 8,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, 0.50,

    HG_EFFECT, 3,
    HG_VISUAL_EFFECT, 304,
    HG_VISUAL_EFFECT_X_OFFSET, 20,
    HG_VISUAL_EFFECT_X_OFFSET, 5,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),

    HG_IGNORES_PROJECTILES, 1,
    HG_HITBOX_GROUP, -1,
)

make_hitbox(AT_FSTRONG, 3,
    HG_WINDOW, 6,
    HG_LIFETIME, 2,

    HG_WIDTH, 70,
    HG_HEIGHT, 70,
    HG_HITBOX_X, 60,
    HG_HITBOX_Y, -30,

    HG_PRIORITY, 3,
    HG_ANGLE, 361,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 1.2,
    HG_DAMAGE, 10,
    HG_BASE_HITPAUSE, 18,
    HG_HITPAUSE_SCALING, 0.50,

    HG_EFFECT, 2,
    HG_VISUAL_EFFECT, 1,
    HG_VISUAL_EFFECT_X_OFFSET, 20,
    HG_VISUAL_EFFECT_X_OFFSET, 0,
    HG_HIT_SFX, asset_get("sfx_burnconsume"),
    HG_EXTRA_CAMERA_SHAKE, 2,

    HG_IGNORES_PROJECTILES, 1,
    HG_HITBOX_GROUP, -1,
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