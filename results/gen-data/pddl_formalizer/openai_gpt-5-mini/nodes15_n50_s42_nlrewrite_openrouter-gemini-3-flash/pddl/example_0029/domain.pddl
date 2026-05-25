(define (domain solve_system)
  (:requirements :typing :durative-actions)
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

  ; Step1: no predecessors
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done1))
    )
  )

  ; Step2: requires 1,5,9,10 (from ordering constraints)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step2)) (at start (done1)) (at start (done5)) (at start (done9)) (at start (done10)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done2))
    )
  )

  ; Step3: requires 14
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (done14)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done3))
    )
  )

  ; Step4: requires 15 (Step 15 must precede Step 4)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step4)) (at start (done15)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done4))
    )
  )

  ; Step5: requires 6,7,11
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step5)) (at start (done6)) (at start (done7)) (at start (done11)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done5))
    )
  )

  ; Step6: no predecessors
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step6))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done6))
    )
  )

  ; Step7: requires 1
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step7)) (at start (done1)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done7))
    )
  )

  ; Step8: requires 13
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step8)) (at start (done13)))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done8))
    )
  )

  ; Step9: requires 11
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step9)) (at start (done11)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done9))
    )
  )

  ; Step10: requires 4
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step10)) (at start (done4)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done10))
    )
  )

  ; Step11: no predecessors
  (:durative-action do_step11
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (step_pending step11))
    :effect (and
      (at start (not (step_pending step11)))
      (at end (step_done step11))
      (at end (done11))
    )
  )

  ; Step12: requires 10
  (:durative-action do_step12
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step12)) (at start (done10)))
    :effect (and
      (at start (not (step_pending step12)))
      (at end (step_done step12))
      (at end (done12))
    )
  )

  ; Step13: requires 1
  (:durative-action do_step13
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (step_pending step13)) (at start (done1)))
    :effect (and
      (at start (not (step_pending step13)))
      (at end (step_done step13))
      (at end (done13))
    )
  )

  ; Step14: requires 11
  (:durative-action do_step14
    :parameters ()
    :duration (= ?duration 180)
    :condition (and (at start (step_pending step14)) (at start (done11)))
    :effect (and
      (at start (not (step_pending step14)))
      (at end (step_done step14))
      (at end (done14))
    )
  )

  ; Step15: requires 3
  (:durative-action do_step15
    :parameters ()
    :duration (= ?duration 240)
    :condition (and (at start (step_pending step15)) (at start (done3)))
    :effect (and
      (at start (not (step_pending step15)))
      (at end (step_done step15))
      (at end (done15))
    )
  )
)
