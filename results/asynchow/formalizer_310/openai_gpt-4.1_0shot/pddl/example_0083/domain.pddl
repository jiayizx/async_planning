(define (domain metal-symphony)
  (:requirements :durative-actions)
  (:predicates
    (plug_guitar_into_amp_pending)
    (plug_guitar_into_amp_done)
    (pick_up_sheet_music_paper_pending)
    (pick_up_sheet_music_paper_done)
    (pen_out_riff_pending)
    (pen_out_riff_done)
    (revise_until_perfect_pending)
    (revise_until_perfect_done)
    (pick_up_pen_pending)
    (pick_up_pen_done)
    (turn_on_amp_pending)
    (turn_on_amp_done)
    (come_up_with_killer_riff_pending)
    (come_up_with_killer_riff_done)
  )

  (:durative-action plug_guitar_into_amp
    :parameters ()
    :duration (= ?duration 35)
    :condition (at start (plug_guitar_into_amp_pending))
    :effect (and (at start (not (plug_guitar_into_amp_pending))) (at end (plug_guitar_into_amp_done)))
  )

  (:durative-action pick_up_sheet_music_paper
    :parameters ()
    :duration (= ?duration 35)
    :condition (at start (pick_up_sheet_music_paper_pending))
    :effect (and (at start (not (pick_up_sheet_music_paper_pending))) (at end (pick_up_sheet_music_paper_done)))
  )

  (:durative-action pen_out_riff
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pen_out_riff_pending))
                    (at start (pick_up_sheet_music_paper_done))
                    (at start (pick_up_pen_done))
                    (at start (come_up_with_killer_riff_done)))
    :effect (and (at start (not (pen_out_riff_pending))) (at end (pen_out_riff_done)))
  )

  (:durative-action revise_until_perfect
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (revise_until_perfect_pending))
                    (at start (pen_out_riff_done)))
    :effect (and (at start (not (revise_until_perfect_pending))) (at end (revise_until_perfect_done)))
  )

  (:durative-action pick_up_pen
    :parameters ()
    :duration (= ?duration 35)
    :condition (at start (pick_up_pen_pending))
    :effect (and (at start (not (pick_up_pen_pending))) (at end (pick_up_pen_done)))
  )

  (:durative-action turn_on_amp
    :parameters ()
    :duration (= ?duration 10)
    :condition (and (at start (turn_on_amp_pending))
                    (at start (plug_guitar_into_amp_done)))
    :effect (and (at start (not (turn_on_amp_pending))) (at end (turn_on_amp_done)))
  )

  (:durative-action come_up_with_killer_riff
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (come_up_with_killer_riff_pending))
                    (at start (turn_on_amp_done)))
    :effect (and (at start (not (come_up_with_killer_riff_pending))) (at end (come_up_with_killer_riff_done)))
  )
)
