(define (domain boogieboard-learn)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_done ?s - step)

    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
    (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
    (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50)
    (pending51) (pending52) (pending53) (pending54) (pending55) (pending56) (pending57) (pending58) (pending59) (pending60)
    (pending61) (pending62) (pending63) (pending64) (pending65) (pending66) (pending67) (pending68) (pending69) (pending70)
    (pending71) (pending72) (pending73) (pending74) (pending75) (pending76) (pending77) (pending78) (pending79) (pending80)
    (pending81) (pending82) (pending83) (pending84) (pending85) (pending86) (pending87) (pending88) (pending89) (pending90)
    (pending91) (pending92) (pending93) (pending94) (pending95) (pending96) (pending97) (pending98) (pending99) (pending100)

    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
    (done81) (done82) (done83) (done84) (done85) (done86) (done87) (done88) (done89) (done90)
    (done91) (done92) (done93) (done94) (done95) (done96) (done97) (done98) (done99) (done100)
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending1)) (at start (done4)) (at start (done37)) (at start (done38)) (at start (done61)) (at start (done39)) (at start (done81)))
    :effect (and (at start (not (pending1))) (at end (step_done step1)) (at end (done1)))
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending2)) (at start (done1)) (at start (done51)))
    :effect (and (at start (not (pending2))) (at end (step_done step2)) (at end (done2)))
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending3)) (at start (done38)) (at start (done70)))
    :effect (and (at start (not (pending3))) (at end (step_done step3)) (at end (done3)))
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending4)) (at start (done28)))
    :effect (and (at start (not (pending4))) (at end (step_done step4)) (at end (done4)))
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending5)) (at start (done73)))
    :effect (and (at start (not (pending5))) (at end (step_done step5)) (at end (done5)))
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending6)) (at start (done52)) (at start (done54)) (at start (done78)) (at start (done82)) (at start (done96)))
    :effect (and (at start (not (pending6))) (at end (step_done step6)) (at end (done6)))
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1500)
    :condition (and (at start (pending7)) (at start (done66)))
    :effect (and (at start (not (pending7))) (at end (step_done step7)) (at end (done7)))
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending8)) (at start (done71)) (at start (done72)) (at start (done86)))
    :effect (and (at start (not (pending8))) (at end (step_done step8)) (at end (done8)))
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending9)) (at start (done10)) (at start (done18)) (at start (done38)))
    :effect (and (at start (not (pending9))) (at end (step_done step9)) (at end (done9)))
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending10)) (at start (done20)) (at start (done28)))
    :effect (and (at start (not (pending10))) (at end (step_done step10)) (at end (done10)))
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (pending11)) (at start (done4)) (at start (done14)) (at start (done28)) (at start (done90)))
    :effect (and (at start (not (pending11))) (at end (step_done step11)) (at end (done11)))
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending12)) (at start (done28)))
    :effect (and (at start (not (pending12))) (at end (step_done step12)) (at end (done12)))
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending13)) (at start (done10)) (at start (done94)))
    :effect (and (at start (not (pending13))) (at end (step_done step13)) (at end (done13)))
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending14)) (at start (done28)))
    :effect (and (at start (not (pending14))) (at end (step_done step14)) (at end (done14)))
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending15)) (at start (done12)) (at start (done80)))
    :effect (and (at start (not (pending15))) (at end (step_done step15)) (at end (done15)))
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending16)) (at start (done70)) (at start (done90)))
    :effect (and (at start (not (pending16))) (at end (step_done step16)) (at end (done16)))
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending17)) (at start (done33)))
    :effect (and (at start (not (pending17))) (at end (step_done step17)) (at end (done17)))
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending18)))
    :effect (and (at start (not (pending18))) (at end (step_done step18)) (at end (done18)))
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending19)) (at start (done7)) (at start (done35)) (at start (done37)))
    :effect (and (at start (not (pending19))) (at end (step_done step19)) (at end (done19)))
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending20)) (at start (done47)))
    :effect (and (at start (not (pending20))) (at end (step_done step20)) (at end (done20)))
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (pending21)))
    :effect (and (at start (not (pending21))) (at end (step_done step21)) (at end (done21)))
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending22)) (at start (done16)) (at start (done47)) (at start (done51)) (at start (done72)))
    :effect (and (at start (not (pending22))) (at end (step_done step22)) (at end (done22)))
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending23)) (at start (done15)) (at start (done86)))
    :effect (and (at start (not (pending23))) (at end (step_done step23)) (at end (done23)))
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending24)) (at start (done19)) (at start (done35)) (at start (done41)))
    :effect (and (at start (not (pending24))) (at end (step_done step24)) (at end (done24)))
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending25)) (at start (done24)) (at start (done34)) (at start (done44)) (at start (done66)) (at start (done79)))
    :effect (and (at start (not (pending25))) (at end (step_done step25)) (at end (done25)))
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending26)) (at start (done70)) (at start (done94)))
    :effect (and (at start (not (pending26))) (at end (step_done step26)) (at end (done26)))
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending27)) (at start (done49)) (at start (done72)) (at start (done78)))
    :effect (and (at start (not (pending27))) (at end (step_done step27)) (at end (done27)))
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending28)))
    :effect (and (at start (not (pending28))) (at end (step_done step28)) (at end (done28)))
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending29)) (at start (done16)) (at start (done26)) (at start (done47)) (at start (done70)))
    :effect (and (at start (not (pending29))) (at end (step_done step29)) (at end (done29)))
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending30)) (at start (done14)) (at start (done35)) (at start (done61)) (at start (done92)) (at start (done98)))
    :effect (and (at start (not (pending30))) (at end (step_done step30)) (at end (done30)))
  )

  (:durative-action do_step31
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending31)) (at start (done12)) (at start (done39)))
    :effect (and (at start (not (pending31))) (at end (step_done step31)) (at end (done31)))
  )

  (:durative-action do_step32
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending32)) (at start (done5)) (at start (done34)) (at start (done64)))
    :effect (and (at start (not (pending32))) (at end (step_done step32)) (at end (done32)))
  )

  (:durative-action do_step33
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending33)) (at start (done83)))
    :effect (and (at start (not (pending33))) (at end (step_done step33)) (at end (done33)))
  )

  (:durative-action do_step34
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending34)) (at start (done5)) (at start (done11)))
    :effect (and (at start (not (pending34))) (at end (step_done step34)) (at end (done34)))
  )

  (:durative-action do_step35
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending35)) (at start (done66)))
    :effect (and (at start (not (pending35))) (at end (step_done step35)) (at end (done35)))
  )

  (:durative-action do_step36
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending36)) (at start (done31)) (at start (done32)) (at start (done69)) (at start (done92)) (at start (done97)))
    :effect (and (at start (not (pending36))) (at end (step_done step36)) (at end (done36)))
  )

  (:durative-action do_step37
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending37)) (at start (done4)) (at start (done38)) (at start (done52)))
    :effect (and (at start (not (pending37))) (at end (step_done step37)) (at end (done37)))
  )

  (:durative-action do_step38
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending38)) (at start (done12)) (at start (done16)) (at start (done92)))
    :effect (and (at start (not (pending38))) (at end (step_done step38)) (at end (done38)))
  )

  (:durative-action do_step39
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending39)) (at start (done45)) (at start (done47)) (at start (done61)) (at start (done52)))
    :effect (and (at start (not (pending39))) (at end (step_done step39)) (at end (done39)))
  )

  (:durative-action do_step40
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending40)) (at start (done65)) (at start (done69)) (at start (done84)) (at start (done85)) (at start (done78)))
    :effect (and (at start (not (pending40))) (at end (step_done step40)) (at end (done40)))
  )

  (:durative-action do_step41
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending41)) (at start (done21)) (at start (done94)))
    :effect (and (at start (not (pending41))) (at end (step_done step41)) (at end (done41)))
  )

  (:durative-action do_step42
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending42)) (at start (done3)) (at start (done4)) (at start (done9)) (at start (done18)) (at start (done20)) (at start (done28)) (at start (done35)) (at start (done66)))
    :effect (and (at start (not (pending42))) (at end (step_done step42)) (at end (done42)))
  )

  (:durative-action do_step43
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending43)) (at start (done68)) (at start (done83)) (at start (done88)))
    :effect (and (at start (not (pending43))) (at end (step_done step43)) (at end (done43)))
  )

  (:durative-action do_step44
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending44)) (at start (done71)) (at start (done77)))
    :effect (and (at start (not (pending44))) (at end (step_done step44)) (at end (done44)))
  )

  (:durative-action do_step45
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending45)))
    :effect (and (at start (not (pending45))) (at end (step_done step45)) (at end (done45)))
  )

  (:durative-action do_step46
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending46)) (at start (done12)) (at start (done19)) (at start (done32)) (at start (done48)) (at start (done76)) (at start (done80)) (at start (done87)) (at start (done91)))
    :effect (and (at start (not (pending46))) (at end (step_done step46)) (at end (done46)))
  )

  (:durative-action do_step47
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending47)))
    :effect (and (at start (not (pending47))) (at end (step_done step47)) (at end (done47)))
  )

  (:durative-action do_step48
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending48)) (at start (done36)) (at start (done60)) (at start (done92)))
    :effect (and (at start (not (pending48))) (at end (step_done step48)) (at end (done48)))
  )

  (:durative-action do_step49
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending49)) (at start (done73)) (at start (done47)) (at start (done91)) (at start (done96)) (at start (done85)))
    :effect (and (at start (not (pending49))) (at end (step_done step49)) (at end (done49)))
  )

  (:durative-action do_step50
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending50)) (at start (done70)) (at start (done74)))
    :effect (and (at start (not (pending50))) (at end (step_done step50)) (at end (done50)))
  )

  (:durative-action do_step51
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending51)) (at start (done72)))
    :effect (and (at start (not (pending51))) (at end (step_done step51)) (at end (done51)))
  )

  (:durative-action do_step52
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending52)) (at start (done38)) (at start (done69)))
    :effect (and (at start (not (pending52))) (at end (step_done step52)) (at end (done52)))
  )

  (:durative-action do_step53
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending53)) (at start (done7)) (at start (done32)) (at start (done38)) (at start (done97)))
    :effect (and (at start (not (pending53))) (at end (step_done step53)) (at end (done53)))
  )

  (:durative-action do_step54
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending54)) (at start (done68)))
    :effect (and (at start (not (pending54))) (at end (step_done step54)) (at end (done54)))
  )

  (:durative-action do_step55
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending55)) (at start (done36)) (at start (done64)))
    :effect (and (at start (not (pending55))) (at end (step_done step55)) (at end (done55)))
  )

  (:durative-action do_step56
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending56)) (at start (done1)) (at start (done39)) (at start (done51)) (at start (done77)))
    :effect (and (at start (not (pending56))) (at end (step_done step56)) (at end (done56)))
  )

  (:durative-action do_step57
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending57)) (at start (done93)))
    :effect (and (at start (not (pending57))) (at end (step_done step57)) (at end (done57)))
  )

  (:durative-action do_step58
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending58)) (at start (done1)) (at start (done5)) (at start (done31)) (at start (done94)))
    :effect (and (at start (not (pending58))) (at end (step_done step58)) (at end (done58)))
  )

  (:durative-action do_step59
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending59)) (at start (done19)) (at start (done96)))
    :effect (and (at start (not (pending59))) (at end (step_done step59)) (at end (done59)))
  )

  (:durative-action do_step60
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending60)) (at start (done1)) (at start (done7)) (at start (done16)) (at start (done28)) (at start (done83)))
    :effect (and (at start (not (pending60))) (at end (step_done step60)) (at end (done60)))
  )

  (:durative-action do_step61
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending61)) (at start (done81)))
    :effect (and (at start (not (pending61))) (at end (step_done step61)) (at end (done61)))
  )

  (:durative-action do_step62
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending62)) (at start (done10)) (at start (done21)) (at start (done26)))
    :effect (and (at start (not (pending62))) (at end (step_done step62)) (at end (done62)))
  )

  (:durative-action do_step63
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending63)) (at start (done14)) (at start (done51)))
    :effect (and (at start (not (pending63))) (at end (step_done step63)) (at end (done63)))
  )

  (:durative-action do_step64
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending64)))
    :effect (and (at start (not (pending64))) (at end (step_done step64)) (at end (done64)))
  )

  (:durative-action do_step65
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending65)) (at start (done35)))
    :effect (and (at start (not (pending65))) (at end (step_done step65)) (at end (done65)))
  )

  (:durative-action do_step66
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending66)) (at start (done16)) (at start (done90)) (at start (done92)))
    :effect (and (at start (not (pending66))) (at end (step_done step66)) (at end (done66)))
  )

  (:durative-action do_step67
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending67)) (at start (done18)) (at start (done19)) (at start (done36)) (at start (done52)) (at start (done73)) (at start (done86)))
    :effect (and (at start (not (pending67))) (at end (step_done step67)) (at end (done67)))
  )

  (:durative-action do_step68
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending68)))
    :effect (and (at start (not (pending68))) (at end (step_done step68)) (at end (done68)))
  )

  (:durative-action do_step69
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending69)) (at start (done20)))
    :effect (and (at start (not (pending69))) (at end (step_done step69)) (at end (done69)))
  )

  (:durative-action do_step70
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending70)) (at start (done14)))
    :effect (and (at start (not (pending70))) (at end (step_done step70)) (at end (done70)))
  )

  (:durative-action do_step71
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending71)) (at start (done15)) (at start (done83)) (at start (done88)) (at start (done97)) (at start (done91)))
    :effect (and (at start (not (pending71))) (at end (step_done step71)) (at end (done71)))
  )

  (:durative-action do_step72
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending72)) (at start (done100)) (at start (done98)))
    :effect (and (at start (not (pending72))) (at end (step_done step72)) (at end (done72)))
  )

  (:durative-action do_step73
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending73)) (at start (done90)))
    :effect (and (at start (not (pending73))) (at end (step_done step73)) (at end (done73)))
  )

  (:durative-action do_step74
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending74)) (at start (done81)) (at start (done83)))
    :effect (and (at start (not (pending74))) (at end (step_done step74)) (at end (done74)))
  )

  (:durative-action do_step75
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending75)) (at start (done41)) (at start (done52)) (at start (done54)) (at start (done60)))
    :effect (and (at start (not (pending75))) (at end (step_done step75)) (at end (done75)))
  )

  (:durative-action do_step76
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending76)))
    :effect (and (at start (not (pending76))) (at end (step_done step76)) (at end (done76)))
  )

  (:durative-action do_step77
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending77)) (at start (done70)) (at start (done80)) (at start (done83)) (at start (done78)))
    :effect (and (at start (not (pending77))) (at end (step_done step77)) (at end (done77)))
  )

  (:durative-action do_step78
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (pending78)))
    :effect (and (at start (not (pending78))) (at end (step_done step78)) (at end (done78)))
  )

  (:durative-action do_step79
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending79)) (at start (done37)) (at start (done68)) (at start (done73)) (at start (done100)))
    :effect (and (at start (not (pending79))) (at end (step_done step79)) (at end (done79)))
  )

  (:durative-action do_step80
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending80)) (at start (done1)) (at start (done60)))
    :effect (and (at start (not (pending80))) (at end (step_done step80)) (at end (done80)))
  )

  (:durative-action do_step81
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending81)))
    :effect (and (at start (not (pending81))) (at end (step_done step81)) (at end (done81)))
  )

  (:durative-action do_step82
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (pending82)) (at start (done9)) (at start (done35)) (at start (done50)) (at start (done74)) (at start (done93)))
    :effect (and (at start (not (pending82))) (at end (step_done step82)) (at end (done82)))
  )

  (:durative-action do_step83
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending83)))
    :effect (and (at start (not (pending83))) (at end (step_done step83)) (at end (done83)))
  )

  (:durative-action do_step84
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending84)) (at start (done3)) (at start (done8)) (at start (done21)) (at start (done34)) (at start (done52)) (at start (done69)) (at start (done70)) (at start (done77)))
    :effect (and (at start (not (pending84))) (at end (step_done step84)) (at end (done84)))
  )

  (:durative-action do_step85
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending85)) (at start (done18)) (at start (done54)) (at start (done95)))
    :effect (and (at start (not (pending85))) (at end (step_done step85)) (at end (done85)))
  )

  (:durative-action do_step86
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending86)) (at start (done1)) (at start (done21)) (at start (done41)))
    :effect (and (at start (not (pending86))) (at end (step_done step86)) (at end (done86)))
  )

  (:durative-action do_step87
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending87)) (at start (done7)) (at start (done11)) (at start (done80)) (at start (done90)) (at start (done98)))
    :effect (and (at start (not (pending87))) (at end (step_done step87)) (at end (done87)))
  )

  (:durative-action do_step88
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending88)) (at start (done72)) (at start (done96)))
    :effect (and (at start (not (pending88))) (at end (step_done step88)) (at end (done88)))
  )

  (:durative-action do_step89
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending89)) (at start (done8)) (at start (done52)) (at start (done84)))
    :effect (and (at start (not (pending89))) (at end (step_done step89)) (at end (done89)))
  )

  (:durative-action do_step90
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending90)))
    :effect (and (at start (not (pending90))) (at end (step_done step90)) (at end (done90)))
  )

  (:durative-action do_step91
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending91)))
    :effect (and (at start (not (pending91))) (at end (step_done step91)) (at end (done91)))
  )

  (:durative-action do_step92
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending92)))
    :effect (and (at start (not (pending92))) (at end (step_done step92)) (at end (done92)))
  )

  (:durative-action do_step93
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending93)) (at start (done8)) (at start (done76)) (at start (done77)))
    :effect (and (at start (not (pending93))) (at end (step_done step93)) (at end (done93)))
  )

  (:durative-action do_step94
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (pending94)) (at start (done81)))
    :effect (and (at start (not (pending94))) (at end (step_done step94)) (at end (done94)))
  )

  (:durative-action do_step95
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending95)) (at start (done24)))
    :effect (and (at start (not (pending95))) (at end (step_done step95)) (at end (done95)))
  )

  (:durative-action do_step96
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending96)) (at start (done83)))
    :effect (and (at start (not (pending96))) (at end (step_done step96)) (at end (done96)))
  )

  (:durative-action do_step97
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pending97)) (at start (done28)))
    :effect (and (at start (not (pending97))) (at end (step_done step97)) (at end (done97)))
  )

  (:durative-action do_step98
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending98)) (at start (done1)) (at start (done3)) (at start (done10)) (at start (done28)) (at start (done61)) (at start (done80)))
    :effect (and (at start (not (pending98))) (at end (step_done step98)) (at end (done98)))
  )

  (:durative-action do_step99
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (pending99)) (at start (done12)) (at start (done23)) (at start (done42)))
    :effect (and (at start (not (pending99))) (at end (step_done step99)) (at end (done99)))
  )

  (:durative-action do_step100
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending100)) (at start (done78)))
    :effect (and (at start (not (pending100))) (at end (step_done step100)) (at end (done100)))
  )
)
