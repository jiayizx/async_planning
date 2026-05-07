(define (domain berry_poutine)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (preheat_done)
    (berries_arranged_done)
    (cake_made_done)
    (poured_done)
    (baking_done)
    (served_done)
  )

  ;; Step 1: Preheat the oven to 180ºC/350ºF. (10 min = 600s)
  (:durative-action do_step1
    :duration (= ?duration 600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (preheat_done))
    )
  )

  ;; Step 2: Arrange berries. (5 min = 300s)
  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (berries_arranged_done))
    )
  )

  ;; Step 3: Make the cake part. (15 min = 900s)
  (:durative-action do_step3
    :duration (= ?duration 900)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (cake_made_done))
    )
  )

  ;; Step 4: Pour mixture over strawberries. (2 min = 120s)
  ;; Requires step 2 and step 3 to be completed
  (:durative-action do_step4
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step4)) (at start (berries_arranged_done)) (at start (cake_made_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (poured_done))
    )
  )

  ;; Step 5: Place in oven for 30 minutes. (30 min = 1800s)
  ;; Requires step 1 (preheat) and step 4 (poured)
  (:durative-action do_step5
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending step5)) (at start (preheat_done)) (at start (poured_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (baking_done))
    )
  )

  ;; Step 6: Remove from oven and serve. (2 min = 120s)
  ;; Requires step 5 (baking) to be completed
  (:durative-action do_step6
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step6)) (at start (baking_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (served_done))
    )
  )
)
