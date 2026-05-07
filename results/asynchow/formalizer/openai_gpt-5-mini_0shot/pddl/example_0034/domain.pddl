(define (domain impress_girl)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (looked_wardrobe_done)
    (looked_pickup_done)
    (memorized_pickup_done)
    (looked_mirror_done)
    (outfit_put_together_done)
    (walked_to_school_done)
    (talked_to_girl_done)
  )

  (:durative-action do_step1_look_wardrobe
    :duration (= ?duration 900)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (looked_wardrobe_done))
    )
  )

  (:durative-action do_step2_look_up_pickup_lines
    :duration (= ?duration 900)
    :condition (at start (step_pending step2))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (looked_pickup_done))
    )
  )

  (:durative-action do_step3_memorize_pickup_lines
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step3)) (at start (looked_pickup_done)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (memorized_pickup_done))
    )
  )

  (:durative-action do_step4_look_in_mirror
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step4)) (at start (memorized_pickup_done)) (at start (outfit_put_together_done)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (looked_mirror_done))
    )
  )

  (:durative-action do_step5_put_together_outfit
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step5)) (at start (looked_wardrobe_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (outfit_put_together_done))
    )
  )

  (:durative-action do_step6_walk_to_school
    :duration (= ?duration 1500)
    :condition (and (at start (step_pending step6)) (at start (looked_mirror_done)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (walked_to_school_done))
    )
  )

  (:durative-action do_step7_talk_to_girl
    :duration (= ?duration 900)
    :condition (and (at start (step_pending step7)) (at start (walked_to_school_done)))
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (talked_to_girl_done))
    )
  )
)
