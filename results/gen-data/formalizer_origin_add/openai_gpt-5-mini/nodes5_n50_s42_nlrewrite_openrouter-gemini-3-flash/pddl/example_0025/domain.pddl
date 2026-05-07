(define (domain leave-school)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step1_pending)
    (step2_pending)
    (step3_pending)
    (step4_pending)
    (step5_pending)
    (step1_done)
    (step2_done)
    (step3_done)
    (step4_done)
    (step5_done)
    (walk_done)
    (pack_done)
    (drive_done)
    (locate_keys_done)
    (start_done)
    (left_school)
  )

  (:durative-action do_step1_walk
    :duration (= ?duration 300)
    :condition (and (at start (step1_pending)) (at start (pack_done)))
    :effect (and (at start (not (step1_pending))) (at end (step1_done)) (at end (walk_done)))
  )

  (:durative-action do_step2_pack
    :duration (= ?duration 120)
    :condition (at start (step2_pending))
    :effect (and (at start (not (step2_pending))) (at end (step2_done)) (at end (pack_done)))
  )

  (:durative-action do_step3_drive
    :duration (= ?duration 60)
    :condition (and (at start (step3_pending)) (at start (start_done)) (at start (step1_done)) (at start (locate_keys_done)) (at start (pack_done)))
    :effect (and (at start (not (step3_pending))) (at end (step3_done)) (at end (drive_done)) (at end (left_school)))
  )

  (:durative-action do_step4_locate_keys
    :duration (= ?duration 30)
    :condition (at start (step4_pending))
    :effect (and (at start (not (step4_pending))) (at end (step4_done)) (at end (locate_keys_done)))
  )

  (:durative-action do_step5_start
    :duration (= ?duration 45)
    :condition (and (at start (step5_pending)) (at start (locate_keys_done)) (at start (step1_done)) (at start (pack_done)))
    :effect (and (at start (not (step5_pending))) (at end (step5_done)) (at end (start_done)))
  )
)
