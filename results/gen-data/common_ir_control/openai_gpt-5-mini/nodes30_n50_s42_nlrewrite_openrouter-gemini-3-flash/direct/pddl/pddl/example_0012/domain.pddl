(define (domain center_of_gravity)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (pending ?s - step)
    (step_done ?s - step)
    (done_s1)
    (done_s2)
    (done_s3)
    (done_s4)
    (done_s5)
    (done_s6)
    (done_s7)
    (done_s8)
    (done_s9)
    (done_s10)
    (done_s11)
    (done_s12)
    (done_s13)
    (done_s14)
    (done_s15)
    (done_s16)
    (done_s17)
    (done_s18)
    (done_s19)
    (done_s20)
    (done_s21)
    (done_s22)
    (done_s23)
    (done_s24)
    (done_s25)
    (done_s26)
    (done_s27)
    (done_s28)
    (done_s29)
    (done_s30)
  )

  (:durative-action do_step1
    :duration (= ?duration 900)
    :condition (and (at start (pending step1)) (at start (done_s4)) (at start (done_s14)) (at start (done_s23)) (at start (done_s29)))
    :effect (and (at start (not (pending step1))) (at end (step_done step1)) (at end (done_s1)))
  )

  (:durative-action do_step2
    :duration (= ?duration 7200)
    :condition (and (at start (pending step2)) (at start (done_s21)))
    :effect (and (at start (not (pending step2))) (at end (step_done step2)) (at end (done_s2)))
  )

  (:durative-action do_step3
    :duration (= ?duration 2700)
    :condition (and (at start (pending step3)) (at start (done_s15)))
    :effect (and (at start (not (pending step3))) (at end (step_done step3)) (at end (done_s3)))
  )

  (:durative-action do_step4
    :duration (= ?duration 1800)
    :condition (at start (pending step4))
    :effect (and (at start (not (pending step4))) (at end (step_done step4)) (at end (done_s4)))
  )

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and (at start (pending step5)) (at start (done_s20)))
    :effect (and (at start (not (pending step5))) (at end (step_done step5)) (at end (done_s5)))
  )

  (:durative-action do_step6
    :duration (= ?duration 3600)
    :condition (and (at start (pending step6)) (at start (done_s19)) (at start (done_s20)))
    :effect (and (at start (not (pending step6))) (at end (step_done step6)) (at end (done_s6)))
  )

  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (and (at start (pending step7)) (at start (done_s18)))
    :effect (and (at start (not (pending step7))) (at end (step_done step7)) (at end (done_s7)))
  )

  (:durative-action do_step8
    :duration (= ?duration 300)
    :condition (and (at start (pending step8)) (at start (done_s30)))
    :effect (and (at start (not (pending step8))) (at end (step_done step8)) (at end (done_s8)))
  )

  (:durative-action do_step9
    :duration (= ?duration 1800)
    :condition (and (at start (pending step9)) (at start (done_s10)) (at start (done_s15)))
    :effect (and (at start (not (pending step9))) (at end (step_done step9)) (at end (done_s9)))
  )

  (:durative-action do_step10
    :duration (= ?duration 2400)
    :condition (and (at start (pending step10)) (at start (done_s16)))
    :effect (and (at start (not (pending step10))) (at end (step_done step10)) (at end (done_s10)))
  )

  (:durative-action do_step11
    :duration (= ?duration 1500)
    :condition (and (at start (pending step11)) (at start (done_s17)))
    :effect (and (at start (not (pending step11))) (at end (step_done step11)) (at end (done_s11)))
  )

  (:durative-action do_step12
    :duration (= ?duration 3000)
    :condition (and (at start (pending step12)) (at start (done_s18)) (at start (done_s21)))
    :effect (and (at start (not (pending step12))) (at end (step_done step12)) (at end (done_s12)))
  )

  (:durative-action do_step13
    :duration (= ?duration 2100)
    :condition (and (at start (pending step13)) (at start (done_s23)))
    :effect (and (at start (not (pending step13))) (at end (step_done step13)) (at end (done_s13)))
  )

  (:durative-action do_step14
    :duration (= ?duration 900)
    :condition (at start (pending step14))
    :effect (and (at start (not (pending step14))) (at end (step_done step14)) (at end (done_s14)))
  )

  (:durative-action do_step15
    :duration (= ?duration 600)
    :condition (and (at start (pending step15)) (at start (done_s8)) (at start (done_s16)))
    :effect (and (at start (not (pending step15))) (at end (step_done step15)) (at end (done_s15)))
  )

  (:durative-action do_step16
    :duration (= ?duration 3600)
    :condition (and (at start (pending step16)) (at start (done_s22)))
    :effect (and (at start (not (pending step16))) (at end (step_done step16)) (at end (done_s16)))
  )

  (:durative-action do_step17
    :duration (= ?duration 1200)
    :condition (and (at start (pending step17)) (at start (done_s3)))
    :effect (and (at start (not (pending step17))) (at end (step_done step17)) (at end (done_s17)))
  )

  (:durative-action do_step18
    :duration (= ?duration 900)
    :condition (and (at start (pending step18)) (at start (done_s11)))
    :effect (and (at start (not (pending step18))) (at end (step_done step18)) (at end (done_s18)))
  )

  (:durative-action do_step19
    :duration (= ?duration 2700)
    :condition (and (at start (pending step19)) (at start (done_s12)))
    :effect (and (at start (not (pending step19))) (at end (step_done step19)) (at end (done_s19)))
  )

  (:durative-action do_step20
    :duration (= ?duration 3600)
    :condition (and (at start (pending step20)) (at start (done_s13)) (at start (done_s15)))
    :effect (and (at start (not (pending step20))) (at end (step_done step20)) (at end (done_s20)))
  )

  (:durative-action do_step21
    :duration (= ?duration 300)
    :condition (and (at start (pending step21)) (at start (done_s23)))
    :effect (and (at start (not (pending step21))) (at end (step_done step21)) (at end (done_s21)))
  )

  (:durative-action do_step22
    :duration (= ?duration 10800)
    :condition (at start (pending step22))
    :effect (and (at start (not (pending step22))) (at end (step_done step22)) (at end (done_s22)))
  )

  (:durative-action do_step23
    :duration (= ?duration 600)
    :condition (at start (pending step23))
    :effect (and (at start (not (pending step23))) (at end (step_done step23)) (at end (done_s23)))
  )

  (:durative-action do_step24
    :duration (= ?duration 300)
    :condition (at start (pending step24))
    :effect (and (at start (not (pending step24))) (at end (step_done step24)) (at end (done_s24)))
  )

  (:durative-action do_step25
    :duration (= ?duration 300)
    :condition (and (at start (pending step25)) (at start (done_s10)) (at start (done_s20)) (at start (done_s28)))
    :effect (and (at start (not (pending step25))) (at end (step_done step25)) (at end (done_s25)))
  )

  (:durative-action do_step26
    :duration (= ?duration 1500)
    :condition (and (at start (pending step26)) (at start (done_s6)) (at start (done_s24)))
    :effect (and (at start (not (pending step26))) (at end (step_done step26)) (at end (done_s26)))
  )

  (:durative-action do_step27
    :duration (= ?duration 900)
    :condition (and (at start (pending step27)) (at start (done_s4)) (at start (done_s16)))
    :effect (and (at start (not (pending step27))) (at end (step_done step27)) (at end (done_s27)))
  )

  (:durative-action do_step28
    :duration (= ?duration 120)
    :condition (at start (pending step28))
    :effect (and (at start (not (pending step28))) (at end (step_done step28)) (at end (done_s28)))
  )

  (:durative-action do_step29
    :duration (= ?duration 3600)
    :condition (at start (pending step29))
    :effect (and (at start (not (pending step29))) (at end (step_done step29)) (at end (done_s29)))
  )

  (:durative-action do_step30
    :duration (= ?duration 600)
    :condition (at start (pending step30))
    :effect (and (at start (not (pending step30))) (at end (step_done step30)) (at end (done_s30)))
  )
)
