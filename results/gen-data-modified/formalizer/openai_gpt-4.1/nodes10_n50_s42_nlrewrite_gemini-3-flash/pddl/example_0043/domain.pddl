(define (domain obtain_book_name)
  (:requirements :durative-actions)
  (:predicates
    (log_in_pending)
    (log_in_done)
    (print_citation_pending)
    (print_citation_done)
    (crossref_biblio_pending)
    (crossref_biblio_done)
    (identify_genre_pending)
    (identify_genre_done)
    (scan_archives_pending)
    (scan_archives_done)
    (search_inventory_pending)
    (search_inventory_done)
    (reset_password_pending)
    (reset_password_done)
    (verify_isbn_pending)
    (verify_isbn_done)
    (retrieve_title_pending)
    (retrieve_title_done)
    (confirm_printer_pending)
    (confirm_printer_done)
  )

  (:durative-action do_log_in
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (log_in_pending)) (at start (reset_password_done)))
    :effect (and (at start (not (log_in_pending))) (at end (log_in_done)))
  )

  (:durative-action do_print_citation
    :parameters ()
    :duration (= ?duration 60)
    :condition (and (at start (print_citation_pending)) (at start (confirm_printer_done)))
    :effect (and (at start (not (print_citation_pending))) (at end (print_citation_done)))
  )

  (:durative-action do_crossref_biblio
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (crossref_biblio_pending)) (at start (identify_genre_done)) (at start (scan_archives_done)))
    :effect (and (at start (not (crossref_biblio_pending))) (at end (crossref_biblio_done)))
  )

  (:durative-action do_identify_genre
    :parameters ()
    :duration (= ?duration 7200)
    :condition (at start (identify_genre_pending))
    :effect (and (at start (not (identify_genre_pending))) (at end (identify_genre_done)))
  )

  (:durative-action do_scan_archives
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (scan_archives_pending)) (at start (identify_genre_done)))
    :effect (and (at start (not (scan_archives_pending))) (at end (scan_archives_done)))
  )

  (:durative-action do_search_inventory
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (search_inventory_pending)) (at start (log_in_done)))
    :effect (and (at start (not (search_inventory_pending))) (at end (search_inventory_done)))
  )

  (:durative-action do_reset_password
    :parameters ()
    :duration (= ?duration 300)
    :condition (at start (reset_password_pending))
    :effect (and (at start (not (reset_password_pending))) (at end (reset_password_done)))
  )

  (:durative-action do_verify_isbn
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (verify_isbn_pending)) (at start (crossref_biblio_done)))
    :effect (and (at start (not (verify_isbn_pending))) (at end (verify_isbn_done)))
  )

  (:durative-action do_retrieve_title
    :parameters ()
    :duration (= ?duration 30)
    :condition (and (at start (retrieve_title_pending)) (at start (search_inventory_done)) (at start (verify_isbn_done)))
    :effect (and (at start (not (retrieve_title_pending))) (at end (retrieve_title_done)))
  )

  (:durative-action do_confirm_printer
    :parameters ()
    :duration (= ?duration 180)
    :condition (at start (confirm_printer_pending))
    :effect (and (at start (not (confirm_printer_pending))) (at end (confirm_printer_done)))
  )
)
