(define (problem dispose_xray_film_prob)
(:domain dispose_xray_film)
(:init
(cut_info_pending)
(donate_films_pending)
(arts_crafts_pending)
)
(:goal (and
(cut_info_done)
(donate_films_done)
(arts_crafts_done)
))
)