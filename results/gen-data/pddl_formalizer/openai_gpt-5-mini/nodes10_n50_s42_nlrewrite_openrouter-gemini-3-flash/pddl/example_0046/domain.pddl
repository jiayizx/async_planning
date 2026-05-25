(define (domain marathon_preparation)
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
  )

  ; Step 1: Purchase running shoes (2700s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (done1))
    )
  )

  ; Step 2: 10-week base endurance training (10 weeks = 6048000s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 6048000)
    :condition (and (at start (step_pending step2)) (at start (done6)) (at start (done8)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done2))
    )
  )

  ; Step 3: 20-mile long run (14400s)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step3)) (at start (done2)) (at start (done6)) (at start (done8)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done3))
    )
  )

  ; Step 4: Rest and taper (1 week = 604800s)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (step_pending step4)) (at start (done5)) (at start (done3)) (at start (done2)) (at start (done6)) (at start (done8)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done4))
    )
  )

  ; Step 5: Carbo-load (172800s)
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (step_pending step5)) (at start (done3)) (at start (done2)) (at start (done6)) (at start (done8)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done5))
    )
  )

  ; Step 6: Consult sports physician (3600s)
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (done8)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done6))
    )
  )

  ; Step 7: Register online (1200s)
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step7))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done7))
    )
  )

  ; Step 8: Research local marathons (7200s)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done8))
    )
  )

  ; Step 9: Pick up race bib (5400s)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 5400)
    :condition (and (at start (step_pending step9)) (at start (done1)) (at start (done7)))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done9))
    )
  )

  ; Step 10: Run the marathon (18000s)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and (at start (step_pending step10)) (at start (done4)) (at start (done5)) (at start (done3)) (at start (done2)) (at start (done6)) (at start (done8)) (at start (done9)) (at start (done1)) (at start (done7)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done10))
    )
  )
)
