(define (domain signal_flare)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates 
    (step_pending ?s - step)
    (step_done ?s - step)
    (mix_done)
    (stove_lit)
    (heated_done)
    (cooled_done)
    (shaped_done)
    (wrapped_done))
  
  (:durative-action do_step1
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (mix_done))))
  
  (:durative-action do_step2
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (stove_lit))))
  
  (:durative-action do_step3
    :parameters (?s - step)
    :duration (= ?duration 10)
    :condition (and (at start (step_pending ?s))
                    (at start (mix_done))
                    (at start (stove_lit)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (heated_done))))
  
  (:durative-action do_step4
    :parameters (?s - step)
    :duration (= ?duration 30)
    :condition (and (at start (step_pending ?s))
                    (at start (heated_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (cooled_done))))
  
  (:durative-action do_step5
    :parameters (?s - step)
    :duration (= ?duration 5)
    :condition (and (at start (step_pending ?s))
                    (at start (cooled_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (shaped_done))))
  
  (:durative-action do_step6
    :parameters (?s - step)
    :duration (= ?duration 2)
    :condition (and (at start (step_pending ?s))
                    (at start (shaped_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (wrapped_done))))
)