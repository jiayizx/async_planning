(define (domain mayday)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (gathered_flowers)
    (bought_ribbons)
    (woven_crowns)
    (danced_maypole)
    (delivered_baskets)
  )
  
  (:durative-action do_step2
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (gathered_flowers))
    )
  )
  
  (:durative-action do_step5
    :parameters ()
    :duration (= ?duration 1200)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (bought_ribbons))
    )
  )
  
  (:durative-action do_step3
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and
      (at start (step_pending step3))
      (at start (bought_ribbons))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (woven_crowns))
    )
  )
  
  (:durative-action do_step1
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step1))
      (at start (gathered_flowers))
    )
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (danced_maypole))
    )
  )
  
  (:durative-action do_step4
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (step_pending step4))
      (at start (woven_crowns))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (delivered_baskets))
    )
  )
)
