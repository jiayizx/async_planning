(define (problem diagnose_patellar_luxation)
  (:domain patellar_luxation_diagnosis)
  
  (:init
    (physical_exam_pending)
    (xray_leg_pending)
    (manage_mild_pending)
    (surgery_severe_pending)
  )
  
  (:goal (and
    (physical_exam_done)
    (xray_leg_done)
    (manage_mild_done)
    (surgery_severe_done)
  ))
)