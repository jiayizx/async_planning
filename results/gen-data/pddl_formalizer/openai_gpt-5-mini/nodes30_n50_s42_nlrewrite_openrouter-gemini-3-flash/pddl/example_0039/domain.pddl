(define (domain scholarship_application)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
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
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_s1))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_s2))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_s3))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending step4)) (at start (done_s5)) (at start (done_s18)) (at start (done_s17)) (at start (done_s24)) (at start (done_s8)) (at start (done_s9)) (at start (done_s7)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_s4))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_s5))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 432000)
    :condition (and (at start (step_pending step6)) (at start (done_s19)) (at start (done_s23)) (at start (done_s30)) (at start (done_s18)) (at start (done_s8)) (at start (done_s9)) (at start (done_s7)) (at start (done_s1)) (at start (done_s14)) (at start (done_s22)) (at start (done_s21)) (at start (done_s5)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_s6))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step7)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_s7))
    )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step8)) (at start (done_s7)) (at start (done_s9)) (at start (done_s3)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_s8))
    )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step9)) (at start (done_s3)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_s9))
    )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending step10)) (at start (done_s28)) (at start (done_s14)) (at start (done_s26)) (at start (done_s17)) (at start (done_s24)) (at start (done_s5)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_s10))
    )
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step11)) (at start (done_s1)) (at start (done_s8)) (at start (done_s9)) (at start (done_s7)) (at start (done_s3)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done_s11))
    )
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step12)) (at start (done_s5)) (at start (done_s28)) (at start (done_s17)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done_s12))
    )
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step13)) (at start (done_s26)) (at start (done_s9)) (at start (done_s3)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done_s13))
    )
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step14)) (at start (done_s26)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done_s14))
    )
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step15)) (at start (done_s1)) (at start (done_s20)) (at start (done_s5)) (at start (done_s10)) (at start (done_s28)) (at start (done_s17)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done_s15))
    )
  )

  (:durative-action do_step16
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step16)) (at start (done_s17)) (at start (done_s25)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (done_s16))
    )
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step17)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (done_s17))
    )
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step18)) (at start (done_s5)) (at start (done_s17)) (at start (done_s8)) (at start (done_s9)) (at start (done_s7)) (at start (done_s3)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (done_s18))
    )
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step19)) (at start (done_s22)) (at start (done_s14)) (at start (done_s21)) (at start (done_s5)) (at start (done_s26)) (at start (done_s17)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (done_s19))
    )
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step20)) (at start (done_s5)) (at start (done_s10)) (at start (done_s28)) (at start (done_s14)) (at start (done_s26)) (at start (done_s17)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (done_s20))
    )
  )

  (:durative-action do_step21
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step21)) (at start (done_s12)) (at start (done_s5)) (at start (done_s28)) (at start (done_s17)) (at start (done_s24)) (at start (done_s26)))
    :effect (and
      (at start (not (step_pending step21)))
      (at end (step_done step21))
      (at end (done_s21))
    )
  )

  (:durative-action do_step22
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step22)) (at start (done_s5)) (at start (done_s14)) (at start (done_s21)) (at start (done_s12)) (at start (done_s28)) (at start (done_s17)) (at start (done_s24)) (at start (done_s26)))
    :effect (and
      (at start (not (step_pending step22)))
      (at end (step_done step22))
      (at end (done_s22))
    )
  )

  (:durative-action do_step23
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step23)) (at start (done_s30)) (at start (done_s18)) (at start (done_s8)) (at start (done_s9)) (at start (done_s7)) (at start (done_s3)) (at start (done_s1)) (at start (done_s5)) (at start (done_s17)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step23)))
      (at end (step_done step23))
      (at end (done_s23))
    )
  )

  (:durative-action do_step24
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step24))
    :effect (and
      (at start (not (step_pending step24)))
      (at end (step_done step24))
      (at end (done_s24))
    )
  )

  (:durative-action do_step25
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (at start (step_pending step25))
    :effect (and
      (at start (not (step_pending step25)))
      (at end (step_done step25))
      (at end (done_s25))
    )
  )

  (:durative-action do_step26
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step26)) (at start (done_s9)) (at start (done_s3)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step26)))
      (at end (step_done step26))
      (at end (done_s26))
    )
  )

  (:durative-action do_step27
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step27)) (at start (done_s22)) (at start (done_s5)) (at start (done_s14)) (at start (done_s21)) (at start (done_s12)) (at start (done_s28)) (at start (done_s17)) (at start (done_s24)) (at start (done_s26)))
    :effect (and
      (at start (not (step_pending step27)))
      (at end (step_done step27))
      (at end (done_s27))
    )
  )

  (:durative-action do_step28
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step28)) (at start (done_s17)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step28)))
      (at end (step_done step28))
      (at end (done_s28))
    )
  )

  (:durative-action do_step29
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step29)) (at start (done_s2)) (at start (done_s16)) (at start (done_s17)) (at start (done_s25)) (at start (done_s24)))
    :effect (and
      (at start (not (step_pending step29)))
      (at end (step_done step29))
      (at end (done_s29))
    )
  )

  (:durative-action do_step30
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step30)) (at start (done_s18)) (at start (done_s5)) (at start (done_s17)) (at start (done_s8)) (at start (done_s9)) (at start (done_s7)) (at start (done_s3)) (at start (done_s1)))
    :effect (and
      (at start (not (step_pending step30)))
      (at end (step_done step30))
      (at end (done_s30))
    )
  )
)
