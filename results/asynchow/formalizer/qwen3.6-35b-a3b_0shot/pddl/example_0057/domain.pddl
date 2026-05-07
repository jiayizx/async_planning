(define (domain movie_making)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (script_written)
    (backdrop_planned)
    (cast_hired)
    (lines_learned)
    (movie_filmed))

  (:durative-action do_step1
    (:parameters (?s - step))
    (:duration (= ?duration 7776000))
    (:condition (at start (step_pending ?s)))
    (:effect (and (at start (not (step_pending ?s)))
                  (at end (step_done ?s))
                  (at end (script_written)))))

  (:durative-action do_step2
    (:parameters (?s - step))
    (:duration (= ?duration 604800))
    (:condition (and (at start (step_pending ?s))
                     (at start (script_written))))
    (:effect (and (at start (not (step_pending ?s)))
                  (at end (step_done ?s))
                  (at end (backdrop_planned)))))

  (:durative-action do_step3
    (:parameters (?s - step))
    (:duration (= ?duration 604800))
    (:condition (and (at start (step_pending ?s))
                     (at start (backdrop_planned))))
    (:effect (and (at start (not (step_pending ?s)))
                  (at end (step_done ?s))
                  (at end (cast_hired)))))

  (:durative-action do_step4
    (:parameters (?s - step))
    (:duration (= ?duration 432000))
    (:condition (and (at start (step_pending ?s))
                     (at start (backdrop_planned))))
    (:effect (and (at start (not (step_pending ?s)))
                  (at end (step_done ?s))
                  (at end (lines_learned)))))

  (:durative-action do_step5
    (:parameters (?s - step))
    (:duration (= ?duration 25920000))
    (:condition (and (at start (step_pending ?s))
                     (at start (cast_hired))
                     (at start (lines_learned))))
    (:effect (and (at start (not (step_pending ?s)))
                  (at end (step_done ?s))
                  (at end (movie_filmed)))))
)