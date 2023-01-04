// ustrong.gml

make_attack(AT_USTRONG,
    AG_SPRITE, sprite_get("ustrong"),
    AG_NUM_WINDOWS, 5,
    AG_STRONG_CHARGE_WINDOW, 1,
    AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"),
)

make_window(AT_USTRONG, 1,
    AG_WINDOW_LENGTH, 8,
    AG_WINDOW_ANIM_FRAMES, 1,
)

make_window(AT_USTRONG, 2,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 1,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"),
    AG_WINDOW_SFX_FRAME, 2,
)

make_window(AT_USTRONG, 3,
    AG_WINDOW_LENGTH, 1,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 2,
)

make_window(AT_USTRONG, 4,
    AG_WINDOW_LENGTH, 16,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_HAS_WHIFFLAG, 12,
)

make_window(AT_USTRONG, 5,
    AG_WINDOW_LENGTH, 24,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_HAS_WHIFFLAG, 12,
)

set_num_hitboxes(AT_USTRONG, 2)

make_hitbox(AT_USTRONG, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 1,

    HG_HITBOX_X, 30,
    HG_HITBOX_Y, -60,
    HG_WIDTH, 60,
    HG_HEIGHT, 100,

    HG_HITBOX_GROUP, -1,
    HG_PRIORITY, 2,
    HG_DAMAGE, 7,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 1.1,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, .5,
    HG_EFFECT, 3,

    HG_VISUAL_EFFECT, 304,
    HG_VISUAL_EFFECT_Y_OFFSET, -10,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),

    HG_IGNORES_PROJECTILES, 1,
)

make_hitbox(AT_USTRONG, 2,
    HG_WINDOW, 4,
    HG_LIFETIME, 2,

    HG_HITBOX_X, 3,
    HG_HITBOX_Y, -90,
    HG_WIDTH, 85,
    HG_HEIGHT, 120,

    HG_HITBOX_GROUP, -1,
    HG_PRIORITY, 3,
    HG_DAMAGE, 8,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, 1.3,
    HG_BASE_HITPAUSE, 18,
    HG_HITPAUSE_SCALING, .5,
    HG_EFFECT, 2,

    HG_VISUAL_EFFECT, 1,
    HG_VISUAL_EFFECT_Y_OFFSET, 0,
    HG_EXTRA_CAMERA_SHAKE, 4,
    HG_HIT_SFX, asset_get("sfx_burnconsume"),

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