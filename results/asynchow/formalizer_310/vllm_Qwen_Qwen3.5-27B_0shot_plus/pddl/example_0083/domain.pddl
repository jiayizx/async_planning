(define (domain metal_symphony)
  (:requirements :durative-actions)
  
  (:predicates
    (plug_guitar_pending)
    (plug_guitar_done)
    (pick_sheet_music_pending)
    (pick_sheet_music_done)
    (pen_riff_pending)
    (pen_riff_done)
    (revise_pending)
    (revise_done)
    (pick_pen_pending)
    (pick_pen_done)
    (turn_on_amp_pending)
    (turn_on_amp_done)
    (come_up_riff_pending)
    (come_up_riff_done)
  )

  (:durative-action plug_guitar
    :parameters ()
    :duration (= ?duration 35)
    :condition (at start (plug_guitar_pending))
    :effect (and (at start (not (plug_guitar_pending))) (at end (plug_guitar_done)))
  )

  (:durative-action pick_sheet_music
    :parameters ()
    :duration (= ?duration 35)
    :condition (at start (pick_sheet_music_pending))
    :effect (and (at start (not (pick_sheet_music_pending))) (at end (pick_sheet_music_done)))
  )

  (:durative-action pen_riff
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pen_riff_pending))
                    (at start (pick_sheet_music_done))
                    (at start (pick_pen_done))
                    (at start (come_up_riff_done)))
    :effect (and (at start (not (pen_riff_pending))) (at end (pen_riff_done)))
  )

  (:durative-action revise
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (revise_pending))
                    (at start (pen_riff_done)))
    :effect (and (at start (not (revise_pending))) (at end (revise_done)))
  )

  (:durative-action pick_pen
    :parameters ()
    :duration (= ?duration 35)
    :condition (at start (pick_pen_pending))
    :effect (and (at start (not (pick_pen_pending))) (at end (pick_pen_done)))
  )

  (:durative-action turn_on_amp
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (turn_on_amp_pending))
                    (at start (plug_guitar_done)))
    :effect (and (at start (not (turn_on_amp_pending))) (at end (turn_on_amp_done)))
  )

  (:durative-action come_up_riff
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (come_up_riff_pending))
                    (at start (turn_on_amp_done)))
    :effect (and (at start (not (come_up_riff_pending))) (at end (come_up_riff_done)))
  )
)
