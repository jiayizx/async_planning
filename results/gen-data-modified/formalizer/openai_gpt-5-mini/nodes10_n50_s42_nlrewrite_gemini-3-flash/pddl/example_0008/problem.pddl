(define (problem roast-turnips-prob)
  (:domain roast-turnips)
  (:init
    (season_pending) (preheat_pending) (roast_pending) (peel_pending) (wash_pending)
    (place_pending) (arrange_pending) (purchase_pending) (take_sheet_pending) (dice_pending)
  )
  (:goal (and
    (season_done) (preheat_done) (roast_done) (peel_done) (wash_done)
    (place_done) (arrange_done) (purchase_done) (take_sheet_done) (dice_done)
  ))
)
