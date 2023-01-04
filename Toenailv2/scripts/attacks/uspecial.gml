// uspecial.gml

make_attack(AT_USPECIAL,
    AG_CATEGORY, 2,
    AG_SPRITE, sprite_get("uspecial"),
    AG_NUM_WINDOWS, 3,
    AG_HAS_LANDING_LAG, 4,
    AG_OFF_LEDGE, 1,
    AG_AIR_SPRITE, sprite_get("uspecial"),
    AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"),
    AG_USES_CUSTOM_GRAVITY, 1,
)

make_window(AT_USPECIAL, 1,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 6,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_HSPEED_TYPE, 1,
    AG_WINDOW_VSPEED_TYPE, 1,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"),
)

make_window(AT_USPECIAL, 2,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 16,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"),
)

make_window(AT_USPECIAL, 3,
    AG_WINDOW_TYPE, 7,
    AG_WINDOW_LENGTH, 6,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 6,
)

make_window(AT_USPECIAL, 4,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 8,
    AG_WINDOW_HSPEED_TYPE, 1,
    AG_WINDOW_VSPEED_TYPE, 1,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_sand_screech"),
)

make_window(AT_USPECIAL, 5,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 9,
    AG_WINDOW_HSPEED_TYPE, 1,
    AG_WINDOW_VSPEED_TYPE, 1,
)

make_window(AT_USPECIAL, 6,
    AG_WINDOW_TYPE, 7,
    AG_WINDOW_LENGTH, 8,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 10,
    AG_WINDOW_CUSTOM_GRAVITY, .1,
)

set_num_hitboxes(AT_USPECIAL, 5);

make_hitbox(AT_USPECIAL, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 1,
    HG_HITBOX_Y, -35,
    HG_WIDTH, 40,
    HG_HEIGHT, 70,
    HG_SHAPE, 1,
    HG_PRIORITY, 1,
    HG_DAMAGE, 2,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 5,
    HG_BASE_HITPAUSE, 4,
    HG_VISUAL_EFFECT, 3,
    HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"),
    HG_ANGLE_FLIPPER, 1,
    HG_HITBOX_GROUP, -1,
)

make_hitbox(AT_USPECIAL, 2,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 4,
    HG_LIFETIME, 1,
    HG_HITBOX_Y, -35,
    HG_HITBOX_GROUP, -1,
)

make_hitbox(AT_USPECIAL, 3,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 8,
    HG_LIFETIME, 1,
    HG_HITBOX_Y, -35,
    HG_HITBOX_GROUP, -1,
)

make_hitbox(AT_USPECIAL, 4,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 12,
    HG_LIFETIME, 1,
    HG_HITBOX_Y, -35,
    HG_HITBOX_GROUP, -1,
)

make_hitbox(AT_USPECIAL, 5,
    HG_PARENT_HITBOX, 5,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 5,
    HG_LIFETIME, 10,
    HG_HITBOX_Y, -33,
    HG_WIDTH, 125,
    HG_HEIGHT, 125,
    HG_PRIORITY, 1,
    HG_DAMAGE, 8,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, .5,
    HG_BASE_HITPAUSE, 20,
    HG_VISUAL_EFFECT, 3,
    HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"),
    HG_ANGLE_FLIPPER, 1,
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