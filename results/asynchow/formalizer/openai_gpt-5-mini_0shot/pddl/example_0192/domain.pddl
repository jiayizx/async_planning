(define (domain exfoliate_eyebrows)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (s1_done)
    (s2_done)
    (s3_done)
    (s4_done)
    (exfoliation_done)
  )

  ; Step 1: Sanitize the toothbrush in alcohol. Duration = 60s (1 min)
  (:durative-action do_step1_sanitize
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (s1_done))
    )
  )

  ; Step 2: Apply a cleanser to your toothbrush. Duration = 30s
  (:durative-action do_step2_apply_cleanser
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (step_pending step2)) (at start (s1_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (s2_done))
    )
  )

  ; Step 3: Rub the brush over your brows in circular motions. Duration = 120s (2 min)
  ; Requires step2 and step4 to have completed
  (:durative-action do_step3_rub_brows
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (step_pending step3)) (at start (s2_done)) (at start (s4_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (s3_done))
      (at end (exfoliation_done))
    )
  )

  ; Step 4: Rinse the brow area with warm water. Duration = 60s (1 min)
  (:durative-action do_step4_rinse
    :parameters ()
    :duration (= ?duration 60)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (s4_done))
    )
  )
)
