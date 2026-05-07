(define (domain tuna_patties)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (drain_done)
    (dice_done)
    (flake_done)
    (whisk_done)
    (mix_egg_done)
    (combine_done)
    (form_done)
    (hydrate_done)
    (pan_fry_done)
    (sauce_done))

  (:durative-action drain
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (drain_done))))

  (:durative-action dice
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (dice_done))))

  (:durative-action flake
    :parameters (?s - step)
    :duration (= ?duration 180)
    :condition (and (at start (step_pending ?s))
                    (at start (drain_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (flake_done))))

  (:durative-action whisk
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s))
                    (at start (drain_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (whisk_done))))

  (:durative-action mix_egg
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s))
                    (at start (whisk_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (mix_egg_done))))

  (:durative-action combine
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s))
                    (at start (dice_done))
                    (at start (flake_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (combine_done))))

  (:durative-action form
    :parameters (?s - step)
    :duration (= ?duration 480)
    :condition (and (at start (step_pending ?s))
                    (at start (combine_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (form_done))))

  (:durative-action hydrate
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s))
                    (at start (mix_egg_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (hydrate_done))))

  (:durative-action pan_fry
    :parameters (?s - step)
    :duration (= ?duration 720)
    :condition (and (at start (step_pending ?s))
                    (at start (form_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (pan_fry_done))))

  (:durative-action sauce
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s))
                    (at start (flake_done))
                    (at start (whisk_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (sauce_done))))
)