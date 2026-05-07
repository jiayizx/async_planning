(define (domain writer_dream)
  (:requirements :typing :durative-actions)
  (:types step)

  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)

    ;; unique semantic predicates produced by each step
    (searched_genres_done)
    (searched_skills_done)
    (took_class_done)
    (practiced_done)
    (wrote_book_done)
    (shopped_done)
    (famous_done)
  )

  ;; Step 1: Search the Internet for popular genres. (72000 s)
  (:durative-action do_search_genres
    :parameters (?s - step)
    :duration (= ?duration 72000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (searched_genres_done))
    )
  )

  ;; Step 2: Search the Internet on developing writing skills. (18000 s)
  (:durative-action do_search_skills
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (searched_skills_done))
    )
  )

  ;; Step 3: Take a writing class. (36000 s)
  (:durative-action do_take_class
    :parameters (?s - step)
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending ?s)) (at start (searched_genres_done)) (at start (searched_skills_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (took_class_done))
    )
  )

  ;; Step 4: Practice writing an hour a day. (7776000 s)
  (:durative-action do_practice
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (took_class_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (practiced_done))
    )
  )

  ;; Step 5: Write a book. (31536000 s)
  (:durative-action do_write_book
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (practiced_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (wrote_book_done))
    )
  )

  ;; Step 6: Shop the book around for publishers. (7776000 s)
  (:durative-action do_shop_book
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (wrote_book_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (shopped_done))
    )
  )

  ;; Step 7: Make a lot of money and get famous. (31536000 s)
  (:durative-action do_become_famous
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (shopped_done)))
    :effect (and
      (at start (not (step_pending ?s)))
      (at end (step_done ?s))
      (at end (famous_done))
    )
  )
)
