(define (domain clean-combat-boots)
  (:requirements :typing :durative-actions)
  (:types)

  (:predicates
    ;; pending and done predicates for each step (no step objects used)
    (step1_pending) (step_done1)
    (step2_pending) (step_done2)
    (step3_pending) (step_done3)
    (step4_pending) (step_done4)
    (step5_pending) (step_done5)
    (step6_pending) (step_done6)
    (step7_pending) (step_done7)
    (step8_pending) (step_done8)
    (step9_pending) (step_done9)
    (step10_pending) (step_done10)
    (step11_pending) (step_done11)
    (step12_pending) (step_done12)
    (step13_pending) (step_done13)
    (step14_pending) (step_done14)
    (step15_pending) (step_done15)
    (step16_pending) (step_done16)
    (step17_pending) (step_done17)
    (step18_pending) (step_done18)
    (step19_pending) (step_done19)
    (step20_pending) (step_done20)
    (step21_pending) (step_done21)
    (step22_pending) (step_done22)
    (step23_pending) (step_done23)
    (step24_pending) (step_done24)
    (step25_pending) (step_done25)
    (step26_pending) (step_done26)
    (step27_pending) (step_done27)
    (step28_pending) (step_done28)
    (step29_pending) (step_done29)
    (step30_pending) (step_done30)

    ;; unique semantic predicates produced by each action
    (finished_s1) (finished_s2) (finished_s3) (finished_s4) (finished_s5)
    (finished_s6) (finished_s7) (finished_s8) (finished_s9) (finished_s10)
    (finished_s11) (finished_s12) (finished_s13) (finished_s14) (finished_s15)
    (finished_s16) (finished_s17) (finished_s18) (finished_s19) (finished_s20)
    (finished_s21) (finished_s22) (finished_s23) (finished_s24) (finished_s25)
    (finished_s26) (finished_s27) (finished_s28) (finished_s29) (finished_s30)
  )

  ;; One durative-action per step. Each action requires its pending predicate at start
  ;; and additionally requires all listed predecessor finished_sX predicates at start.

  (:durative-action do_step1
    :duration (= ?duration 120)
    :condition (at start (step1_pending))
    :effect (and (at start (not (step1_pending))) (at end (step_done1)) (at end (finished_s1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 600)
    :condition (and (at start (step2_pending)) (at start (finished_s9)))
    :effect (and (at start (not (step2_pending))) (at end (step_done2)) (at end (finished_s2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 900)
    :condition (and (at start (step3_pending)) (at start (finished_s23)) (at start (finished_s20)))
    :effect (and (at start (not (step3_pending))) (at end (step_done3)) (at end (finished_s3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 1200)
    :condition (and (at start (step4_pending)) (at start (finished_s27)) (at start (finished_s13)) (at start (finished_s16)) (at start (finished_s6)) (at start (finished_s8)) (at start (finished_s17)))
    :effect (and (at start (not (step4_pending))) (at end (step_done4)) (at end (finished_s4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 30)
    :condition (at start (step5_pending))
    :effect (and (at start (not (step5_pending))) (at end (step_done5)) (at end (finished_s5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 720)
    :condition (and (at start (step6_pending)) (at start (finished_s8)) (at start (finished_s17)) (at start (finished_s27)))
    :effect (and (at start (not (step6_pending))) (at end (step_done6)) (at end (finished_s6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 300)
    :condition (at start (step7_pending))
    :effect (and (at start (not (step7_pending))) (at end (step_done7)) (at end (finished_s7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 240)
    :condition (and (at start (step8_pending)) (at start (finished_s22)) (at start (finished_s7)))
    :effect (and (at start (not (step8_pending))) (at end (step_done8)) (at end (finished_s8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 360)
    :condition (and (at start (step9_pending)) (at start (finished_s28)) (at start (finished_s20)))
    :effect (and (at start (not (step9_pending))) (at end (step_done9)) (at end (finished_s9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 480)
    :condition (and (at start (step10_pending)) (at start (finished_s22)) (at start (finished_s24)) (at start (finished_s7)))
    :effect (and (at start (not (step10_pending))) (at end (step_done10)) (at end (finished_s10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 1800)
    :condition (and (at start (step11_pending)) (at start (finished_s1)))
    :effect (and (at start (not (step11_pending))) (at end (step_done11)) (at end (finished_s11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 180)
    :condition (and (at start (step12_pending)) (at start (finished_s7)))
    :effect (and (at start (not (step12_pending))) (at end (step_done12)) (at end (finished_s12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 3600)
    :condition (and (at start (step13_pending)) (at start (finished_s16)) (at start (finished_s6)) (at start (finished_s8)) (at start (finished_s17)) (at start (finished_s27)))
    :effect (and (at start (not (step13_pending))) (at end (step_done13)) (at end (finished_s13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 300)
    :condition (and (at start (step14_pending)) (at start (finished_s3)) (at start (finished_s23)) (at start (finished_s20)))
    :effect (and (at start (not (step14_pending))) (at end (step_done14)) (at end (finished_s14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and (at start (step15_pending)) (at start (finished_s30)) (at start (finished_s1)) (at start (finished_s5)) (at start (finished_s26)) (at start (finished_s29)))
    :effect (and (at start (not (step15_pending))) (at end (step_done15)) (at end (finished_s15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 600)
    :condition (and (at start (step16_pending)) (at start (finished_s6)) (at start (finished_s8)) (at start (finished_s17)) (at start (finished_s27)))
    :effect (and (at start (not (step16_pending))) (at end (step_done16)) (at end (finished_s16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 420)
    :condition (and (at start (step17_pending)) (at start (finished_s27)))
    :effect (and (at start (not (step17_pending))) (at end (step_done17)) (at end (finished_s17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 300)
    :condition (and (at start (step18_pending)) (at start (finished_s25)) (at start (finished_s9)) (at start (finished_s28)) (at start (finished_s20)))
    :effect (and (at start (not (step18_pending))) (at end (step_done18)) (at end (finished_s18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 120)
    :condition (and (at start (step19_pending)) (at start (finished_s7)) (at start (finished_s24)))
    :effect (and (at start (not (step19_pending))) (at end (step_done19)) (at end (finished_s19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 240)
    :condition (at start (step20_pending))
    :effect (and (at start (not (step20_pending))) (at end (step_done20)) (at end (finished_s20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 14400)
    :condition (and (at start (step21_pending)) (at start (finished_s24)) (at start (finished_s14)) (at start (finished_s3)) (at start (finished_s23)) (at start (finished_s20)) (at start (finished_s28)))
    :effect (and (at start (not (step21_pending))) (at end (step_done21)) (at end (finished_s21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 60)
    :condition (and (at start (step22_pending)) (at start (finished_s7)))
    :effect (and (at start (not (step22_pending))) (at end (step_done22)) (at end (finished_s22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 30)
    :condition (and (at start (step23_pending)) (at start (finished_s20)))
    :effect (and (at start (not (step23_pending))) (at end (step_done23)) (at end (finished_s23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 360)
    :condition (and (at start (step24_pending)) (at start (finished_s29)) (at start (finished_s1)))
    :effect (and (at start (not (step24_pending))) (at end (step_done24)) (at end (finished_s24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 480)
    :condition (and (at start (step25_pending)) (at start (finished_s9)) (at start (finished_s28)) (at start (finished_s20)))
    :effect (and (at start (not (step25_pending))) (at end (step_done25)) (at end (finished_s25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 900)
    :condition (and (at start (step26_pending)) (at start (finished_s18)) (at start (finished_s25)) (at start (finished_s9)) (at start (finished_s28)) (at start (finished_s20)))
    :effect (and (at start (not (step26_pending))) (at end (step_done26)) (at end (finished_s26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 600)
    :condition (at start (step27_pending))
    :effect (and (at start (not (step27_pending))) (at end (step_done27)) (at end (finished_s27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 720)
    :condition (and (at start (step28_pending)) (at start (finished_s20)))
    :effect (and (at start (not (step28_pending))) (at end (step_done28)) (at end (finished_s28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 60)
    :condition (and (at start (step29_pending)) (at start (finished_s1)))
    :effect (and (at start (not (step29_pending))) (at end (step_done29)) (at end (finished_s29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 300)
    :condition (and (at start (step30_pending)) (at start (finished_s26)) (at start (finished_s5)) (at start (finished_s29)) (at start (finished_s18)) (at start (finished_s25)) (at start (finished_s9)) (at start (finished_s28)) (at start (finished_s20)) (at start (finished_s1)))
    :effect (and (at start (not (step30_pending))) (at end (step_done30)) (at end (finished_s30)))
  )
)
