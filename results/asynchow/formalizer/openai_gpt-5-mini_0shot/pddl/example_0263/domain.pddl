(define (domain remove-pet-hair)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (pumice_done)
    (mist_done)
    (vacuum_done)
    (mop_done)
  )

  ;; Step 1: Rub a pumice stone over small areas of carpet. (5 min = 300s)
  (:durative-action do_step1_pumice
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (mist_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (pumice_done))
            )
  )

  ;; Step 2: Mist the carpet with a fabric softener and water solution. (10 min = 600s)
  (:durative-action do_step2_mist
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (mist_done))
            )
  )

  ;; Step 3: Vacuum up the rest of the hair on carpet. (15 min = 900s)
  (:durative-action do_step3_vacuum
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (pumice_done)))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (vacuum_done))
            )
  )

  ;; Step 4: Run a microfiber mop over hardwood floors to pick up loose hair. (5 min = 300s)
  (:durative-action do_step4_mop
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
              (at start (not (step_pending ?s)))
              (at end (step_done ?s))
              (at end (mop_done))
            )
  )
)
