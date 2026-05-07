(define (domain sculpt_concrete)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (cut_done)
    (wrap_done)
    (mix_done)
    (apply_done)
    (dry_done))
  
  (:durative-action cut_mesh
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (cut_done))))

  (:durative-action wrap_mesh
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s))
                    (at start (cut_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (wrap_done))))

  (:durative-action mix_concrete
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (mix_done))))

  (:durative-action apply_concrete
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s))
                    (at start (wrap_done))
                    (at start (mix_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (apply_done))))

  (:durative-action dry_concrete
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s))
                    (at start (apply_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (dry_done))))
)