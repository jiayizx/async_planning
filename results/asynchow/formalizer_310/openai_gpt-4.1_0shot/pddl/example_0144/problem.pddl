(define (problem dispose_xray_film-problem)
  (:domain dispose_xray_film)
  (:init
    (cut_info_pending)
    (donate_pending)
    (arts_pending)
  )
  (:goal (and (cut_info_done) (donate_done) (arts_done)))
)
