(define (domain learn_backflip)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (searched)
    (watched)
    (contacted)
    (asked)
    (booked)
    (followed)
    (continued)
  )

  ;; Step 1: Search YouTube for videos on back flips (3600s)
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (searched))
    )
  )

  ;; Step 2: Watch a variety of videos (7200s). Predecessor: step1
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending step2)) (at start (searched)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (watched))
    )
  )

  ;; Step 3: Contact local gym (300s). Predecessor: step2
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step3)) (at start (watched)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (contacted))
    )
  )

  ;; Step 4: Ask if this can be taught (300s). Predecessor: step3
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (contacted)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (asked))
    )
  )

  ;; Step 5: Book trainer from gym (300s). Predecessor: step3
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step5)) (at start (contacted)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (booked))
    )
  )

  ;; Step 6: Follow trainer's advice (2592000s). Predecessors: step4 and step5
  (:durative-action do_step6
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step6)) (at start (asked)) (at start (booked)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (followed))
    )
  )

  ;; Step 7: Continue training until ready (2592000s). Predecessor: step6
  (:durative-action do_step7
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (step_pending step7)) (at start (followed)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (continued))
    )
  )
)
