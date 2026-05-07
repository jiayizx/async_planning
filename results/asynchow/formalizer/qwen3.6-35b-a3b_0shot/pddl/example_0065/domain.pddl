(define (domain clothing)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (underwear_on)
               (pants_on)
               (shirt_on)
               (socks_on)
               (shoes_on))
  (:durative-action do_underwear
    :parameters (?s - step)
    :duration 10
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (underwear_on))))
  (:durative-action do_pants
    :parameters (?s - step)
    :duration 15
    :condition (and (at start (step_pending ?s))
                    (at start (underwear_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (pants_on))))
  (:durative-action do_shirt
    :parameters (?s - step)
    :duration 10
    :condition (and (at start (step_pending ?s))
                    (at start (underwear_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shirt_on))))
  (:durative-action do_socks
    :parameters (?s - step)
    :duration 30
    :condition (and (at start (step_pending ?s))
                    (at start (pants_on))
                    (at start (shirt_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (socks_on))))
  (:durative-action do_shoes
    :parameters (?s - step)
    :duration 45
    :condition (and (at start (step_pending ?s))
                    (at start (socks_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shoes_on))))
)