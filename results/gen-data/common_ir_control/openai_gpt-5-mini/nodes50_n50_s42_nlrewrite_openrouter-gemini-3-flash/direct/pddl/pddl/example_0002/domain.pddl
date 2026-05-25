(define (domain wonton_wrappers)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (finished1)
    (finished2)
    (finished3)
    (finished4)
    (finished5)
    (finished6)
    (finished7)
    (finished8)
    (finished9)
    (finished10)
    (finished11)
    (finished12)
    (finished13)
    (finished14)
    (finished15)
    (finished16)
    (finished17)
    (finished18)
    (finished19)
    (finished20)
    (finished21)
    (finished22)
    (finished23)
    (finished24)
    (finished25)
    (finished26)
    (finished27)
    (finished28)
    (finished29)
    (finished30)
    (finished31)
    (finished32)
    (finished33)
    (finished34)
    (finished35)
    (finished36)
    (finished37)
    (finished38)
    (finished39)
    (finished40)
    (finished41)
    (finished42)
    (finished43)
    (finished44)
    (finished45)
    (finished46)
    (finished47)
    (finished48)
    (finished49)
    (finished50)
  )

  (:durative-action do_step1
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step1)) (at start (finished14)) (at start (finished18)) (at start (finished36)))
    :effect (and (at start (not (step_pending step1))) (at end (step_done step1)) (at end (finished1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 120)
    :condition (at start (step_pending step2))
    :effect (and (at start (not (step_pending step2))) (at end (step_done step2)) (at end (finished2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 60)
    :condition (at start (step_pending step3))
    :effect (and (at start (not (step_pending step3))) (at end (step_done step3)) (at end (finished3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step4)) (at start (finished13)) (at start (finished39)) (at start (finished50)))
    :effect (and (at start (not (step_pending step4))) (at end (step_done step4)) (at end (finished4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (finished6)) (at start (finished30)) (at start (finished32)) (at start (finished39)))
    :effect (and (at start (not (step_pending step5))) (at end (step_done step5)) (at end (finished5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step6)) (at start (finished33)) (at start (finished46)) (at start (finished48)))
    :effect (and (at start (not (step_pending step6))) (at end (step_done step6)) (at end (finished6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step7)) (at start (finished15)))
    :effect (and (at start (not (step_pending step7))) (at end (step_done step7)) (at end (finished7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (at start (step_pending step8))
    :effect (and (at start (not (step_pending step8))) (at end (step_done step8)) (at end (finished8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step9)) (at start (finished10)) (at start (finished14)) (at start (finished21)) (at start (finished42)))
    :effect (and (at start (not (step_pending step9))) (at end (step_done step9)) (at end (finished9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (finished8)) (at start (finished30)))
    :effect (and (at start (not (step_pending step10))) (at end (step_done step10)) (at end (finished10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step11)) (at start (finished30)) (at start (finished34)) (at start (finished50)))
    :effect (and (at start (not (step_pending step11))) (at end (step_done step11)) (at end (finished11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step12)) (at start (finished28)))
    :effect (and (at start (not (step_pending step12))) (at end (step_done step12)) (at end (finished12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (finished18)) (at start (finished49)))
    :effect (and (at start (not (step_pending step13))) (at end (step_done step13)) (at end (finished13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step14)) (at start (finished2)))
    :effect (and (at start (not (step_pending step14))) (at end (step_done step14)) (at end (finished14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step15)) (at start (finished13)) (at start (finished34)) (at start (finished43)))
    :effect (and (at start (not (step_pending step15))) (at end (step_done step15)) (at end (finished15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step16)) (at start (finished22)) (at start (finished36)) (at start (finished38)))
    :effect (and (at start (not (step_pending step16))) (at end (step_done step16)) (at end (finished16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step17)) (at start (finished37)))
    :effect (and (at start (not (step_pending step17))) (at end (step_done step17)) (at end (finished17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step18)) (at start (finished28)) (at start (finished49)))
    :effect (and (at start (not (step_pending step18))) (at end (step_done step18)) (at end (finished18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 180)
    :condition (at start (step_pending step19))
    :effect (and (at start (not (step_pending step19))) (at end (step_done step19)) (at end (finished19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step20)) (at start (finished1)) (at start (finished12)))
    :effect (and (at start (not (step_pending step20))) (at end (step_done step20)) (at end (finished20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step21)) (at start (finished25)) (at start (finished27)))
    :effect (and (at start (not (step_pending step21))) (at end (step_done step21)) (at end (finished21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step22)) (at start (finished3)))
    :effect (and (at start (not (step_pending step22))) (at end (step_done step22)) (at end (finished22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step23)) (at start (finished11)))
    :effect (and (at start (not (step_pending step23))) (at end (step_done step23)) (at end (finished23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step24)) (at start (finished31)) (at start (finished39)))
    :effect (and (at start (not (step_pending step24))) (at end (step_done step24)) (at end (finished24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step25)) (at start (finished7)) (at start (finished11)))
    :effect (and (at start (not (step_pending step25))) (at end (step_done step25)) (at end (finished25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step26)) (at start (finished47)))
    :effect (and (at start (not (step_pending step26))) (at end (step_done step26)) (at end (finished26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step27)) (at start (finished4)) (at start (finished37)))
    :effect (and (at start (not (step_pending step27))) (at end (step_done step27)) (at end (finished27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step28)) (at start (finished8)))
    :effect (and (at start (not (step_pending step28))) (at end (step_done step28)) (at end (finished28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step29)) (at start (finished3)))
    :effect (and (at start (not (step_pending step29))) (at end (step_done step29)) (at end (finished29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (at start (step_pending step30))
    :effect (and (at start (not (step_pending step30))) (at end (step_done step30)) (at end (finished30)))
  )

  (:durative-action do_step31
    :duration (= ?duration 40)
    :condition (at start (step_pending step31))
    :effect (and (at start (not (step_pending step31))) (at end (step_done step31)) (at end (finished31)))
  )

  (:durative-action do_step32
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step32)) (at start (finished17)) (at start (finished34)))
    :effect (and (at start (not (step_pending step32))) (at end (step_done step32)) (at end (finished32)))
  )

  (:durative-action do_step33
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step33)) (at start (finished10)) (at start (finished19)) (at start (finished23)))
    :effect (and (at start (not (step_pending step33))) (at end (step_done step33)) (at end (finished33)))
  )

  (:durative-action do_step34
    :duration (= ?duration 120)
    :condition (at start (step_pending step34))
    :effect (and (at start (not (step_pending step34))) (at end (step_done step34)) (at end (finished34)))
  )

  (:durative-action do_step35
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step35)) (at start (finished22)) (at start (finished34)))
    :effect (and (at start (not (step_pending step35))) (at end (step_done step35)) (at end (finished35)))
  )

  (:durative-action do_step36
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step36)) (at start (finished49)))
    :effect (and (at start (not (step_pending step36))) (at end (step_done step36)) (at end (finished36)))
  )

  (:durative-action do_step37
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step37)) (at start (finished30)) (at start (finished50)))
    :effect (and (at start (not (step_pending step37))) (at end (step_done step37)) (at end (finished37)))
  )

  (:durative-action do_step38
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step38)) (at start (finished11)) (at start (finished45)) (at start (finished31)))
    :effect (and (at start (not (step_pending step38))) (at end (step_done step38)) (at end (finished38)))
  )

  (:durative-action do_step39
    :duration (= ?duration 360)
    :condition (at start (step_pending step39))
    :effect (and (at start (not (step_pending step39))) (at end (step_done step39)) (at end (finished39)))
  )

  (:durative-action do_step40
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step40)) (at start (finished36)) (at start (finished37)))
    :effect (and (at start (not (step_pending step40))) (at end (step_done step40)) (at end (finished40)))
  )

  (:durative-action do_step41
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step41)) (at start (finished20)) (at start (finished50)))
    :effect (and (at start (not (step_pending step41))) (at end (step_done step41)) (at end (finished41)))
  )

  (:durative-action do_step42
    :duration (= ?duration 120)
    :condition (at start (step_pending step42))
    :effect (and (at start (not (step_pending step42))) (at end (step_done step42)) (at end (finished42)))
  )

  (:durative-action do_step43
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step43)) (at start (finished39)))
    :effect (and (at start (not (step_pending step43))) (at end (step_done step43)) (at end (finished43)))
  )

  (:durative-action do_step44
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step44)) (at start (finished2)) (at start (finished10)) (at start (finished13)) (at start (finished34)) (at start (finished40)))
    :effect (and (at start (not (step_pending step44))) (at end (step_done step44)) (at end (finished44)))
  )

  (:durative-action do_step45
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step45)) (at start (finished29)))
    :effect (and (at start (not (step_pending step45))) (at end (step_done step45)) (at end (finished45)))
  )

  (:durative-action do_step46
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step46)) (at start (finished33)))
    :effect (and (at start (not (step_pending step46))) (at end (step_done step46)) (at end (finished46)))
  )

  (:durative-action do_step47
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step47)) (at start (finished36)) (at start (finished37)))
    :effect (and (at start (not (step_pending step47))) (at end (step_done step47)) (at end (finished47)))
  )

  (:durative-action do_step48
    :duration (= ?duration 60)
    :condition (at start (step_pending step48))
    :effect (and (at start (not (step_pending step48))) (at end (step_done step48)) (at end (finished48)))
  )

  (:durative-action do_step49
    :duration (= ?duration 60)
    :condition (at start (step_pending step49))
    :effect (and (at start (not (step_pending step49))) (at end (step_done step49)) (at end (finished49)))
  )

  (:durative-action do_step50
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step50)) (at start (finished18)) )
    :effect (and (at start (not (step_pending step50))) (at end (step_done step50)) (at end (finished50)))
  )
)
