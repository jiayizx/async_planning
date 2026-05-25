(define (domain school_preparation)
  (:requirements :durative-actions)
  
  (:predicates
    (get_supplies_list_pending)
    (get_supplies_list_done)
    (buy_supplies_pending)
    (buy_supplies_done)
    (organize_supplies_pending)
    (organize_supplies_done)
    (get_books_list_pending)
    (get_books_list_done)
    (buy_books_pending)
    (buy_books_done)
    (pack_backpack_pending)
    (pack_backpack_done)
  )

  (:durative-action get_supplies_list
    :parameters ()
    :duration (= ?duration 600)
    :condition (and (at start (get_supplies_list_pending)))
    :effect (and (at start (not (get_supplies_list_pending)))
                 (at end (get_supplies_list_done)))
  )

  (:durative-action buy_supplies
    :parameters ()
    :duration (= ?duration 2700)
    :condition (and (at start (buy_supplies_pending))
                    (at start (get_supplies_list_done)))
    :effect (and (at start (not (buy_supplies_pending)))
                 (at end (buy_supplies_done)))
  )

  (:durative-action organize_supplies
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (organize_supplies_pending))
                    (at start (buy_supplies_done))
                    (at start (buy_books_done)))
    :effect (and (at start (not (organize_supplies_pending)))
                 (at end (organize_supplies_done)))
  )

  (:durative-action get_books_list
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (get_books_list_pending)))
    :effect (and (at start (not (get_books_list_pending)))
                 (at end (get_books_list_done)))
  )

  (:durative-action buy_books
    :parameters ()
    :duration (= ?duration 1800)
    :condition (and (at start (buy_books_pending))
                    (at start (get_books_list_done)))
    :effect (and (at start (not (buy_books_pending)))
                 (at end (buy_books_done)))
  )

  (:durative-action pack_backpack
    :parameters ()
    :duration (= ?duration 900)
    :condition (and (at start (pack_backpack_pending))
                    (at start (organize_supplies_done)))
    :effect (and (at start (not (pack_backpack_pending)))
                 (at end (pack_backpack_done)))
  )
)
