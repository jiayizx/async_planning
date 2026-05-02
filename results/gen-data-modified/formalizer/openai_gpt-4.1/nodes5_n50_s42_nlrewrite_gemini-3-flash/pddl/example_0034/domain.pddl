(define (domain poetry-writing)
  (:requirements :durative-actions)
  (:predicates
    (reflect_pending)
    (reflect_done)
    (draft_pending)
    (draft_done)
    (readaloud_pending)
    (readaloud_done)
    (selectplace_pending)
    (selectplace_done)
    (completeverses_pending)
    (completeverses_done)
  )

  (:durative-action reflect_on_memory
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (reflect_pending)) (at start (selectplace_done)))
    :effect (and (at start (not (reflect_pending))) (at end (reflect_done)))
  )

  (:durative-action draft_opening_stanza
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (draft_pending)) (at start (selectplace_done)))
    :effect (and (at start (not (draft_pending))) (at end (draft_done)))
  )

  (:durative-action read_final_poem_aloud
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (readaloud_pending)) (at start (completeverses_done)))
    :effect (and (at start (not (readaloud_pending))) (at end (readaloud_done)))
  )

  (:durative-action select_quiet_place
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (selectplace_pending))
    :effect (and (at start (not (selectplace_pending))) (at end (selectplace_done)))
  )

  (:durative-action complete_remaining_verses
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (completeverses_pending)) (at start (draft_done)) (at start (selectplace_done)))
    :effect (and (at start (not (completeverses_pending))) (at end (completeverses_done)))
  )
)
