(define (domain repair_leather_seats)
  (:requirements :durative-actions)
  (:predicates
    (choose_patch_pending)
    (choose_patch_done)
    (cut_patch_pending)
    (cut_patch_done)
    (put_wax_paper_pending)
    (put_wax_paper_done)
    (attach_patch_pending)
    (attach_patch_done)
    (dry_adhesive_pending)
    (dry_adhesive_done)
  )

  (:durative-action do_choose_patch
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (choose_patch_pending))
    :effect (and
              (at start (not (choose_patch_pending)))
              (at end (choose_patch_done))
            )
  )

  (:durative-action do_cut_patch
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (cut_patch_pending)) (at start (choose_patch_done)))
    :effect (and
              (at start (not (cut_patch_pending)))
              (at end (cut_patch_done))
            )
  )

  (:durative-action do_put_wax_paper
    :parameters ()
    :duration (= ?duration 120)
    :condition (at start (put_wax_paper_pending))
    :effect (and
              (at start (not (put_wax_paper_pending)))
              (at end (put_wax_paper_done))
            )
  )

  (:durative-action do_attach_patch
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (attach_patch_pending)) (at start (cut_patch_done)) (at start (put_wax_paper_done)))
    :effect (and
              (at start (not (attach_patch_pending)))
              (at end (attach_patch_done))
            )
  )

  (:durative-action do_dry_adhesive
    :parameters ()
    :duration (= ?duration 7200)
    :condition (and (at start (dry_adhesive_pending)) (at start (attach_patch_done)))
    :effect (and
              (at start (not (dry_adhesive_pending)))
              (at end (dry_adhesive_done))
            )
  )
)
