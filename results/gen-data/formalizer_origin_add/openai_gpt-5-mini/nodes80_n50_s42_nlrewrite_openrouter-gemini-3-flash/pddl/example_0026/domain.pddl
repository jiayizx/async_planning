(define (domain toad_pet)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    ;; pending predicates (one per step)
    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
    (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
    (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50)
    (pending51) (pending52) (pending53) (pending54) (pending55) (pending56) (pending57) (pending58) (pending59) (pending60)
    (pending61) (pending62) (pending63) (pending64) (pending65) (pending66) (pending67) (pending68) (pending69) (pending70)
    (pending71) (pending72) (pending73) (pending74) (pending75) (pending76) (pending77) (pending78) (pending79) (pending80)

    ;; done / semantic predicates (one per step)
    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75) (done76) (done77) (done78) (done79) (done80)
  )

  ;; One durative-action per step. Each action requires all its dependency semantic predicates

  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (at start (pending1))
    :effect (and (at start (not (pending1))) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (and (at start (pending2)) (at start (done10)) (at start (done17)) (at start (done25)) (at start (done41)) (at start (done43)) (at start (done51)) (at start (done60)) (at start (done79)) (at start (done1)))
    :effect (and (at start (not (pending2))) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and (at start (pending3)) (at start (done30)))
    :effect (and (at start (not (pending3))) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 1200)
    :condition (and (at start (pending4)) (at start (done11)) (at start (done80)))
    :effect (and (at start (not (pending4))) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (and (at start (pending5)) (at start (done10)) (at start (done35)) (at start (done80)))
    :effect (and (at start (not (pending5))) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (pending6)) (at start (done48)))
    :effect (and (at start (not (pending6))) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 7200)
    :condition (and (at start (pending7)) (at start (done34)))
    :effect (and (at start (not (pending7))) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (and (at start (pending8)) (at start (done13)) (at start (done45)) (at start (done55)) (at start (done69)))
    :effect (and (at start (not (pending8))) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 1200)
    :condition (at start (pending9))
    :effect (and (at start (not (pending9))) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 900)
    :condition (at start (pending10))
    :effect (and (at start (not (pending10))) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 1800)
    :condition (and (at start (pending11)) (at start (done35)) (at start (done52)) (at start (done71)))
    :effect (and (at start (not (pending11))) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 1200)
    :condition (and (at start (pending12)) (at start (done1)) (at start (done30)) (at start (done31)) (at start (done68)) (at start (done73)) (at start (done77)))
    :effect (and (at start (not (pending12))) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 7200)
    :condition (and (at start (pending13)) (at start (done45)))
    :effect (and (at start (not (pending13))) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (and (at start (pending14)) (at start (done25)))
    :effect (and (at start (not (pending14))) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 86400)
    :condition (and (at start (pending15)) (at start (done9)) (at start (done58)))
    :effect (and (at start (not (pending15))) (at end (done15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 10800)
    :condition (at start (pending16))
    :effect (and (at start (not (pending16))) (at end (done16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (and (at start (pending17)) (at start (done32)) (at start (done62)))
    :effect (and (at start (not (pending17))) (at end (done17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 2400)
    :condition (and (at start (pending18)) (at start (done11)) (at start (done12)) (at start (done22)) (at start (done26)) (at start (done27)) (at start (done33)) (at start (done64)) (at start (done69)) (at start (done72)))
    :effect (and (at start (not (pending18))) (at end (done18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 1800)
    :condition (and (at start (pending19)) (at start (done25)) (at start (done48)) (at start (done49)))
    :effect (and (at start (not (pending19))) (at end (done19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 259200)
    :condition (and (at start (pending20)) (at start (done16)) (at start (done31)) (at start (done70)))
    :effect (and (at start (not (pending20))) (at end (done20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 900)
    :condition (and (at start (pending21)) (at start (done23)) (at start (done24)) (at start (done33)) (at start (done52)) (at start (done53)) (at start (done64)) (at start (done71)) (at start (done79)))
    :effect (and (at start (not (pending21))) (at end (done21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 1200)
    :condition (and (at start (pending22)) (at start (done36)) (at start (done42)) (at start (done45)) (at start (done59)) (at start (done32)))
    :effect (and (at start (not (pending22))) (at end (done22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 1200)
    :condition (and (at start (pending23)) (at start (done45)))
    :effect (and (at start (not (pending23))) (at end (done23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 900)
    :condition (and (at start (pending24)) (at start (done26)) (at start (done44)))
    :effect (and (at start (not (pending24))) (at end (done24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 3600)
    :condition (and (at start (pending25)) (at start (done23)))
    :effect (and (at start (not (pending25))) (at end (done25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 600)
    :condition (and (at start (pending26)) (at start (done46)))
    :effect (and (at start (not (pending26))) (at end (done26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 1200)
    :condition (at start (pending27))
    :effect (and (at start (not (pending27))) (at end (done27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 1800)
    :condition (and (at start (pending28)) (at start (done7)) (at start (done22)) (at start (done56)))
    :effect (and (at start (not (pending28))) (at end (done28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 300)
    :condition (and (at start (pending29)) (at start (done24)))
    :effect (and (at start (not (pending29))) (at end (done29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 900)
    :condition (and (at start (pending30)) (at start (done46)))
    :effect (and (at start (not (pending30))) (at end (done30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 1200)
    :condition (and (at start (pending31)) (at start (done59)))
    :effect (and (at start (not (pending31))) (at end (done31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 3600)
    :condition (and (at start (pending32)) (at start (done22)))
    :effect (and (at start (not (pending32))) (at end (done32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 900)
    :condition (and (at start (pending33)) (at start (done35)))
    :effect (and (at start (not (pending33))) (at end (done33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 900)
    :condition (and (at start (pending34)) (at start (done13)) (at start (done42)) (at start (done49)))
    :effect (and (at start (not (pending34))) (at end (done34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 7200)
    :condition (and (at start (pending35)) (at start (done16)))
    :effect (and (at start (not (pending35))) (at end (done35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 600)
    :condition (and (at start (pending36)) (at start (done44)) (at start (done78)))
    :effect (and (at start (not (pending36))) (at end (done36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 1800)
    :condition (and (at start (pending37)) (at start (done6)))
    :effect (and (at start (not (pending37))) (at end (done37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 600)
    :condition (and (at start (pending38)) (at start (done79)))
    :effect (and (at start (not (pending38))) (at end (done38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 300)
    :condition (and (at start (pending39)) (at start (done5)))
    :effect (and (at start (not (pending39))) (at end (done39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 600)
    :condition (and (at start (pending40)) (at start (done10)) (at start (done45)) (at start (done76)))
    :effect (and (at start (not (pending40))) (at end (done40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 900)
    :condition (at start (pending41))
    :effect (and (at start (not (pending41))) (at end (done41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 300)
    :condition (and (at start (pending42)) (at start (done13)))
    :effect (and (at start (not (pending42))) (at end (done42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 1200)
    :condition (at start (pending43))
    :effect (and (at start (not (pending43))) (at end (done43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 900)
    :condition (at start (pending44))
    :effect (and (at start (not (pending44))) (at end (done44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 1800)
    :condition (at start (pending45))
    :effect (and (at start (not (pending45))) (at end (done45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 2700)
    :condition (and (at start (pending46)) (at start (done57)))
    :effect (and (at start (not (pending46))) (at end (done46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 600)
    :condition (and (at start (pending47)) (at start (done12)) (at start (done18)) (at start (done34)) (at start (done44)) (at start (done78)) (at start (done65)))
    :effect (and (at start (not (pending47))) (at end (done47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 1800)
    :condition (at start (pending48))
    :effect (and (at start (not (pending48))) (at end (done48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 1200)
    :condition (at start (pending49))
    :effect (and (at start (not (pending49))) (at end (done49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 300)
    :condition (and (at start (pending50)) (at start (done36)))
    :effect (and (at start (not (pending50))) (at end (done50)))
  )

  (:durative-action do_step51
    :duration (= ?duration 300)
    :condition (and (at start (pending51)) (at start (done6)) (at start (done12)) (at start (done54)))
    :effect (and (at start (not (pending51))) (at end (done51)))
  )

  (:durative-action do_step52
    :duration (= ?duration 300)
    :condition (and (at start (pending52)) (at start (done10)) (at start (done23)) (at start (done42)) (at start (done79)))
    :effect (and (at start (not (pending52))) (at end (done52)))
  )

  (:durative-action do_step53
    :duration (= ?duration 300)
    :condition (and (at start (pending53)) (at start (done49)) (at start (done76)))
    :effect (and (at start (not (pending53))) (at end (done53)))
  )

  (:durative-action do_step54
    :duration (= ?duration 3600)
    :condition (and (at start (pending54)) (at start (done22)) (at start (done31)) (at start (done32)) (at start (done38)) (at start (done65)) (at start (done76)))
    :effect (and (at start (not (pending54))) (at end (done54)))
  )

  (:durative-action do_step55
    :duration (= ?duration 1200)
    :condition (at start (pending55))
    :effect (and (at start (not (pending55))) (at end (done55)))
  )

  (:durative-action do_step56
    :duration (= ?duration 900)
    :condition (and (at start (pending56)) (at start (done13)))
    :effect (and (at start (not (pending56))) (at end (done56)))
  )

  (:durative-action do_step57
    :duration (= ?duration 600)
    :condition (and (at start (pending57)) (at start (done34)))
    :effect (and (at start (not (pending57))) (at end (done57)))
  )

  (:durative-action do_step58
    :duration (= ?duration 120)
    :condition (and (at start (pending58)) (at start (done26)) (at start (done43)) (at start (done53)) (at start (done60)) (at start (done61)) (at start (done72)) (at start (done77)))
    :effect (and (at start (not (pending58))) (at end (done58)))
  )

  (:durative-action do_step59
    :duration (= ?duration 3600)
    :condition (and (at start (pending59)) (at start (done3)) (at start (done13)) (at start (done30)))
    :effect (and (at start (not (pending59))) (at end (done59)))
  )

  (:durative-action do_step60
    :duration (= ?duration 1800)
    :condition (and (at start (pending60)) (at start (done1)) (at start (done22)) (at start (done45)) (at start (done52)) (at start (done66)))
    :effect (and (at start (not (pending60))) (at end (done60)))
  )

  (:durative-action do_step61
    :duration (= ?duration 300)
    :condition (and (at start (pending61)) (at start (done34)))
    :effect (and (at start (not (pending61))) (at end (done61)))
  )

  (:durative-action do_step62
    :duration (= ?duration 900)
    :condition (and (at start (pending62)) (at start (done59)))
    :effect (and (at start (not (pending62))) (at end (done62)))
  )

  (:durative-action do_step63
    :duration (= ?duration 300)
    :condition (and (at start (pending63)) (at start (done22)) (at start (done23)) (at start (done46)) (at start (done50)) (at start (done61)))
    :effect (and (at start (not (pending63))) (at end (done63)))
  )

  (:durative-action do_step64
    :duration (= ?duration 600)
    :condition (and (at start (pending64)) (at start (done39)) (at start (done59)) (at start (done66)) (at start (done69)) (at start (done72)))
    :effect (and (at start (not (pending64))) (at end (done64)))
  )

  (:durative-action do_step65
    :duration (= ?duration 1500)
    :condition (and (at start (pending65)) (at start (done9)))
    :effect (and (at start (not (pending65))) (at end (done65)))
  )

  (:durative-action do_step66
    :duration (= ?duration 300)
    :condition (and (at start (pending66)) (at start (done24)) (at start (done29)) (at start (done76)) (at start (done27)) (at start (done45)))
    :effect (and (at start (not (pending66))) (at end (done66)))
  )

  (:durative-action do_step67
    :duration (= ?duration 43200)
    :condition (and (at start (pending67)) (at start (done37)) (at start (done55)) (at start (done79)))
    :effect (and (at start (not (pending67))) (at end (done67)))
  )

  (:durative-action do_step68
    :duration (= ?duration 1200)
    :condition (and (at start (pending68)) (at start (done13)) (at start (done56)) (at start (done69)))
    :effect (and (at start (not (pending68))) (at end (done68)))
  )

  (:durative-action do_step69
    :duration (= ?duration 1800)
    :condition (and (at start (pending69)) (at start (done13)) (at start (done41)) (at start (done45)))
    :effect (and (at start (not (pending69))) (at end (done69)))
  )

  (:durative-action do_step70
    :duration (= ?duration 300)
    :condition (and (at start (pending70)) (at start (done53)))
    :effect (and (at start (not (pending70))) (at end (done70)))
  )

  (:durative-action do_step71
    :duration (= ?duration 120)
    :condition (and (at start (pending71)) (at start (done22)) (at start (done61)) (at start (done68)) (at start (done41)))
    :effect (and (at start (not (pending71))) (at end (done71)))
  )

  (:durative-action do_step72
    :duration (= ?duration 600)
    :condition (at start (pending72))
    :effect (and (at start (not (pending72))) (at end (done72)))
  )

  (:durative-action do_step73
    :duration (= ?duration 3600)
    :condition (and (at start (pending73)) (at start (done45)))
    :effect (and (at start (not (pending73))) (at end (done73)))
  )

  (:durative-action do_step74
    :duration (= ?duration 600)
    :condition (and (at start (pending74)) (at start (done7)) (at start (done14)) (at start (done23)) (at start (done29)) (at start (done51)) (at start (done71)) (at start (done79)) (at start (done80)) (at start (done24)) (at start (done29)))
    :effect (and (at start (not (pending74))) (at end (done74)))
  )

  (:durative-action do_step75
    :duration (= ?duration 300)
    :condition (and (at start (pending75)) (at start (done13)) (at start (done25)) (at start (done37)))
    :effect (and (at start (not (pending75))) (at end (done75)))
  )

  (:durative-action do_step76
    :duration (= ?duration 600)
    :condition (at start (pending76))
    :effect (and (at start (not (pending76))) (at end (done76)))
  )

  (:durative-action do_step77
    :duration (= ?duration 7200)
    :condition (and (at start (pending77)) (at start (done31)) (at start (done56)))
    :effect (and (at start (not (pending77))) (at end (done77)))
  )

  (:durative-action do_step78
    :duration (= ?duration 3600)
    :condition (and (at start (pending78)) (at start (done65)))
    :effect (and (at start (not (pending78))) (at end (done78)))
  )

  (:durative-action do_step79
    :duration (= ?duration 600)
    :condition (and (at start (pending79)) (at start (done1)) (at start (done22)) (at start (done45)))
    :effect (and (at start (not (pending79))) (at end (done79)))
  )

  (:durative-action do_step80
    :duration (= ?duration 900)
    :condition (at start (pending80))
    :effect (and (at start (not (pending80))) (at end (done80)))
  )
)
