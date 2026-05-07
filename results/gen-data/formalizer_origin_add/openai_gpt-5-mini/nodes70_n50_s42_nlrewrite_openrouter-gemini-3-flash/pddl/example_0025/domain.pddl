(define (domain restrain-dog)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (pending1) (pending2) (pending3) (pending4) (pending5) (pending6) (pending7) (pending8) (pending9) (pending10)
    (pending11) (pending12) (pending13) (pending14) (pending15) (pending16) (pending17) (pending18) (pending19) (pending20)
    (pending21) (pending22) (pending23) (pending24) (pending25) (pending26) (pending27) (pending28) (pending29) (pending30)
    (pending31) (pending32) (pending33) (pending34) (pending35) (pending36) (pending37) (pending38) (pending39) (pending40)
    (pending41) (pending42) (pending43) (pending44) (pending45) (pending46) (pending47) (pending48) (pending49) (pending50)
    (pending51) (pending52) (pending53) (pending54) (pending55) (pending56) (pending57) (pending58) (pending59) (pending60)
    (pending61) (pending62) (pending63) (pending64) (pending65) (pending66) (pending67) (pending68) (pending69) (pending70)

    (stepdone1) (stepdone2) (stepdone3) (stepdone4) (stepdone5) (stepdone6) (stepdone7) (stepdone8) (stepdone9) (stepdone10)
    (stepdone11) (stepdone12) (stepdone13) (stepdone14) (stepdone15) (stepdone16) (stepdone17) (stepdone18) (stepdone19) (stepdone20)
    (stepdone21) (stepdone22) (stepdone23) (stepdone24) (stepdone25) (stepdone26) (stepdone27) (stepdone28) (stepdone29) (stepdone30)
    (stepdone31) (stepdone32) (stepdone33) (stepdone34) (stepdone35) (stepdone36) (stepdone37) (stepdone38) (stepdone39) (stepdone40)
    (stepdone41) (stepdone42) (stepdone43) (stepdone44) (stepdone45) (stepdone46) (stepdone47) (stepdone48) (stepdone49) (stepdone50)
    (stepdone51) (stepdone52) (stepdone53) (stepdone54) (stepdone55) (stepdone56) (stepdone57) (stepdone58) (stepdone59) (stepdone60)
    (stepdone61) (stepdone62) (stepdone63) (stepdone64) (stepdone65) (stepdone66) (stepdone67) (stepdone68) (stepdone69) (stepdone70)

    (done1) (done2) (done3) (done4) (done5) (done6) (done7) (done8) (done9) (done10)
    (done11) (done12) (done13) (done14) (done15) (done16) (done17) (done18) (done19) (done20)
    (done21) (done22) (done23) (done24) (done25) (done26) (done27) (done28) (done29) (done30)
    (done31) (done32) (done33) (done34) (done35) (done36) (done37) (done38) (done39) (done40)
    (done41) (done42) (done43) (done44) (done45) (done46) (done47) (done48) (done49) (done50)
    (done51) (done52) (done53) (done54) (done55) (done56) (done57) (done58) (done59) (done60)
    (done61) (done62) (done63) (done64) (done65) (done66) (done67) (done68) (done69) (done70)
  )

  (:durative-action do-step1
    :duration (= ?duration 30)
    :condition (at start (pending1))
    :effect (and (at start (not (pending1))) (at end (stepdone1)) (at end (done1))))

  (:durative-action do-step2
    :duration (= ?duration 300)
    :condition (and (at start (pending2)) (at start (done20)))
    :effect (and (at start (not (pending2))) (at end (stepdone2)) (at end (done2))))

  (:durative-action do-step3
    :duration (= ?duration 60)
    :condition (and (at start (pending3)) (at start (done11)) (at start (done33)) (at start (done46)) (at start (done69)))
    :effect (and (at start (not (pending3))) (at end (stepdone3)) (at end (done3))))

  (:durative-action do-step4
    :duration (= ?duration 10)
    :condition (and (at start (pending4)) (at start (done60)))
    :effect (and (at start (not (pending4))) (at end (stepdone4)) (at end (done4))))

  (:durative-action do-step5
    :duration (= ?duration 120)
    :condition (and (at start (pending5)) (at start (done61)))
    :effect (and (at start (not (pending5))) (at end (stepdone5)) (at end (done5))))

  (:durative-action do-step6
    :duration (= ?duration 20)
    :condition (and (at start (pending6)) (at start (done53)) (at start (done59)) (at start (done34)))
    :effect (and (at start (not (pending6))) (at end (stepdone6)) (at end (done6))))

  (:durative-action do-step7
    :duration (= ?duration 15)
    :condition (at start (pending7))
    :effect (and (at start (not (pending7))) (at end (stepdone7)) (at end (done7))))

  (:durative-action do-step8
    :duration (= ?duration 10)
    :condition (and (at start (pending8)) (at start (done1)) (at start (done4)) (at start (done13)) (at start (done36)))
    :effect (and (at start (not (pending8))) (at end (stepdone8)) (at end (done8))))

  (:durative-action do-step9
    :duration (= ?duration 45)
    :condition (and (at start (pending9)) (at start (done36)) (at start (done52)) (at start (done67)))
    :effect (and (at start (not (pending9))) (at end (stepdone9)) (at end (done9))))

  (:durative-action do-step10
    :duration (= ?duration 15)
    :condition (at start (pending10))
    :effect (and (at start (not (pending10))) (at end (stepdone10)) (at end (done10))))

  (:durative-action do-step11
    :duration (= ?duration 10)
    :condition (and (at start (pending11)) (at start (done2)) (at start (done19)) (at start (done46)))
    :effect (and (at start (not (pending11))) (at end (stepdone11)) (at end (done11))))

  (:durative-action do-step12
    :duration (= ?duration 30)
    :condition (and (at start (pending12)) (at start (done42)))
    :effect (and (at start (not (pending12))) (at end (stepdone12)) (at end (done12))))

  (:durative-action do-step13
    :duration (= ?duration 20)
    :condition (and (at start (pending13)) (at start (done25)))
    :effect (and (at start (not (pending13))) (at end (stepdone13)) (at end (done13))))

  (:durative-action do-step14
    :duration (= ?duration 5)
    :condition (and (at start (pending14)) (at start (done26)))
    :effect (and (at start (not (pending14))) (at end (stepdone14)) (at end (done14))))

  (:durative-action do-step15
    :duration (= ?duration 30)
    :condition (and (at start (pending15)) (at start (done2)) (at start (done26)) (at start (done65)) (at start (done66)))
    :effect (and (at start (not (pending15))) (at end (stepdone15)) (at end (done15))))

  (:durative-action do-step16
    :duration (= ?duration 60)
    :condition (and (at start (pending16)) (at start (done50)) (at start (done57)) (at start (done60)))
    :effect (and (at start (not (pending16))) (at end (stepdone16)) (at end (done16))))

  (:durative-action do-step17
    :duration (= ?duration 60)
    :condition (and (at start (pending17)) (at start (done25)))
    :effect (and (at start (not (pending17))) (at end (stepdone17)) (at end (done17))))

  (:durative-action do-step18
    :duration (= ?duration 20)
    :condition (and (at start (pending18)) (at start (done15)))
    :effect (and (at start (not (pending18))) (at end (stepdone18)) (at end (done18))))

  (:durative-action do-step19
    :duration (= ?duration 120)
    :condition (and (at start (pending19)) (at start (done2)))
    :effect (and (at start (not (pending19))) (at end (stepdone19)) (at end (done19))))

  (:durative-action do-step20
    :duration (= ?duration 180)
    :condition (at start (pending20))
    :effect (and (at start (not (pending20))) (at end (stepdone20)) (at end (done20))))

  (:durative-action do-step21
    :duration (= ?duration 5)
    :condition (and (at start (pending21)) (at start (done24)) (at start (done68)))
    :effect (and (at start (not (pending21))) (at end (stepdone21)) (at end (done21))))

  (:durative-action do-step22
    :duration (= ?duration 240)
    :condition (at start (pending22))
    :effect (and (at start (not (pending22))) (at end (stepdone22)) (at end (done22))))

  (:durative-action do-step23
    :duration (= ?duration 10)
    :condition (and (at start (pending23)) (at start (done2)) (at start (done68)))
    :effect (and (at start (not (pending23))) (at end (stepdone23)) (at end (done23))))

  (:durative-action do-step24
    :duration (= ?duration 60)
    :condition (at start (pending24))
    :effect (and (at start (not (pending24))) (at end (stepdone24)) (at end (done24))))

  (:durative-action do-step25
    :duration (= ?duration 10)
    :condition (and (at start (pending25)) (at start (done10)))
    :effect (and (at start (not (pending25))) (at end (stepdone25)) (at end (done25))))

  (:durative-action do-step26
    :duration (= ?duration 20)
    :condition (and (at start (pending26)) (at start (done2)))
    :effect (and (at start (not (pending26))) (at end (stepdone26)) (at end (done26))))

  (:durative-action do-step27
    :duration (= ?duration 15)
    :condition (and (at start (pending27)) (at start (done25)) (at start (done45)) (at start (done60)))
    :effect (and (at start (not (pending27))) (at end (stepdone27)) (at end (done27))))

  (:durative-action do-step28
    :duration (= ?duration 10)
    :condition (and (at start (pending28)) (at start (done23)) (at start (done37)) (at start (done63)))
    :effect (and (at start (not (pending28))) (at end (stepdone28)) (at end (done28))))

  (:durative-action do-step29
    :duration (= ?duration 60)
    :condition (and (at start (pending29)) (at start (done3)) (at start (done43)) (at start (done44)))
    :effect (and (at start (not (pending29))) (at end (stepdone29)) (at end (done29))))

  (:durative-action do-step30
    :duration (= ?duration 60)
    :condition (and (at start (pending30)) (at start (done10)))
    :effect (and (at start (not (pending30))) (at end (stepdone30)) (at end (done30))))

  (:durative-action do-step31
    :duration (= ?duration 120)
    :condition (and (at start (pending31)) (at start (done11)) (at start (done23)) (at start (done35)) (at start (done55)) (at start (done65)))
    :effect (and (at start (not (pending31))) (at end (stepdone31)) (at end (done31))))

  (:durative-action do-step32
    :duration (= ?duration 30)
    :condition (and (at start (pending32)) (at start (done45)) (at start (done50)))
    :effect (and (at start (not (pending32))) (at end (stepdone32)) (at end (done32))))

  (:durative-action do-step33
    :duration (= ?duration 120)
    :condition (at start (pending33))
    :effect (and (at start (not (pending33))) (at end (stepdone33)) (at end (done33))))

  (:durative-action do-step34
    :duration (= ?duration 180)
    :condition (and (at start (pending34)) (at start (done11)) (at start (done37)) (at start (done48)) (at start (done66)) (at start (done70)))
    :effect (and (at start (not (pending34))) (at end (stepdone34)) (at end (done34))))

  (:durative-action do-step35
    :duration (= ?duration 60)
    :condition (at start (pending35))
    :effect (and (at start (not (pending35))) (at end (stepdone35)) (at end (done35))))

  (:durative-action do-step36
    :duration (= ?duration 300)
    :condition (and (at start (pending36)) (at start (done61)))
    :effect (and (at start (not (pending36))) (at end (stepdone36)) (at end (done36))))

  (:durative-action do-step37
    :duration (= ?duration 600)
    :condition (at start (pending37))
    :effect (and (at start (not (pending37))) (at end (stepdone37)) (at end (done37))))

  (:durative-action do-step38
    :duration (= ?duration 120)
    :condition (at start (pending38))
    :effect (and (at start (not (pending38))) (at end (stepdone38)) (at end (done38))))

  (:durative-action do-step39
    :duration (= ?duration 15)
    :condition (and (at start (pending39)) (at start (done53)) (at start (done66)))
    :effect (and (at start (not (pending39))) (at end (stepdone39)) (at end (done39))))

  (:durative-action do-step40
    :duration (= ?duration 5)
    :condition (and (at start (pending40)) (at start (done4)) (at start (done20)) (at start (done50)) (at start (done63)))
    :effect (and (at start (not (pending40))) (at end (stepdone40)) (at end (done40))))

  (:durative-action do-step41
    :duration (= ?duration 10)
    :condition (and (at start (pending41)) (at start (done8)) (at start (done25)))
    :effect (and (at start (not (pending41))) (at end (stepdone41)) (at end (done41))))

  (:durative-action do-step42
    :duration (= ?duration 60)
    :condition (and (at start (pending42)) (at start (done53)))
    :effect (and (at start (not (pending42))) (at end (stepdone42)) (at end (done42))))

  (:durative-action do-step43
    :duration (= ?duration 30)
    :condition (at start (pending43))
    :effect (and (at start (not (pending43))) (at end (stepdone43)) (at end (done43))))

  (:durative-action do-step44
    :duration (= ?duration 10)
    :condition (and (at start (pending44)) (at start (done11)) (at start (done15)) (at start (done20)) (at start (done42)) (at start (done46)) (at start (done49)) (at start (done68)))
    :effect (and (at start (not (pending44))) (at end (stepdone44)) (at end (done44))))

  (:durative-action do-step45
    :duration (= ?duration 240)
    :condition (at start (pending45))
    :effect (and (at start (not (pending45))) (at end (stepdone45)) (at end (done45))))

  (:durative-action do-step46
    :duration (= ?duration 120)
    :condition (and (at start (pending46)) (at start (done36)))
    :effect (and (at start (not (pending46))) (at end (stepdone46)) (at end (done46))))

  (:durative-action do-step47
    :duration (= ?duration 30)
    :condition (and (at start (pending47)) (at start (done21)) (at start (done30)))
    :effect (and (at start (not (pending47))) (at end (stepdone47)) (at end (done47))))

  (:durative-action do-step48
    :duration (= ?duration 120)
    :condition (and (at start (pending48)) (at start (done30)) (at start (done45)) (at start (done50)) (at start (done47)))
    :effect (and (at start (not (pending48))) (at end (stepdone48)) (at end (done48))))

  (:durative-action do-step49
    :duration (= ?duration 120)
    :condition (and (at start (pending49)) (at start (done12)) (at start (done42)) (at start (done45)))
    :effect (and (at start (not (pending49))) (at end (stepdone49)) (at end (done49))))

  (:durative-action do-step50
    :duration (= ?duration 5)
    :condition (and (at start (pending50)) (at start (done2)) (at start (done10)) (at start (done39)))
    :effect (and (at start (not (pending50))) (at end (stepdone50)) (at end (done50))))

  (:durative-action do-step51
    :duration (= ?duration 60)
    :condition (and (at start (pending51)) (at start (done7)) (at start (done14)) (at start (done18)) (at start (done33)) (at start (done37)) (at start (done45)) (at start (done46)) (at start (done68)))
    :effect (and (at start (not (pending51))) (at end (stepdone51)) (at end (done51))))

  (:durative-action do-step52
    :duration (= ?duration 180)
    :condition (and (at start (pending52)) (at start (done38)))
    :effect (and (at start (not (pending52))) (at end (stepdone52)) (at end (done52))))

  (:durative-action do-step53
    :duration (= ?duration 30)
    :condition (at start (pending53))
    :effect (and (at start (not (pending53))) (at end (stepdone53)) (at end (done53))))

  (:durative-action do-step54
    :duration (= ?duration 5)
    :condition (and (at start (pending54)) (at start (done11)) (at start (done35)) (at start (done37)) (at start (done57)))
    :effect (and (at start (not (pending54))) (at end (stepdone54)) (at end (done54))))

  (:durative-action do-step55
    :duration (= ?duration 5)
    :condition (and (at start (pending55)) (at start (done15)) (at start (done35)) (at start (done41)) (at start (done68)))
    :effect (and (at start (not (pending55))) (at end (stepdone55)) (at end (done55))))

  (:durative-action do-step56
    :duration (= ?duration 5)
    :condition (and (at start (pending56)) (at start (done28)) (at start (done55)))
    :effect (and (at start (not (pending56))) (at end (stepdone56)) (at end (done56))))

  (:durative-action do-step57
    :duration (= ?duration 60)
    :condition (and (at start (pending57)) (at start (done2)) (at start (done61)) (at start (done70)))
    :effect (and (at start (not (pending57))) (at end (stepdone57)) (at end (done57))))

  (:durative-action do-step58
    :duration (= ?duration 300)
    :condition (and (at start (pending58)) (at start (done22)))
    :effect (and (at start (not (pending58))) (at end (stepdone58)) (at end (done58))))

  (:durative-action do-step59
    :duration (= ?duration 20)
    :condition (and (at start (pending59)) (at start (done2)) (at start (done25)) (at start (done35)) (at start (done52)) (at start (done65)))
    :effect (and (at start (not (pending59))) (at end (stepdone59)) (at end (done59))))

  (:durative-action do-step60
    :duration (= ?duration 30)
    :condition (and (at start (pending60)) (at start (done35)))
    :effect (and (at start (not (pending60))) (at end (stepdone60)) (at end (done60))))

  (:durative-action do-step61
    :duration (= ?duration 600)
    :condition (at start (pending61))
    :effect (and (at start (not (pending61))) (at end (stepdone61)) (at end (done61))))

  (:durative-action do-step62
    :duration (= ?duration 30)
    :condition (and (at start (pending62)) (at start (done19)) (at start (done35)) (at start (done36)) (at start (done65)))
    :effect (and (at start (not (pending62))) (at end (stepdone62)) (at end (done62))))

  (:durative-action do-step63
    :duration (= ?duration 10)
    :condition (and (at start (pending63)) (at start (done3)) (at start (done13)) (at start (done34)) (at start (done69)))
    :effect (and (at start (not (pending63))) (at end (stepdone63)) (at end (done63))))

  (:durative-action do-step64
    :duration (= ?duration 15)
    :condition (and (at start (pending64)) (at start (done6)) (at start (done11)) (at start (done23)) (at start (done27)) (at start (done60)) (at start (done61)))
    :effect (and (at start (not (pending64))) (at end (stepdone64)) (at end (done64))))

  (:durative-action do-step65
    :duration (= ?duration 60)
    :condition (and (at start (pending65)) (at start (done19)))
    :effect (and (at start (not (pending65))) (at end (stepdone65)) (at end (done65))))

  (:durative-action do-step66
    :duration (= ?duration 60)
    :condition (and (at start (pending66)) (at start (done37)))
    :effect (and (at start (not (pending66))) (at end (stepdone66)) (at end (done66))))

  (:durative-action do-step67
    :duration (= ?duration 10)
    :condition (and (at start (pending67)) (at start (done22)) (at start (done36)) (at start (done38)) (at start (done68)))
    :effect (and (at start (not (pending67))) (at end (stepdone67)) (at end (done67))))

  (:durative-action do-step68
    :duration (= ?duration 120)
    :condition (and (at start (pending68)) (at start (done19)) (at start (done38)))
    :effect (and (at start (not (pending68))) (at end (stepdone68)) (at end (done68))))

  (:durative-action do-step69
    :duration (= ?duration 10)
    :condition (and (at start (pending69)) (at start (done20)) (at start (done52)))
    :effect (and (at start (not (pending69))) (at end (stepdone69)) (at end (done69))))

  (:durative-action do-step70
    :duration (= ?duration 60)
    :condition (at start (pending70))
    :effect (and (at start (not (pending70))) (at end (stepdone70)) (at end (done70))))
)
