(define (domain corn_soup_domain)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (onions_garlic_sauted)
               (corn_broth_simmered)
               (corn_shucked)
               (vegetables_chopped)
               (soup_blended))

  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (vegetables_chopped)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (onions_garlic_sauted))))

  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s)) (at start (onions_garlic_sauted)) (at start (corn_shucked)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (corn_broth_simmered))))

  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 240)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (corn_shucked))))

  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (vegetables_chopped))))

  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (corn_broth_simmered)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (soup_blended))))
)