(define (problem pen_metal_symphony)
  (:domain metal_symphony)
  
  (:init
    (plug_guitar_pending)
    (pick_sheet_music_pending)
    (pen_riff_pending)
    (revise_pending)
    (pick_pen_pending)
    (turn_on_amp_pending)
    (come_up_riff_pending)
  )

  (:goal (and
    (plug_guitar_done)
    (pick_sheet_music_done)
    (pen_riff_done)
    (revise_done)
    (pick_pen_done)
    (turn_on_amp_done)
    (come_up_riff_done)
  ))
)
