(define (domain make_living_performing)
  (:requirements :typing :durative-actions)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (research_done)
    (decided)
    (studied)
    (free_work_done)
    (name_made)
    (agent_obtained)
  )

  (:durative-action do_step1
    :duration (= ?duration 432000)
    :condition (at start (step_pending step1))
    :effect (and
      (at start (not (step_pending step1)))
      (at end (step_done step1))
      (at end (research_done))
    )
  )

  (:durative-action do_step2
    :duration (= ?duration 172800)
    :condition (at start (and (step_pending step2) (research_done)))
    :effect (and
      (at start (not (step_pending step2)))
      (at end (step_done step2))
      (at end (decided))
    )
  )

  (:durative-action do_step3
    :duration (= ?duration 94608000)
    :condition (at start (and (step_pending step3) (decided)))
    :effect (and
      (at start (not (step_pending step3)))
      (at end (step_done step3))
      (at end (studied))
    )
  )

  (:durative-action do_step4
    :duration (= ?duration 31536000)
    :condition (at start (and (step_pending step4) (decided)))
    :effect (and
      (at start (not (step_pending step4)))
      (at end (step_done step4))
      (at end (free_work_done))
    )
  )

  (:durative-action do_step5
    :duration (= ?duration 31536000)
    :condition (at start (and (step_pending step5) (studied) (free_work_done)))
    :effect (and
      (at start (not (step_pending step5)))
      (at end (step_done step5))
      (at end (name_made))
    )
  )

  (:durative-action do_step6
    :duration (= ?duration 7776000)
    :condition (at start (and (step_pending step6) (name_made)))
    :effect (and
      (at start (not (step_pending step6)))
      (at end (step_done step6))
      (at end (agent_obtained))
    )
  )
)
