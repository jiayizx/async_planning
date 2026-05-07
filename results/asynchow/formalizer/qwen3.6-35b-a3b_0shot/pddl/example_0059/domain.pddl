(define (domain weekend_night)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates (step_done ?s - step) (step_pending ?s - step)
               (plan_made) (friends_invited) (groceries_shopped) (gas_filled) (friends_met))
  (:durative-action make_plan
    :parameters ()
    :duration 1800
    :condition (at start (step_pending step1))
    :effect (and (at start (not (step_pending step1)))
                 (at end (step_done step1))
                 (at end (plan_made))))
  (:durative-action call_friends
    :parameters ()
    :duration 1800
    :condition (and (at start (step_pending step2))
                    (at start (plan_made)))
    :effect (and (at start (not (step_pending step2)))
                 (at end (step_done step2))
                 (at end (friends_invited))))
  (:durative-action shop_groceries
    :parameters ()
    :duration 3600
    :condition (and (at start (step_pending step3))
                    (at start (plan_made)))
    :effect (and (at start (not (step_pending step3)))
                 (at end (step_done step3))
                 (at end (groceries_shopped))))
  (:durative-action fill_gas
    :parameters ()
    :duration 600
    :condition (and (at start (step_pending step4))
                    (at start (friends_invited))
                    (at start (groceries_shopped)))
    :effect (and (at start (not (step_pending step4)))
                 (at end (step_done step4))
                 (at end (gas_filled))))
  (:durative-action meet_friends
    :parameters ()
    :duration 1800
    :condition (and (at start (step_pending step5))
                    (at start (gas_filled)))
    :effect (and (at start (not (step_pending step5)))
                 (at end (step_done step5))
                 (at end (friends_met))))
)