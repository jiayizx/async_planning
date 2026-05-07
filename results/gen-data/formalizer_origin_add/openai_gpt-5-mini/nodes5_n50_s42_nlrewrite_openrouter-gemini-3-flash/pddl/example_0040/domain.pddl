(define (domain steamed-ginger-pudding)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bought_ginger)
    (tempered_eggs)
    (grated_ginger)
    (whisked_eggs)
    (combined_batter)
  )

  (:durative-action buy_ginger
    :parameters ()
    :duration (= ?duration 1800)
    :condition (at start (step_pending step4))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (bought_ginger))
            )
  )

  (:durative-action temper_eggs
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (step_pending step5))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (tempered_eggs))
            )
  )

  (:durative-action grate_ginger
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (step_pending step1)) (at start (bought_ginger)))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (grated_ginger))
            )
  )

  (:durative-action whisk_eggs
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (step_pending step2)) (at start (tempered_eggs)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (whisked_eggs))
            )
  )

  (:durative-action combine_batter
    :parameters ()
    :duration (= ?duration 480)
    :condition (and (at start (step_pending step3)) (at start (grated_ginger)) (at start (whisked_eggs)) (at start (bought_ginger)) (at start (tempered_eggs)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (combined_batter))
            )
  )
)
