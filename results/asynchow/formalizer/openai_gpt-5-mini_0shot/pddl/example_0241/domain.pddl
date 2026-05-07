(define (domain make_girl_feel_beautiful)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bought)
    (photoshoot_done)
    (sung_song)
    (poem_written)
    (card_given)
  )

  ;; Step 1: Buy her something pretty to wear (3600s)
  (:durative-action do_step1
    :duration (= ?duration 3600)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (bought))
    )
  )

  ;; Step 2: Have a photo shoot (10800s) -- must follow step1 (requires bought)
  (:durative-action do_step2
    :duration (= ?duration 10800)
    :condition (and (at start (step_pending step2)) (at start (bought)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (photoshoot_done))
    )
  )

  ;; Step 3: Sing her a song (600s)
  (:durative-action do_step3
    :duration (= ?duration 600)
    :condition (at start (step_pending step3))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (sung_song))
    )
  )

  ;; Step 4: Write her a poem (1800s)
  (:durative-action do_step4
    :duration (= ?duration 1800)
    :condition (at start (step_pending step4))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (poem_written))
    )
  )

  ;; Step 5: Give her a card with a positive quote in it (900s)
  (:durative-action do_step5
    :duration (= ?duration 900)
    :condition (at start (step_pending step5))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (card_given))
    )
  )
)
