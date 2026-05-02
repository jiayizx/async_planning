(define (domain house_coloring)
  (:requirements :durative-actions)
  (:predicates
    (purchase_paint_pending)
    (purchase_paint_done)
    (apply_second_coat_pending)
    (apply_second_coat_done)
    (hang_artwork_pending)
    (hang_artwork_done)
    (apply_primer_pending)
    (apply_primer_done)
    (clean_brushes_pending)
    (clean_brushes_done)
    (browse_galleries_pending)
    (browse_galleries_done)
    (peel_tape_pending)
    (peel_tape_done)
    (tape_edges_pending)
    (tape_edges_done)
    (lay_drop_cloths_pending)
    (lay_drop_cloths_done)
    (wait_cure_pending)
    (wait_cure_done)
  )

  ;; Step 1: Purchase cans of custom-mixed paint (2700s), requires Step 6
  (:durative-action do_purchase_paint
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (purchase_paint_pending)) (at start (browse_galleries_done)))
    :effect (and (at start (not (purchase_paint_pending))) (at end (purchase_paint_done)))
  )

  ;; Step 2: Apply a second coat of paint to the walls (14400s), requires Step 4
  (:durative-action do_apply_second_coat
    :parameters ()
    :duration (= ?duration 14400)
    :condition (and (at start (apply_second_coat_pending)) (at start (apply_primer_done)))
    :effect (and (at start (not (apply_second_coat_pending))) (at end (apply_second_coat_done)))
  )

  ;; Step 3: Hang colorful framed artwork on the dry walls (3600s), requires Step 10
  (:durative-action do_hang_artwork
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (hang_artwork_pending)) (at start (wait_cure_done)))
    :effect (and (at start (not (hang_artwork_pending))) (at end (hang_artwork_done)))
  )

  ;; Step 4: Apply the first coat of primer (21600s), requires Step 8
  (:durative-action do_apply_primer
    :parameters ()
    :duration (= ?duration 21600)
    :condition (and (at start (apply_primer_pending)) (at start (tape_edges_done)))
    :effect (and (at start (not (apply_primer_pending))) (at end (apply_primer_done)))
  )

  ;; Step 5: Clean the paintbrushes and rollers (1200s), requires Step 1
  (:durative-action do_clean_brushes
    :parameters ()
    :duration (= ?duration 1200)
    :condition (and (at start (clean_brushes_pending)) (at start (purchase_paint_done)))
    :effect (and (at start (not (clean_brushes_pending))) (at end (clean_brushes_done)))
  )

  ;; Step 6: Browse online galleries for color inspiration (7200s), no prerequisites
  (:durative-action do_browse_galleries
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (browse_galleries_pending))
    :effect (and (at start (not (browse_galleries_pending))) (at end (browse_galleries_done)))
  )

  ;; Step 7: Peel off the painter's tape from the trim (900s), requires Step 2
  (:durative-action do_peel_tape
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (peel_tape_pending)) (at start (apply_second_coat_done)))
    :effect (and (at start (not (peel_tape_pending))) (at end (peel_tape_done)))
  )

  ;; Step 8: Tape off the baseboards and ceiling edges (10800s), requires Step 9
  (:durative-action do_tape_edges
    :parameters ()
    :duration (= ?duration 10800)
    :condition (and (at start (tape_edges_pending)) (at start (lay_drop_cloths_done)))
    :effect (and (at start (not (tape_edges_pending))) (at end (tape_edges_done)))
  )

  ;; Step 9: Lay down heavy-duty drop cloths (1800s), requires Step 1
  (:durative-action do_lay_drop_cloths
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (lay_drop_cloths_pending)) (at start (purchase_paint_done)))
    :effect (and (at start (not (lay_drop_cloths_pending))) (at end (lay_drop_cloths_done)))
  )

  ;; Step 10: Wait for the final coat of paint to cure completely (172800s), requires Step 2
  (:durative-action do_wait_cure
    :parameters ()
    :duration (= ?duration 172800)
    :condition (and (at start (wait_cure_pending)) (at start (apply_second_coat_done)))
    :effect (and (at start (not (wait_cure_pending))) (at end (wait_cure_done)))
  )
)
