(define (problem remove-lead-from-water-problem)
  (:domain remove-lead-from-water)
  (:init
    (find_lab_pending)
    (collect_samples_pending)
    (test_samples_pending)
  )
  (:goal (and
    (find_lab_done)
    (collect_samples_done)
    (test_samples_done)
  ))
)
