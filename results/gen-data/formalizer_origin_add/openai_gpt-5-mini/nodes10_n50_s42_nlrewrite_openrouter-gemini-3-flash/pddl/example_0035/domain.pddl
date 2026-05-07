(define (domain knit_blanket)
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
  )

  ; Step 1: Choose pattern and calculate yarn requirements (2700s)
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

  ; Step 2: Purchase circular knitting needles (1800s)
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (done2))
    )
  )

  ; Step 3: Knit the main body of the blanket (144000s)
  ; Direct predecessor: Step 4 (cast on initial row)
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 144000)
    :condition (and (at start (step_pending step3)) (at start (done4)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (done3))
    )
  )

  ; Step 4: Cast on the initial row of stitches (1200s)
  ; Direct predecessor: Step 6 (buy yarn must precede cast-on)
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending step4)) (at start (done6)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (done4))
    )
  )

  ; Step 5: Weave in the loose ends with a tapestry needle (3600s)
  ; Direct predecessor: Step 7
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (done7)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (done5))
    )
  )

  ; Step 6: Buy the required wool yarn (3600s)
  ; Direct predecessor: Step 1
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step6)) (at start (done1)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (done6))
    )
  )

  ; Step 7: Wind the hanks of yarn into center-pull balls (7200s)
  ; Direct predecessors: Step 2 and Step 9
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step7)) (at start (done2)) (at start (done9)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (done7))
    )
  )

  ; Step 8: Research blocking techniques (900s)
  (:durative-action do_step8
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (step_pending step8))
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (done8))
    )
  )

  ; Step 9: Wash the finished sample swatch (86400s)
  (:durative-action do_step9
    :parameters ()
    :duration (= ?duration 86400)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (done9))
    )
  )

  ; Step 10: Steam block the finished blanket (21600s)
  ; Direct predecessor: Step 8 (per original ordering constraints)
  (:durative-action do_step10
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending step10)) (at start (done8)))
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (done10))
    )
  )
)
