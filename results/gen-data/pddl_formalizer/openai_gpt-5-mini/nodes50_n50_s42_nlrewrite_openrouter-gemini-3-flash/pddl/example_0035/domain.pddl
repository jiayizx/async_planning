(define (domain buy_camera)
  (:requirements :typing :durative-actions)
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

    (step_done1) (step_done2) (step_done3) (step_done4) (step_done5)
    (step_done6) (step_done7) (step_done8) (step_done9) (step_done10)
    (step_done11) (step_done12) (step_done13) (step_done14) (step_done15)
    (step_done16) (step_done17) (step_done18) (step_done19) (step_done20)
    (step_done21) (step_done22) (step_done23) (step_done24) (step_done25)
    (step_done26) (step_done27) (step_done28) (step_done29) (step_done30)
    (step_done31) (step_done32) (step_done33) (step_done34) (step_done35)
    (step_done36) (step_done37) (step_done38) (step_done39) (step_done40)
    (step_done41) (step_done42) (step_done43) (step_done44) (step_done45)
    (step_done46) (step_done47) (step_done48) (step_done49) (step_done50)

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
  )

  (:durative-action do_step1
    :duration (= ?duration 7200)
    :condition (at start (pending1))
    :effect (and (at start (not (pending1))) (at end (step_done1)) (at end (done1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 86400)
    :condition (and (at start (pending2)) (at start (done8)) (at start (done16)))
    :effect (and (at start (not (pending2))) (at end (step_done2)) (at end (done2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (at start (pending3))
    :effect (and (at start (not (pending3))) (at end (step_done3)) (at end (done3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 120)
    :condition (and (at start (pending4)) (at start (done27)) (at start (done45)))
    :effect (and (at start (not (pending4))) (at end (step_done4)) (at end (done4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 10800)
    :condition (and (at start (pending5)) (at start (done3)) (at start (done11)))
    :effect (and (at start (not (pending5))) (at end (step_done5)) (at end (done5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 900)
    :condition (and (at start (pending6)) (at start (done18)))
    :effect (and (at start (not (pending6))) (at end (step_done6)) (at end (done6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 2700)
    :condition (and (at start (pending7)) (at start (done36)))
    :effect (and (at start (not (pending7))) (at end (step_done7)) (at end (done7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 1800)
    :condition (at start (pending8))
    :effect (and (at start (not (pending8))) (at end (step_done8)) (at end (done8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 86400)
    :condition (and (at start (pending9)) (at start (done3)) (at start (done40)))
    :effect (and (at start (not (pending9))) (at end (step_done9)) (at end (done9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 7200)
    :condition (and (at start (pending10)) (at start (done1)))
    :effect (and (at start (not (pending10))) (at end (step_done10)) (at end (done10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 14400)
    :condition (and (at start (pending11)) (at start (done19)))
    :effect (and (at start (not (pending11))) (at end (step_done11)) (at end (done11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 3600)
    :condition (and (at start (pending12)) (at start (done20)) (at start (done35)))
    :effect (and (at start (not (pending12))) (at end (step_done12)) (at end (done12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 1800)
    :condition (and (at start (pending13)) (at start (done6)) (at start (done21)) (at start (done25)) (at start (done46)))
    :effect (and (at start (not (pending13))) (at end (step_done13)) (at end (done13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 600)
    :condition (and (at start (pending14)) (at start (done7)) (at start (done16)) (at start (done13)))
    :effect (and (at start (not (pending14))) (at end (step_done14)) (at end (done14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 3600)
    :condition (and (at start (pending15)) (at start (done36)))
    :effect (and (at start (not (pending15))) (at end (step_done15)) (at end (done15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 259200)
    :condition (and (at start (pending16)) (at start (done30)))
    :effect (and (at start (not (pending16))) (at end (step_done16)) (at end (done16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (and (at start (pending17)) (at start (done50)))
    :effect (and (at start (not (pending17))) (at end (step_done17)) (at end (done17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 7200)
    :condition (and (at start (pending18)) (at start (done3)) (at start (done8)) (at start (done19)) (at start (done25)))
    :effect (and (at start (not (pending18))) (at end (step_done18)) (at end (done18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 172800)
    :condition (at start (pending19))
    :effect (and (at start (not (pending19))) (at end (step_done19)) (at end (done19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 3600)
    :condition (and (at start (pending20)) (at start (done36)) (at start (done37)))
    :effect (and (at start (not (pending20))) (at end (step_done20)) (at end (done20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 1200)
    :condition (and (at start (pending21)) (at start (done39)) (at start (done45)))
    :effect (and (at start (not (pending21))) (at end (step_done21)) (at end (done21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 1800)
    :condition (and (at start (pending22)) (at start (done7)))
    :effect (and (at start (not (pending22))) (at end (step_done22)) (at end (done22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 3600)
    :condition (at start (pending23))
    :effect (and (at start (not (pending23))) (at end (step_done23)) (at end (done23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (and (at start (pending24)) (at start (done48)))
    :effect (and (at start (not (pending24))) (at end (step_done24)) (at end (done24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 3600)
    :condition (at start (pending25))
    :effect (and (at start (not (pending25))) (at end (step_done25)) (at end (done25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 1200)
    :condition (and (at start (pending26)) (at start (done11)) (at start (done20)))
    :effect (and (at start (not (pending26))) (at end (step_done26)) (at end (done26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (and (at start (pending27)) (at start (done2)) (at start (done22)) (at start (done43)) (at start (done48)) (at start (done13)))
    :effect (and (at start (not (pending27))) (at end (step_done27)) (at end (done27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 7200)
    :condition (and (at start (pending28)) (at start (done3)))
    :effect (and (at start (not (pending28))) (at end (step_done28)) (at end (done28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 600)
    :condition (and (at start (pending29)) (at start (done1)) (at start (done3)) (at start (done50)))
    :effect (and (at start (not (pending29))) (at end (step_done29)) (at end (done29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 3600)
    :condition (at start (pending30))
    :effect (and (at start (not (pending30))) (at end (step_done30)) (at end (done30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 900)
    :condition (and (at start (pending31)) (at start (done32)))
    :effect (and (at start (not (pending31))) (at end (step_done31)) (at end (done31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 7200)
    :condition (at start (pending32))
    :effect (and (at start (not (pending32))) (at end (step_done32)) (at end (done32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 604800)
    :condition (and (at start (pending33)) (at start (done8)))
    :effect (and (at start (not (pending33))) (at end (step_done33)) (at end (done33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 2700)
    :condition (and (at start (pending34)) (at start (done16)) (at start (done18)))
    :effect (and (at start (not (pending34))) (at end (step_done34)) (at end (done34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 1800)
    :condition (and (at start (pending35)) (at start (done9)) (at start (done26)))
    :effect (and (at start (not (pending35))) (at end (step_done35)) (at end (done35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 7200)
    :condition (and (at start (pending36)) (at start (done40)) (at start (done42)))
    :effect (and (at start (not (pending36))) (at end (step_done36)) (at end (done36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 1800)
    :condition (and (at start (pending37)) (at start (done17)))
    :effect (and (at start (not (pending37))) (at end (step_done37)) (at end (done37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 900)
    :condition (and (at start (pending38)) (at start (done44)))
    :effect (and (at start (not (pending38))) (at end (step_done38)) (at end (done38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 600)
    :condition (at start (pending39))
    :effect (and (at start (not (pending39))) (at end (step_done39)) (at end (done39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 86400)
    :condition (at start (pending40))
    :effect (and (at start (not (pending40))) (at end (step_done40)) (at end (done40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 3600)
    :condition (and (at start (pending41)) (at start (done11)) (at start (done16)))
    :effect (and (at start (not (pending41))) (at end (step_done41)) (at end (done41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 3600)
    :condition (and (at start (pending42)) (at start (done40)))
    :effect (and (at start (not (pending42))) (at end (step_done42)) (at end (done42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 7200)
    :condition (and (at start (pending43)) (at start (done3)))
    :effect (and (at start (not (pending43))) (at end (step_done43)) (at end (done43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 600)
    :condition (and (at start (pending44)) (at start (done23)) (at start (done32)))
    :effect (and (at start (not (pending44))) (at end (step_done44)) (at end (done44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 1800)
    :condition (and (at start (pending45)) (at start (done32)) (at start (done40)))
    :effect (and (at start (not (pending45))) (at end (step_done45)) (at end (done45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 60)
    :condition (at start (pending46))
    :effect (and (at start (not (pending46))) (at end (step_done46)) (at end (done46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 300)
    :condition (and (at start (pending47)) (at start (done31)) (at start (done43)))
    :effect (and (at start (not (pending47))) (at end (step_done47)) (at end (done47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 10800)
    :condition (at start (pending48))
    :effect (and (at start (not (pending48))) (at end (step_done48)) (at end (done48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 1200)
    :condition (and (at start (pending49)) (at start (done24)) (at start (done31)) (at start (done37)) (at start (done43)))
    :effect (and (at start (not (pending49))) (at end (step_done49)) (at end (done49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 3600)
    :condition (at start (pending50))
    :effect (and (at start (not (pending50))) (at end (step_done50)) (at end (done50)))
  )
)
