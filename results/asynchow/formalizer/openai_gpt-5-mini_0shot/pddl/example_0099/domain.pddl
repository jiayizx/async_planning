(define (domain watch_game)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (bought_snacks)
    (changed_clothes)
    (sat_on_couch)
    (snacks_in_bowls)
    (tv_on)
    (bowls_on_table)
    (channel_flipped)
  )

  ;; Step 1: Buy preferred snacks (1800s)
  (:durative-action do_step1_buy_snacks
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bought_snacks))
    )
  )

  ;; Step 2: Change into comfortable clothes (120s)
  (:durative-action do_step2_change_clothes
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (and (step_pending ?s) (bought_snacks)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (changed_clothes))
    )
  )

  ;; Step 3: Sit on the couch (2s)
  (:durative-action do_step3_sit_couch
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (and (step_pending ?s) (changed_clothes) (bowls_on_table)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sat_on_couch))
    )
  )

  ;; Step 4: Put snacks in bowls (600s)
  (:durative-action do_step4_put_snacks_in_bowls
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (and (step_pending ?s) (bought_snacks)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (snacks_in_bowls))
    )
  )

  ;; Step 5: Turn on the television (3s)
  (:durative-action do_step5_turn_on_tv
    :parameters (?s - step)
    :duration (= ?duration 3)
    :condition (at start (and (step_pending ?s) (bought_snacks)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (tv_on))
    )
  )

  ;; Step 6: Put snack bowls on coffee table (60s)
  (:durative-action do_step6_put_bowls_on_table
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (snacks_in_bowls)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (bowls_on_table))
    )
  )

  ;; Step 7: Flip to desired channel (60s)
  (:durative-action do_step7_flip_channel
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (and (step_pending ?s) (tv_on)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (channel_flipped))
    )
  )
)
