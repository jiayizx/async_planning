(define (domain child-safety-warning-signs)
  (:requirements :durative-actions)
  (:predicates
    (attend_seminar_pending)
    (attend_seminar_done)
    (review_checklist_pending)
    (review_checklist_done)
    (research_grooming_pending)
    (research_grooming_done)
    (observe_child_pending)
    (observe_child_done)
    (document_incidents_pending)
    (document_incidents_done)
  )

  (:durative-action attend_seminar
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (attend_seminar_pending)) (at start (research_grooming_done)))
    :effect (and (at start (not (attend_seminar_pending))) (at end (attend_seminar_done)))
  )

  (:durative-action review_checklist
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (review_checklist_pending)) (at start (attend_seminar_done)) (at start (research_grooming_done)))
    :effect (and (at start (not (review_checklist_pending))) (at end (review_checklist_done)))
  )

  (:durative-action research_grooming
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (research_grooming_pending))
    :effect (and (at start (not (research_grooming_pending))) (at end (research_grooming_done)))
  )

  (:durative-action observe_child
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (observe_child_pending)) (at start (research_grooming_done)))
    :effect (and (at start (not (observe_child_pending))) (at end (observe_child_done)))
  )

  (:durative-action document_incidents
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (document_incidents_pending)) (at start (observe_child_done)) (at start (research_grooming_done)))
    :effect (and (at start (not (document_incidents_pending))) (at end (document_incidents_done)))
  )
)
