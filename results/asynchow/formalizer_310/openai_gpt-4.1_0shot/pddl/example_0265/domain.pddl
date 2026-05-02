(define (domain sort_out_life)
  (:requirements :durative-actions)
  (:predicates
    (learn_skill_pending)
    (learn_skill_done)
    (write_resume_pending)
    (write_resume_done)
    (make_change_pending)
    (make_change_done)
    (go_school_pending)
    (go_school_done)
  )

  (:durative-action learn_skill
    :parameters ()
    :duration (= ?duration 7884000) ; 3 months = 3*30.44*24*3600 = 7,884,000 seconds
    :condition (at start (learn_skill_pending))
    :effect (and (at start (not (learn_skill_pending))) (at end (learn_skill_done)))
  )

  (:durative-action write_resume
    :parameters ()
    :duration (= ?duration 1209600) ; 2 weeks = 2*7*24*3600 = 1,209,600 seconds
    :condition (and (at start (write_resume_pending)) (at start (learn_skill_done)) (at start (go_school_done)))
    :effect (and (at start (not (write_resume_pending))) (at end (write_resume_done)))
  )

  (:durative-action make_change
    :parameters ()
    :duration (= ?duration 5256000) ; 2 months = 2*30.44*24*3600 = 5,256,000 seconds
    :condition (and (at start (make_change_pending)) (at start (write_resume_done)))
    :effect (and (at start (not (make_change_pending))) (at end (make_change_done)))
  )

  (:durative-action go_school
    :parameters ()
    :duration (= ?duration 126230400) ; 4 years = 4*365.25*24*3600 = 126,230,400 seconds
    :condition (at start (go_school_pending))
    :effect (and (at start (not (go_school_pending))) (at end (go_school_done)))
  )
)
