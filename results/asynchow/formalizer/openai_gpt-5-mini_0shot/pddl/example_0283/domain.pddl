(define (domain shrimp-tempura)
  (:requirements :durative-actions :typing)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ; unique semantic predicates (one per action)
    (shrimp_prepared_done)
    (egg_mixture_done)
    (flour_added_done)
    (shrimp_floured_done)
    (shrimp_battered_done)
    (oil_heated_done)
    (shrimp_fried_done)
  )

  ; Step 1: Prepare the shrimp (5 min = 300s)
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shrimp_prepared_done))
    )
  )

  ; Step 2: Combine egg yolk with cold water (2 min = 120s)
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (egg_mixture_done))
    )
  )

  ; Step 3: Add flour to egg mixture (3 min = 180s)
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (egg_mixture_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (flour_added_done))
    )
  )

  ; Step 4: Coat the shrimp in flour (2 min = 120s)
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (shrimp_prepared_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shrimp_floured_done))
    )
  )

  ; Step 5: Dip the shrimp in tempura batter (3 min = 180s)
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s)) (at start (flour_added_done)) (at start (shrimp_floured_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shrimp_battered_done))
    )
  )

  ; Step 6: Heat up oil to 350 F (10 min = 600s)
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (oil_heated_done))
    )
  )

  ; Step 7: Fry the shrimp (5 min = 300s)
  (:durative-action do_step7
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (shrimp_battered_done)) (at start (oil_heated_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shrimp_fried_done))
    )
  )
)
