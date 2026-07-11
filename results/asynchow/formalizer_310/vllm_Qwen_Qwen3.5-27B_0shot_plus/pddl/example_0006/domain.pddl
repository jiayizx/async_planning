(define (domain piano_lessons)
  (:requirements :durative-actions)
  
  (:predicates
    (read_articles_pending)
    (read_articles_done)
    (buy_piano_pending)
    (buy_piano_done)
    (practice_piano_pending)
    (practice_piano_done)
    (become_expert_pending)
    (become_expert_done)
    (create_ad_pending)
    (create_ad_done)
    (find_student_pending)
    (find_student_done)
  )

  (:durative-action do_read_articles
    :parameters ()
    :duration (= ?duration 2592000)
    :condition (and (at start (read_articles_pending)))
    :effect (and (at start (not (read_articles_pending))) (at end (read_articles_done)))
  )

  (:durative-action do_buy_piano
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (buy_piano_pending)))
    :effect (and (at start (not (buy_piano_pending))) (at end (buy_piano_done)))
  )

  (:durative-action do_practice_piano
    :parameters ()
    :duration (= ?duration 15552000)
    :condition (and (at start (practice_piano_pending)) (at start (buy_piano_done)))
    :effect (and (at start (not (practice_piano_pending))) (at end (practice_piano_done)))
  )

  (:durative-action do_become_expert
    :parameters ()
    :duration (= ?duration 7776000)
    :condition (and (at start (become_expert_pending)) (at start (practice_piano_done)))
    :effect (and (at start (not (become_expert_pending))) (at end (become_expert_done)))
  )

  (:durative-action do_create_ad
    :parameters ()
    :duration (= ?duration 3600)
    :condition (and (at start (create_ad_pending)) (at start (read_articles_done)) (at start (become_expert_done)))
    :effect (and (at start (not (create_ad_pending))) (at end (create_ad_done)))
  )

  (:durative-action do_find_student
    :parameters ()
    :duration (= ?duration 604800)
    :condition (and (at start (find_student_pending)) (at start (create_ad_done)))
    :effect (and (at start (not (find_student_pending))) (at end (find_student_done)))
  )
)