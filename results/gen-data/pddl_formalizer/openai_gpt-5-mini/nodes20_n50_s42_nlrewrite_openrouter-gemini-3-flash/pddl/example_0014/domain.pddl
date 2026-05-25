(define (domain college_plan)
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
  )

  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 604800)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done_s1))
    )
  )

  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done_s2))
    )
  )

  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (done_s19)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done_s3))
    )
  )

  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 172800)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done_s4))
    )
  )

  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done_s5))
    )
  )

  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done_s6))
    )
  )

  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 345600)
    :condition (and (at start (step_pending step7)) (at start (done_s6)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done_s7))
    )
  )

  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done_s8))
    )
  )

  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step9)) (at start (done_s12)) (at start (done_s16)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done_s9))
    )
  )

  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step10)) (at start (done_s7)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done_s10))
    )
  )

  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step11)) (at start (done_s4)) (at start (done_s14)))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done_s11))
    )
  )

  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step12)) (at start (done_s2)) (at start (done_s6)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done_s12))
    )
  )

  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step13)) (at start (done_s4)) (at start (done_s8)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done_s13))
    )
  )

  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 10800)
    :condition (at start (step_pending step14))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done_s14))
    )
  )

  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step15)) (at start (done_s7)) (at start (done_s10)) (at start (done_s11)) (at start (done_s13)) (at start (done_s14)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done_s15))
    )
  )

  (:durative-action do_step16
    :parameters ()
    ; interpret "1 month" as 30 days = 2592000 seconds
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step16)) (at start (done_s1)) (at start (done_s11)) (at start (done_s15)) (at start (done_s17)))
    :effect (and
      (at start (not (step_pending step16)))
      (at end (step_done step16))
      (at end (done_s16))
    )
  )

  (:durative-action do_step17
    :parameters ()
    :duration (= ?duration 1814400)
    :condition (and (at start (step_pending step17)) (at start (done_s2)) (at start (done_s5)) (at start (done_s12)))
    :effect (and
      (at start (not (step_pending step17)))
      (at end (step_done step17))
      (at end (done_s17))
    )
  )

  (:durative-action do_step18
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step18)) (at start (done_s8)) (at start (done_s13)))
    :effect (and
      (at start (not (step_pending step18)))
      (at end (step_done step18))
      (at end (done_s18))
    )
  )

  (:durative-action do_step19
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending step19)) (at start (done_s16)) (at start (done_s15)))
    :effect (and
      (at start (not (step_pending step19)))
      (at end (step_done step19))
      (at end (done_s19))
    )
  )

  (:durative-action do_step20
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step20)) (at start (done_s19)))
    :effect (and
      (at start (not (step_pending step20)))
      (at end (step_done step20))
      (at end (done_s20))
    )
  )
)
