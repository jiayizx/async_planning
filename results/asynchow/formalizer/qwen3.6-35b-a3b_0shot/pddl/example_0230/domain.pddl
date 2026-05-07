(define (domain contact_leah)
  (:requirements :durative-actions :typing)
  (:types step - object)
  (:predicates (step_pending ?s - step)
               (step_done ?s - step)
               (tweet_done)
               (instagram_done)
               (facebook_done)
               (reddit_done)
               (watchout_done))
  (:durative-action do_step1
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (watchout_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (tweet_done))))
  (:durative-action do_step2
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (watchout_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (instagram_done))))
  (:durative-action do_step3
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (watchout_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (facebook_done))))
  (:durative-action do_step4
    :parameters (?s - step)
    :duration 120
    :condition (and (at start (step_pending ?s)) (at start (watchout_done)))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (reddit_done))))
  (:durative-action do_step5
    :parameters (?s - step)
    :duration 60
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s)))
                 (at end (step_done ?s))
                 (at end (watchout_done))))
)