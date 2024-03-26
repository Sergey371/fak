let { tap, combo, encoder, .. } = import "../../fak/keycode.ncl" in

# We alias commonly used stuff, so we don't end up repeating them over and over.
let kc = tap.reg.kc in
let me = tap.custom.media in

# Keymap definition
{
  virtual_keys = [
    encoder.cw 0,
    encoder.ccw 0,
  ],

  layers = [
    [ # Layer 0
         kc.A,    kc.B,    kc.C, me.MUTE,
      me.PREV, me.PLAY, me.NEXT,
 
      # Combos start here in the same order we defined them above
      me.VOLU,
      me.VOLD,
    ],
  ]
}
