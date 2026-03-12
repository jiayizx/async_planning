(define (problem make_corn_soup)
  (:domain corn_soup)

  (:init
    (saute_pending) (simmer_pending) (husk_pending) (prep_pending) (blend_pending)
  )

  (:goal (and
    (saute_done) (simmer_done) (husk_done) (prep_done) (blend_done)
  ))
)
