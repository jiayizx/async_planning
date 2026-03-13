(define (domain gastritis-cure)
  (:requirements :durative-actions)
  (:predicates
    (antibiotics_pending)
    (antibiotics_done)
    (consultation_pending)
    (consultation_done)
    (mealplan_pending)
    (mealplan_done)
    (endoscopy_pending)
    (endoscopy_done)
    (diet_pending)
    (diet_done)
  )

  (:durative-action do_antibiotics
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (antibiotics_pending)) (at start (endoscopy_done)))
    :effect (and (at start (not (antibiotics_pending))) (at end (antibiotics_done)))
  )

  (:durative-action do_consultation
    :parameters ()
    :duration (= ?duration 900)
    :condition (at start (consultation_pending))
    :effect (and (at start (not (consultation_pending))) (at end (consultation_done)))
  )

  (:durative-action do_mealplan
    :parameters ()
    :duration (= ?duration 3600)
    :condition (at start (mealplan_pending))
    :effect (and (at start (not (mealplan_pending))) (at end (mealplan_done)))
  )

  (:durative-action do_endoscopy
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (endoscopy_pending)) (at start (consultation_done)))
    :effect (and (at start (not (endoscopy_pending))) (at end (endoscopy_done)))
  )

  (:durative-action do_diet
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (diet_pending)) (at start (mealplan_done)))
    :effect (and (at start (not (diet_pending))) (at end (diet_done)))
  )
)
