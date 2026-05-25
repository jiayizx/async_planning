(define (domain book_identification)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (archives_searched)
    (entry_printed)
    (cross_referenced)
    (plot_posted)
    (community_suggested)
    (catalog_requested)
    (genre_located)
    (isbn_verified)
    (final_confirmed)
    (printer_checked)
  )

  (:durative-action search_archives
    :parameters (?s - step)
    :duration (= ?duration 600)
    :condition (and (at start (step_pending ?s)) (at start (genre_located)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (archives_searched)))
  )

  (:durative-action print_entry
    :parameters (?s - step)
    :duration (= ?duration 120)
    :condition (and (at start (step_pending ?s)) (at start (printer_checked)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (entry_printed)))
  )

  (:durative-action cross_reference
    :parameters (?s - step)
    :duration (= ?duration 3600)
    :condition (and (at start (step_pending ?s)) (at start (plot_posted)) (at start (community_suggested)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (cross_referenced)))
  )

  (:durative-action post_plot
    :parameters (?s - step)
    :duration (= ?duration 900)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (plot_posted)))
  )

  (:durative-action wait_community
    :parameters (?s - step)
    :duration (= ?duration 21600)
    :condition (and (at start (step_pending ?s)) (at start (plot_posted)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (community_suggested)))
  )

  (:durative-action request_catalog
    :parameters (?s - step)
    :duration (= ?duration 1800)
    :condition (and (at start (step_pending ?s)) (at start (archives_searched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (catalog_requested)))
  )

  (:durative-action locate_genre
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (genre_located)))
  )

  (:durative-action verify_isbn
    :parameters (?s - step)
    :duration (= ?duration 2700)
    :condition (and (at start (step_pending ?s)) (at start (cross_referenced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (isbn_verified)))
  )

  (:durative-action confirm_final
    :parameters (?s - step)
    :duration (= ?duration 300)
    :condition (and (at start (step_pending ?s)) (at start (catalog_requested)) (at start (isbn_verified)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (final_confirmed)))
  )

  (:durative-action check_printer
    :parameters (?s - step)
    :duration (= ?duration 60)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (printer_checked)))
  )
)