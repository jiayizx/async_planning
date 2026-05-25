(define (domain drum_customization)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates for each step
    (wraps_applied)
    (heads_researched_ordered)
    (heads_arrived)
    (shells_stripped_cleaned)
    (heads_installed_tuned)
  )

  ; One durative-action per step
  (:durative-action do_step1_apply_wraps
    :parameters (?s - step)
    :duration (= ?duration 10800)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (heads_researched_ordered))
                 (at start (heads_arrived))
                 (at start (shells_stripped_cleaned))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (wraps_applied))
           )
  )

  (:durative-action do_step2_research_order_heads
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (heads_researched_ordered))
           )
  )

  (:durative-action do_step3_wait_arrival
    :parameters (?s - step)
    :duration (= ?duration 432000)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (heads_researched_ordered))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (heads_arrived))
           )
  )

  (:durative-action do_step4_strip_and_clean
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (shells_stripped_cleaned))
           )
  )

  (:durative-action do_step5_install_and_tune
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and
                 (at start (step_pending ?s))
                 (at start (wraps_applied))
                 (at start (heads_researched_ordered))
                 (at start (heads_arrived))
                 (at start (shells_stripped_cleaned))
               )
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (heads_installed_tuned))
           )
  )
)
