(define (domain lacrosse-tryout)
  (:requirements :durative-actions)
  (:predicates
    (find_out_when_tryouts_are_pending)
    (find_out_when_tryouts_are_done)
    (practice_for_tryouts_pending)
    (practice_for_tryouts_done)
    (improve_lacrosse_skills_pending)
    (improve_lacrosse_skills_done)
    (stay_after_school_for_tryouts_pending)
    (stay_after_school_for_tryouts_done)
    (go_to_the_tryouts_pending)
    (go_to_the_tryouts_done)
  )

  (:durative-action find_out_when_tryouts_are
    :parameters ()
    :duration (= ?duration 600)
    :condition (at start (find_out_when_tryouts_are_pending))
    :effect (and
      (at start (not (find_out_when_tryouts_are_pending)))
      (at end (find_out_when_tryouts_are_done))
    )
  )

  (:durative-action practice_for_tryouts
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and
      (at start (practice_for_tryouts_pending))
      (at start (find_out_when_tryouts_are_done))
    )
    :effect (and
      (at start (not (practice_for_tryouts_pending)))
      (at end (practice_for_tryouts_done))
    )
  )

  (:durative-action improve_lacrosse_skills
    :parameters ()
    :duration (= ?duration 18000)
    :condition (and
      (at start (improve_lacrosse_skills_pending))
      (at start (find_out_when_tryouts_are_done))
    )
    :effect (and
      (at start (not (improve_lacrosse_skills_pending)))
      (at end (improve_lacrosse_skills_done))
    )
  )

  (:durative-action stay_after_school_for_tryouts
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (stay_after_school_for_tryouts_pending))
      (at start (practice_for_tryouts_done))
      (at start (improve_lacrosse_skills_done))
    )
    :effect (and
      (at start (not (stay_after_school_for_tryouts_pending)))
      (at end (stay_after_school_for_tryouts_done))
    )
  )

  (:durative-action go_to_the_tryouts
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and
      (at start (go_to_the_tryouts_pending))
      (at start (stay_after_school_for_tryouts_done))
    )
    :effect (and
      (at start (not (go_to_the_tryouts_pending)))
      (at end (go_to_the_tryouts_done))
    )
  )
)
