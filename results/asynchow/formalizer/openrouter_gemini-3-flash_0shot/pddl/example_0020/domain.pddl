(define (domain writers_dream)
  (:requirements :durative-actions :typing)
  (:types step)
  (:predicates
    (step_pending ?s - step)
    (step_done ?s - step)
    (genres_researched)
    (skills_researched)
    (class_taken)
    (writing_practiced)
    (book_written)
    (publisher_found)
    (dream_achieved)
  )

  (:durative-action research_genres
    :parameters (?s - step)
    :duration (= ?duration 72000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (genres_researched)))
  )

  (:durative-action research_skills
    :parameters (?s - step)
    :duration (= ?duration 18000)
    :condition (at start (step_pending ?s))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (skills_researched)))
  )

  (:durative-action take_class
    :parameters (?s - step)
    :duration (= ?duration 36000)
    :condition (and (at start (step_pending ?s)) (at start (genres_researched)) (at start (skills_researched)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (class_taken)))
  )

  (:durative-action practice_writing
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (class_taken)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (writing_practiced)))
  )

  (:durative-action write_book
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (writing_practiced)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (book_written)))
  )

  (:durative-action shop_book
    :parameters (?s - step)
    :duration (= ?duration 7776000)
    :condition (and (at start (step_pending ?s)) (at start (book_written)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (publisher_found)))
  )

  (:durative-action get_famous
    :parameters (?s - step)
    :duration (= ?duration 31536000)
    :condition (and (at start (step_pending ?s)) (at start (publisher_found)))
    :effect (and (at start (not (step_pending ?s))) (at end (step_done ?s)) (at end (dream_achieved)))
  )
)