(define (domain remember_great_lakes)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    (researched_locations_done)
    (recited_names_done)
    (history_read_done)
    (map_drawn_done)
    (quiz_taken_done)
    (documentary_watched_done)
    (review_done)
    (mnemonic_created_done)
    (book_purchased_done)
    (explained_homes_done)
  )

  (:durative-action do_step1
    :duration (= ?duration 2700)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (researched_locations_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 300)
    :condition (and
      (at start (step_pending step2))
      (at start (book_purchased_done))
      (at start (history_read_done))
      (at start (documentary_watched_done))
      (at start (mnemonic_created_done))
    )
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (recited_names_done))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 3600)
    :condition (and
      (at start (step_pending step3))
      (at start (book_purchased_done))
    )
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (history_read_done))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 1800)
    :condition (and
      (at start (step_pending step4))
      (at start (researched_locations_done))
    )
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (map_drawn_done))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step5))
      (at start (recited_names_done))
      (at start (history_read_done))
      (at start (documentary_watched_done))
      (at start (mnemonic_created_done))
      (at start (book_purchased_done))
    )
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (quiz_taken_done))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 5400)
    :condition (and
      (at start (step_pending step6))
      (at start (history_read_done))
      (at start (book_purchased_done))
    )
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (documentary_watched_done))
    )
  )

  (:durative-action do_step7
    :duration (= ?duration 900)
    :condition (and
      (at start (step_pending step7))
      (at start (recited_names_done))
      (at start (history_read_done))
      (at start (quiz_taken_done))
      (at start (documentary_watched_done))
      (at start (mnemonic_created_done))
      (at start (book_purchased_done))
    )
    :effect (and
      (at start (not (step_pending step7)))
      (at end (step_done step7))
      (at end (review_done))
    )
  )

  (:durative-action do_step8
    :duration (= ?duration 1200)
    :condition (and
      (at start (step_pending step8))
      (at start (history_read_done))
      (at start (documentary_watched_done))
      (at start (book_purchased_done))
    )
    :effect (and
      (at start (not (step_pending step8)))
      (at end (step_done step8))
      (at end (mnemonic_created_done))
    )
  )

  (:durative-action do_step9
    :duration (= ?duration 900)
    :condition (at start (step_pending step9))
    :effect (and
      (at start (not (step_pending step9)))
      (at end (step_done step9))
      (at end (book_purchased_done))
    )
  )

  (:durative-action do_step10
    :duration (= ?duration 600)
    :condition (and
      (at start (step_pending step10))
      (at start (recited_names_done))
      (at start (history_read_done))
      (at start (documentary_watched_done))
      (at start (mnemonic_created_done))
      (at start (book_purchased_done))
    )
    :effect (and
      (at start (not (step_pending step10)))
      (at end (step_done step10))
      (at end (explained_homes_done))
    )
  )
)
