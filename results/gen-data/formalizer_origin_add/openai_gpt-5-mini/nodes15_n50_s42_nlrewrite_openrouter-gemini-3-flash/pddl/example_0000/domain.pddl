(define (domain buy-stamps)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (done1)
    (done2)
    (done3)
    (done4)
    (done5)
    (done6)
    (done7)
    (done8)
    (done9)
    (done10)
    (done11)
    (done12)
    (done13)
    (done14)
    (done15)
  )

  (:durative-action do_step1
    :duration (= ?duration 300)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done1))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 180)
    :condition (and
      (at start (step_pending step2))
      (at start (done11)) (at start (done14)) (at start (done13)) (at start (done1)) (at start (done7)) (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done2))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step3))
      (at start (done9)) (at start (done2)) (at start (done11)) (at start (done14)) (at start (done13)) (at start (done1)) (at start (done7)) (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done3))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 60)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done4))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done5))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 120)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done6))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step7))
      (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done7))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step8))
      (at start (done3)) (at start (done7)) (at start (done9)) (at start (done2)) (at start (done11)) (at start (done14)) (at start (done13)) (at start (done1)) (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done8))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step9))
      (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done9))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 60)
    :condition (and
      (at start (step_pending step10))
      (at start (done2)) (at start (done8)) (at start (done3)) (at start (done9)) (at start (done11)) (at start (done14)) (at start (done13)) (at start (done1)) (at start (done7)) (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done10))
    )
  )

  (:durative-action do_step11
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step11))
      (at start (done1))
    )
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done11))
    )
  )

  (:durative-action do_step12
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step12))
      (at start (done9)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done12))
    )
  )

  (:durative-action do_step13
    :duration (= ?duration 240)
    :condition (and
      (at start (step_pending step13))
      (at start (done7)) (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done13))
    )
  )

  (:durative-action do_step14
    :duration (= ?duration 30)
    :condition (and
      (at start (step_pending step14))
      (at start (done13)) (at start (done7)) (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done14))
    )
  )

  (:durative-action do_step15
    :duration (= ?duration 120)
    :condition (and
      (at start (step_pending step15))
      (at start (done2)) (at start (done10)) (at start (done8)) (at start (done3)) (at start (done9)) (at start (done11)) (at start (done14)) (at start (done13)) (at start (done1)) (at start (done7)) (at start (done5)) (at start (done4)) (at start (done6))
    )
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done15))
    )
  )
)
