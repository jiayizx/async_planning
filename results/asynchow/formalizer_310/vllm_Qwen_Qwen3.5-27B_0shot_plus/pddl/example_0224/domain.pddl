(define (domain italian-greyhound-den)
  (:requirements :durative-actions)
  
  (:predicates
    (find_materials_pending)
    (find_materials_done)
    (make_pillow_case_pending)
    (make_pillow_case_done)
    (cut_jacket_pending)
    (cut_jacket_done)
    (sew_together_pending)
    (sew_together_done)
    (acclimate_pet_pending)
    (acclimate_pet_done)
  )

  (:durative-action find_materials
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (find_materials_pending)))
    :effect (and (at start (not (find_materials_pending)))
                 (at end (find_materials_done)))
  )

  (:durative-action make_pillow_case
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (make_pillow_case_pending))
                    (at start (find_materials_done)))
    :effect (and (at start (not (make_pillow_case_pending)))
                 (at end (make_pillow_case_done)))
  )

  (:durative-action cut_jacket
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (cut_jacket_pending))
                    (at start (find_materials_done)))
    :effect (and (at start (not (cut_jacket_pending)))
                 (at end (cut_jacket_done)))
  )

  (:durative-action sew_together
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (sew_together_pending))
                    (at start (make_pillow_case_done))
                    (at start (cut_jacket_done)))
    :effect (and (at start (not (sew_together_pending)))
                 (at end (sew_together_done)))
  )

  (:durative-action acclimate_pet
    :parameters ()
    :duration (= ?duration 1209600)
    :condition (and (at start (acclimate_pet_pending))
                    (at start (sew_together_done)))
    :effect (and (at start (not (acclimate_pet_pending)))
                 (at end (acclimate_pet_done)))
  )
)
