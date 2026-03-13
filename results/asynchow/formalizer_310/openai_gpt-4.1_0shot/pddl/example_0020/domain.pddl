(define (domain writers-dream)
  (:requirements :durative-actions)
  (:predicates
    (search_genres_pending)
    (search_genres_done)
    (search_skills_pending)
    (search_skills_done)
    (take_class_pending)
    (take_class_done)
    (practice_pending)
    (practice_done)
    (write_book_pending)
    (write_book_done)
    (shop_book_pending)
    (shop_book_done)
    (get_famous_pending)
    (get_famous_done)
  )

  (:durative-action do_search_genres
    :parameters ()
    :duration (= ?duration 72000)
    :condition (at start (search_genres_pending))
    :effect (and (at start (not (search_genres_pending))) (at end (search_genres_done)))
  )

  (:durative-action do_search_skills
    :parameters ()
    :duration (= ?duration 18000)
    :condition (at start (search_skills_pending))
    :effect (and (at start (not (search_skills_pending))) (at end (search_skills_done)))
  )

  (:durative-action do_take_class
    :parameters ()
    :duration (= ?duration 36000)
    :condition (and (at start (take_class_pending)) (at start (search_genres_done)) (at start (search_skills_done)))
    :effect (and (at start (not (take_class_pending))) (at end (take_class_done)))
  )

  (:durative-action do_practice
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (practice_pending)) (at start (take_class_done)))
    :effect (and (at start (not (practice_pending))) (at end (practice_done)))
  )

  (:durative-action do_write_book
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (write_book_pending)) (at start (practice_done)))
    :effect (and (at start (not (write_book_pending))) (at end (write_book_done)))
  )

  (:durative-action do_shop_book
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (shop_book_pending)) (at start (write_book_done)))
    :effect (and (at start (not (shop_book_pending))) (at end (shop_book_done)))
  )

  (:durative-action do_get_famous
    :parameters ()
    :duration (= ?duration 31536000)
    :condition (and (at start (get_famous_pending)) (at start (shop_book_done)))
    :effect (and (at start (not (get_famous_pending))) (at end (get_famous_done)))
  )
)
