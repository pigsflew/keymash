
RapidFire(key) {
  KeyWait %key%, T0.5            ; Wait 500ms for user to release the pressed key
  If ErrorLevel                  ; Still held down
    If GetKeyState(key, "P"){
      TrayTip, RapidFire Active, Firing '%key%',, 0x31
    }
    While GetKeyState(key, "P"){ ; While it is held down
      Send %key%
      Sleep 100
    }
    TrayTip
  return
}
