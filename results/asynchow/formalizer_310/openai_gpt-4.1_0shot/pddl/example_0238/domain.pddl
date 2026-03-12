(define (domain fix_chip_quartz_countertop)
  (:requirements :durative-actions)
  (:predicates
    (clean_counter_pending)
    (clean_counter_done)
    (masking_tape_pending)
    (masking_tape_done)
    (fix_cracks_pending)
    (fix_cracks_done)
    (epoxy_adhesive_pending)
    (epoxy_adhesive_done)
    (file_patch_pending)
    (file_patch_done)
  )

  (:durative-action clean_counter
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (clean_counter_pending))
    :effect (and (at start (not (clean_counter_pending))) (at end (clean_counter_done)))
  )

  (:durative-action masking_tape
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (masking_tape_pending)) (at start (clean_counter_done)))
    :effect (and (at start (not (masking_tape_pending))) (at end (masking_tape_done)))
  )

  (:durative-action fix_cracks
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (fix_cracks_pending)) (at start (masking_tape_done)))
    :effect (and (at start (not (fix_cracks_pending))) (at end (fix_cracks_done)))
  )

  (:durative-action epoxy_adhesive
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (epoxy_adhesive_pending)) (at start (masking_tape_done)))
    :effect (and (at start (not (epoxy_adhesive_pending))) (at end (epoxy_adhesive_done)))
  )

  (:durative-action file_patch
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (file_patch_pending)) (at start (fix_cracks_done)) (at start (epoxy_adhesive_done)))
    :effect (and (at start (not (file_patch_pending))) (at end (file_patch_done)))
  )
)
