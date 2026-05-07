(define (domain memorable_vacation)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (plan_done)
    (invite_done)
    (split_done)
    (meet_done)
  )

  (:durative-action do_research
    :parameters ()
    :duration (= ?duration 14400)
    :condition (at start (step_pending step1))
    :effect (and
              (at start (not (step_pending step1)))
              (at end (step_done step1))
              (at end (research_done))
            )
  )

  (:durative-action do_plan
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (step_pending step2)) (at start (research_done)))
    :effect (and
              (at start (not (step_pending step2)))
              (at end (step_done step2))
              (at end (plan_done))
            )
  )

  (:durative-action do_invite
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step3)) (at start (plan_done)))
    :effect (and
              (at start (not (step_pending step3)))
              (at end (step_done step3))
              (at end (invite_done))
            )
  )

  (:durative-action do_split_cost
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step4)) (at start (plan_done)))
    :effect (and
              (at start (not (step_pending step4)))
              (at end (step_done step4))
              (at end (split_done))
            )
  )

  (:durative-action do_meet_friends
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending step5)) (at start (invite_done)) (at start (split_done)))
    :effect (and
              (at start (not (step_pending step5)))
              (at end (step_done step5))
              (at end (meet_done))
            )
  )
)
