(define (domain knitting)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (pattern_chosen)
               (needles_purchased)
               (body_knit)
               (cast_on)
               (ends_woven)
               (yarn_bought)
               (yarn_wound)
               (blocking_researched)
               (swatch_washed)
               (blanket_blocked))

  (:durative-action step1
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (pattern_chosen))))

  (:durative-action step2
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (needles_purchased))))

  (:durative-action step3
    :parameters (?s - step)
    :duration (= ?duration 144000)
    :condition (and (at start (step_pending ?s))
                    (at start (cast_on)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (body_knit))))

  (:durative-action step4
    :parameters (?s - step)
    :duration (= ?duration 1200)
    :condition (and (at start (step_pending ?s))
                    (at start (yarn_bought)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (cast_on))))

  (:durative-action step5
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s))
                    (at start (yarn_wound)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (ends_woven))))

  (:durative-action step6
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s))
                    (at start (pattern_chosen)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (yarn_bought))))

  (:durative-action step7
    :parameters (?s - step)
    :duration (= ?duration 7200)
    :condition (and (at start (step_pending ?s))
                    (at start (needles_purchased))
                    (at start (swatch_washed)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (yarn_wound))))

  (:durative-action step8
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (blocking_researched))))

  (:durative-action step9
    :parameters (?s - step)
    :duration (= ?duration 86400)
    :condition (and (at start (step_pending ?s)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (swatch_washed))))

  (:durative-action step10
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s))
                    (at start (blocking_researched)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (blanket_blocked))))
)