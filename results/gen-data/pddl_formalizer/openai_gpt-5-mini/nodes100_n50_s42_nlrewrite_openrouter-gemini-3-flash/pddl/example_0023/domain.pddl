(define (domain sit_down_at_computer)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending1) (pending2) (pending3) (pending4) (pending5)
    (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15)
    (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25)
    (pending26) (pending27) (pending28) (pending29) (pending30)
    (pending31) (pending32) (pending33) (pending34) (pending35)
    (pending36) (pending37) (pending38) (pending39) (pending40)
    (pending41) (pending42) (pending43) (pending44) (pending45)
    (pending46) (pending47) (pending48) (pending49) (pending50)
    (pending51) (pending52) (pending53) (pending54) (pending55)
    (pending56) (pending57) (pending58) (pending59) (pending60)
    (pending61) (pending62) (pending63) (pending64) (pending65)
    (pending66) (pending67) (pending68) (pending69) (pending70)
    (pending71) (pending72) (pending73) (pending74) (pending75)
    (pending76) (pending77) (pending78) (pending79) (pending80)
    (pending81) (pending82) (pending83) (pending84) (pending85)
    (pending86) (pending87) (pending88) (pending89) (pending90)
    (pending91) (pending92) (pending93) (pending94) (pending95)
    (pending96) (pending97) (pending98) (pending99) (pending100)

    (done1) (done2) (done3) (done4) (done5)
    (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15)
    (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25)
    (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35)
    (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45)
    (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55)
    (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65)
    (done66) (done67) (done68) (done69) (done70)
    (done71) (done72) (done73) (done74) (done75)
    (done76) (done77) (done78) (done79) (done80)
    (done81) (done82) (done83) (done84) (done85)
    (done86) (done87) (done88) (done89) (done90)
    (done91) (done92) (done93) (done94) (done95)
    (done96) (done97) (done98) (done99) (done100)
  )

  (:durative-action step1
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending1)) (at start (done41)) (at start (done55)) (at start (done62)))
    :effect (and (at start (not (pending1))) (at end (done1)))
  )

  (:durative-action step2
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending2)) (at start (done5)) (at start (done37)) (at start (done42)) (at start (done85)) (at start (done98)))
    :effect (and (at start (not (pending2))) (at end (done2)))
  )

  (:durative-action step3
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (pending3)) (at start (done65)) (at start (done78)) (at start (done80)))
    :effect (and (at start (not (pending3))) (at end (done3)))
  )

  (:durative-action step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending4)))
    :effect (and (at start (not (pending4))) (at end (done4)))
  )

  (:durative-action step5
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending5)))
    :effect (and (at start (not (pending5))) (at end (done5)))
  )

  (:durative-action step6
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pending6)) (at start (done61)) (at start (done67)) (at start (done68)))
    :effect (and (at start (not (pending6))) (at end (done6)))
  )

  (:durative-action step7
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending7)) (at start (done30)) (at start (done53)) (at start (done81)))
    :effect (and (at start (not (pending7))) (at end (done7)))
  )

  (:durative-action step8
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending8)) (at start (done13)) (at start (done91)) (at start (done100)))
    :effect (and (at start (not (pending8))) (at end (done8)))
  )

  (:durative-action step9
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending9)))
    :effect (and (at start (not (pending9))) (at end (done9)))
  )

  (:durative-action step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending10)) (at start (done4)) (at start (done28)) (at start (done41)) (at start (done50)) (at start (done55)) (at start (done77)) (at start (done86)))
    :effect (and (at start (not (pending10))) (at end (done10)))
  )

  (:durative-action step11
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending11)) (at start (done4)) (at start (done15)) (at start (done47)) (at start (done62)) (at start (done98)))
    :effect (and (at start (not (pending11))) (at end (done11)))
  )

  (:durative-action step12
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending12)) (at start (done14)) (at start (done66)) (at start (done85)) (at start (done97)))
    :effect (and (at start (not (pending12))) (at end (done12)))
  )

  (:durative-action step13
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending13)) (at start (done81)) (at start (done86)))
    :effect (and (at start (not (pending13))) (at end (done13)))
  )

  (:durative-action step14
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending14)) (at start (done84)) (at start (done67)))
    :effect (and (at start (not (pending14))) (at end (done14)))
  )

  (:durative-action step15
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending15)) (at start (done78)) (at start (done97)))
    :effect (and (at start (not (pending15))) (at end (done15)))
  )

  (:durative-action step16
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending16)) (at start (done32)) (at start (done86)))
    :effect (and (at start (not (pending16))) (at end (done16)))
  )

  (:durative-action step17
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (pending17)))
    :effect (and (at start (not (pending17))) (at end (done17)))
  )

  (:durative-action step18
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pending18)) (at start (done46)))
    :effect (and (at start (not (pending18))) (at end (done18)))
  )

  (:durative-action step19
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending19)))
    :effect (and (at start (not (pending19))) (at end (done19)))
  )

  (:durative-action step20
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending20)) (at start (done21)) (at start (done34)) (at start (done74)) (at start (done92)))
    :effect (and (at start (not (pending20))) (at end (done20)))
  )

  (:durative-action step21
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending21)) (at start (done23)) (at start (done32)) (at start (done92)))
    :effect (and (at start (not (pending21))) (at end (done21)))
  )

  (:durative-action step22
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending22)) (at start (done33)) (at start (done80)))
    :effect (and (at start (not (pending22))) (at end (done22)))
  )

  (:durative-action step23
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending23)) (at start (done19)) (at start (done90)))
    :effect (and (at start (not (pending23))) (at end (done23)))
  )

  (:durative-action step24
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending24)) (at start (done26)) (at start (done73)) (at start (done85)) (at start (done100)))
    :effect (and (at start (not (pending24))) (at end (done24)))
  )

  (:durative-action step25
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending25)) (at start (done9)) (at start (done51)) (at start (done60)) (at start (done92)) (at start (done94)))
    :effect (and (at start (not (pending25))) (at end (done25)))
  )

  (:durative-action step26
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending26)))
    :effect (and (at start (not (pending26))) (at end (done26)))
  )

  (:durative-action step27
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pending27)) (at start (done12)) (at start (done13)) (at start (done29)) (at start (done37)) (at start (done63)))
    :effect (and (at start (not (pending27))) (at end (done27)))
  )

  (:durative-action step28
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending28)) (at start (done4)))
    :effect (and (at start (not (pending28))) (at end (done28)))
  )

  (:durative-action step29
    :parameters ()
    :duration (= ?duration 3)
    :condition (and (at start (pending29)) (at start (done21)) (at start (done32)) (at start (done57)) (at start (done66)) (at start (done100)))
    :effect (and (at start (not (pending29))) (at end (done29)))
  )

  (:durative-action step30
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending30)) (at start (done5)) (at start (done34)) (at start (done47)))
    :effect (and (at start (not (pending30))) (at end (done30)))
  )

  (:durative-action step31
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending31)) (at start (done17)))
    :effect (and (at start (not (pending31))) (at end (done31)))
  )

  (:durative-action step32
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending32)) (at start (done59)) (at start (done90)))
    :effect (and (at start (not (pending32))) (at end (done32)))
  )

  (:durative-action step33
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending33)) (at start (done57)))
    :effect (and (at start (not (pending33))) (at end (done33)))
  )

  (:durative-action step34
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending34)) (at start (done87)) (at start (done56)))
    :effect (and (at start (not (pending34))) (at end (done34)))
  )

  (:durative-action step35
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending35)) (at start (done17)) (at start (done32)))
    :effect (and (at start (not (pending35))) (at end (done35)))
  )

  (:durative-action step36
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending36)) (at start (done23)) (at start (done25)) (at start (done90)) (at start (done32)))
    :effect (and (at start (not (pending36))) (at end (done36)))
  )

  (:durative-action step37
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending37)) (at start (done9)))
    :effect (and (at start (not (pending37))) (at end (done37)))
  )

  (:durative-action step38
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending38)) (at start (done41)) (at start (done43)) (at start (done57)) (at start (done68)) (at start (done80)) (at start (done96)))
    :effect (and (at start (not (pending38))) (at end (done38)))
  )

  (:durative-action step39
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending39)) (at start (done19)) (at start (done79)) (at start (done99)))
    :effect (and (at start (not (pending39))) (at end (done39)))
  )

  (:durative-action step40
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending40)) (at start (done39)) (at start (done57)) (at start (done79)) (at start (done89)))
    :effect (and (at start (not (pending40))) (at end (done40)))
  )

  (:durative-action step41
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending41)) (at start (done69)) (at start (done4)))
    :effect (and (at start (not (pending41))) (at end (done41)))
  )

  (:durative-action step42
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending42)) (at start (done10)) (at start (done12)) (at start (done13)) (at start (done29)) (at start (done74)))
    :effect (and (at start (not (pending42))) (at end (done42)))
  )

  (:durative-action step43
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending43)) (at start (done90)))
    :effect (and (at start (not (pending43))) (at end (done43)))
  )

  (:durative-action step44
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending44)) (at start (done14)) (at start (done17)) (at start (done30)))
    :effect (and (at start (not (pending44))) (at end (done44)))
  )

  (:durative-action step45
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending45)) (at start (done12)))
    :effect (and (at start (not (pending45))) (at end (done45)))
  )

  (:durative-action step46
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending46)) (at start (done9)))
    :effect (and (at start (not (pending46))) (at end (done46)))
  )

  (:durative-action step47
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending47)))
    :effect (and (at start (not (pending47))) (at end (done47)))
  )

  (:durative-action step48
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending48)) (at start (done30)) (at start (done68)))
    :effect (and (at start (not (pending48))) (at end (done48)))
  )

  (:durative-action step49
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending49)) (at start (done26)) (at start (done37)) (at start (done39)) (at start (done69)) (at start (done89)) (at start (done92)))
    :effect (and (at start (not (pending49))) (at end (done49)))
  )

  (:durative-action step50
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending50)))
    :effect (and (at start (not (pending50))) (at end (done50)))
  )

  (:durative-action step51
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending51)) (at start (done62)) (at start (done78)) (at start (done79)))
    :effect (and (at start (not (pending51))) (at end (done51)))
  )

  (:durative-action step52
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending52)) (at start (done21)) (at start (done68)))
    :effect (and (at start (not (pending52))) (at end (done52)))
  )

  (:durative-action step53
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending53)) (at start (done23)) (at start (done50)))
    :effect (and (at start (not (pending53))) (at end (done53)))
  )

  (:durative-action step54
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending54)) (at start (done20)) (at start (done64)) (at start (done99)) (at start (done81)) (at start (done97)))
    :effect (and (at start (not (pending54))) (at end (done54)))
  )

  (:durative-action step55
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending55)) (at start (done60)) (at start (done63)))
    :effect (and (at start (not (pending55))) (at end (done55)))
  )

  (:durative-action step56
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending56)) (at start (done32)))
    :effect (and (at start (not (pending56))) (at end (done56)))
  )

  (:durative-action step57
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (pending57)) (at start (done74)) (at start (done79)))
    :effect (and (at start (not (pending57))) (at end (done57)))
  )

  (:durative-action step58
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending58)) (at start (done35)) (at start (done72)) (at start (done68)))
    :effect (and (at start (not (pending58))) (at end (done58)))
  )

  (:durative-action step59
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending59)) (at start (done9)))
    :effect (and (at start (not (pending59))) (at end (done59)))
  )

  (:durative-action step60
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending60)) (at start (done26)) (at start (done43)) (at start (done64)) (at start (done99)))
    :effect (and (at start (not (pending60))) (at end (done60)))
  )

  (:durative-action step61
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending61)) (at start (done3)) (at start (done30)) (at start (done65)) (at start (done78)) (at start (done87)))
    :effect (and (at start (not (pending61))) (at end (done61)))
  )

  (:durative-action step62
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending62)) (at start (done26)) (at start (done32)) (at start (done43)) (at start (done92)) (at start (done93)))
    :effect (and (at start (not (pending62))) (at end (done62)))
  )

  (:durative-action step63
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending63)))
    :effect (and (at start (not (pending63))) (at end (done63)))
  )

  (:durative-action step64
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending64)))
    :effect (and (at start (not (pending64))) (at end (done64)))
  )

  (:durative-action step65
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending65)) (at start (done74)) (at start (done92)))
    :effect (and (at start (not (pending65))) (at end (done65)))
  )

  (:durative-action step66
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pending66)))
    :effect (and (at start (not (pending66))) (at end (done66)))
  )

  (:durative-action step67
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending67)) (at start (done9)) (at start (done76)))
    :effect (and (at start (not (pending67))) (at end (done67)))
  )

  (:durative-action step68
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending68)) (at start (done18)) (at start (done46)))
    :effect (and (at start (not (pending68))) (at end (done68)))
  )

  (:durative-action step69
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending69)) (at start (done5)) (at start (done26)))
    :effect (and (at start (not (pending69))) (at end (done69)))
  )

  (:durative-action step70
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending70)) (at start (done68)) (at start (done74)))
    :effect (and (at start (not (pending70))) (at end (done70)))
  )

  (:durative-action step71
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending71)) (at start (done19)) (at start (done23)) (at start (done32)) (at start (done59)) (at start (done89)) (at start (done94)))
    :effect (and (at start (not (pending71))) (at end (done71)))
  )

  (:durative-action step72
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pending72)) (at start (done75)))
    :effect (and (at start (not (pending72))) (at end (done72)))
  )

  (:durative-action step73
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending73)))
    :effect (and (at start (not (pending73))) (at end (done73)))
  )

  (:durative-action step74
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending74)) (at start (done18)) (at start (done100)))
    :effect (and (at start (not (pending74))) (at end (done74)))
  )

  (:durative-action step75
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (pending75)) (at start (done17)) (at start (done31)))
    :effect (and (at start (not (pending75))) (at end (done75)))
  )

  (:durative-action step76
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending76)) (at start (done18)) (at start (done46)))
    :effect (and (at start (not (pending76))) (at end (done76)))
  )

  (:durative-action step77
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (pending77)))
    :effect (and (at start (not (pending77))) (at end (done77)))
  )

  (:durative-action step78
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending78)) (at start (done14)) (at start (done84)))
    :effect (and (at start (not (pending78))) (at end (done78)))
  )

  (:durative-action step79
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending79)) (at start (done35)))
    :effect (and (at start (not (pending79))) (at end (done79)))
  )

  (:durative-action step80
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending80)) (at start (done17)))
    :effect (and (at start (not (pending80))) (at end (done80)))
  )

  (:durative-action step81
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending81)) (at start (done73)) (at start (done87)) (at start (done88)))
    :effect (and (at start (not (pending81))) (at end (done81)))
  )

  (:durative-action step82
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending82)) (at start (done3)) (at start (done4)) (at start (done13)) (at start (done22)) (at start (done26)) (at start (done49)) (at start (done50)) (at start (done74)) (at start (done94)))
    :effect (and (at start (not (pending82))) (at end (done82)))
  )

  (:durative-action step83
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending83)) (at start (done35)) (at start (done52)) (at start (done78)) (at start (done98)) (at start (done77)))
    :effect (and (at start (not (pending83))) (at end (done83)))
  )

  (:durative-action step84
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pending84)) (at start (done30)) (at start (done35)) (at start (done47)))
    :effect (and (at start (not (pending84))) (at end (done84)))
  )

  (:durative-action step85
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending85)) (at start (done74)) (at start (done97)))
    :effect (and (at start (not (pending85))) (at end (done85)))
  )

  (:durative-action step86
    :parameters ()
    :duration (= ?duration 15)
    :condition (and (at start (pending86)) (at start (done99)))
    :effect (and (at start (not (pending86))) (at end (done86)))
  )

  (:durative-action step87
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending87)) (at start (done4)) (at start (done18)))
    :effect (and (at start (not (pending87))) (at end (done87)))
  )

  (:durative-action step88
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (pending88)) (at start (done28)))
    :effect (and (at start (not (pending88))) (at end (done88)))
  )

  (:durative-action step89
    :parameters ()
    :duration (= ?duration 20)
    :condition (and (at start (pending89)) (at start (done45)))
    :effect (and (at start (not (pending89))) (at end (done89)))
  )

  (:durative-action step90
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending90)) (at start (done5)) (at start (done63)) (at start (done100)))
    :effect (and (at start (not (pending90))) (at end (done90)))
  )

  (:durative-action step91
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending91)))
    :effect (and (at start (not (pending91))) (at end (done91)))
  )

  (:durative-action step92
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending92)) (at start (done73)) (at start (done91)))
    :effect (and (at start (not (pending92))) (at end (done92)))
  )

  (:durative-action step93
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending93)) (at start (done28)) (at start (done33)))
    :effect (and (at start (not (pending93))) (at end (done93)))
  )

  (:durative-action step94
    :parameters ()
    :duration (= ?duration 45)
    :condition (and (at start (pending94)) (at start (done13)) (at start (done27)) (at start (done61)) (at start (done65)))
    :effect (and (at start (not (pending94))) (at end (done94)))
  )

  (:durative-action step95
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (pending95)) (at start (done35)) (at start (done52)) (at start (done74)) (at start (done93)) (at start (done58)))
    :effect (and (at start (not (pending95))) (at end (done95)))
  )

  (:durative-action step96
    :parameters ()
    :duration (= ?duration 5)
    :condition (and (at start (pending96)) (at start (done23)) (at start (done75)))
    :effect (and (at start (not (pending96))) (at end (done96)))
  )

  (:durative-action step97
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (pending97)) (at start (done17)))
    :effect (and (at start (not (pending97))) (at end (done97)))
  )

  (:durative-action step98
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (pending98)) (at start (done22)) (at start (done80)))
    :effect (and (at start (not (pending98))) (at end (done98)))
  )

  (:durative-action step99
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (pending99)) (at start (done100)))
    :effect (and (at start (not (pending99))) (at end (done99)))
  )

  (:durative-action step100
    :parameters ()
    :duration (= ?duration 2)
    :condition (and (at start (pending100)))
    :effect (and (at start (not (pending100))) (at end (done100)))
  )
)
