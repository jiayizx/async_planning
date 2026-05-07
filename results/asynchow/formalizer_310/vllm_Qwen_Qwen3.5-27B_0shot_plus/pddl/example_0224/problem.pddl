(define (problem make_den)
  (:domain italian-greyhound-den)
  
  (:init
    (find_materials_pending)
    (make_pillow_case_pending)
    (cut_jacket_pending)
    (sew_together_pending)
    (acclimate_pet_pending)
  )

  (:goal (and
    (find_materials_done)
    (make_pillow_case_done)
    (cut_jacket_done)
    (sew_together_done)
    (acclimate_pet_done)
  ))
)
