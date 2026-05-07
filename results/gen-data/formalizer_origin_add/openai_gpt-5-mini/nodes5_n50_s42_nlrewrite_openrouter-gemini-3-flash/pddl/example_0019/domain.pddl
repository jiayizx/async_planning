(define (domain herbs_year_round)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (install_done)
    (research_done)
    (sow_done)
    (transplant_done)
    (clear_done)
  )

  ;; Step 1: Install LED grow lights for winter use
  (:durative-action do_install
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s)) (at start (clear_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (install_done))
    )
  )

  ;; Step 2: Research and purchase organic herb seeds
  (:durative-action do_research
    :parameters (?s - step)
    :duration (= ?duration 259200)
    :condition (and (at start (step_pending ?s)) (at start (clear_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (research_done))
    )
  )

  ;; Step 3: Sow seeds in starter trays and wait for germination (2 weeks)
  (:durative-action do_sow
    :parameters (?s - step)
    :duration (= ?duration 1209600)
    :condition (and (at start (step_pending ?s)) (at start (research_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (sow_done))
    )
  )

  ;; Step 4: Transplant seedlings into larger ceramic pots
  (:durative-action do_transplant
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (research_done)) (at start (sow_done)) (at start (clear_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (transplant_done))
    )
  )

  ;; Step 5: Clear a dedicated space on the sunny windowsill
  (:durative-action do_clear
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (clear_done))
    )
  )
)
