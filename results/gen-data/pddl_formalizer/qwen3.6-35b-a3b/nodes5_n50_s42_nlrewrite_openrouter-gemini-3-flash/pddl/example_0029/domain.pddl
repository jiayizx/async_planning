(define (domain solid_perfume)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (pour_done)
               (measure_done)
               (melt_done)
               (print_done)
               (apply_done))

  (:durative-action step1_pour
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (melt_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (pour_done))))

  (:durative-action step2_measure
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (measure_done))))

  (:durative-action step3_melt
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)) (at start (measure_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (melt_done))))

  (:durative-action step4_print
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (print_done))))

  (:durative-action step5_apply
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (pour_done)) (at start (print_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (apply_done))))
)