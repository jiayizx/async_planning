(define (domain learn_sloths)
  (:requirements :durative-actions)
  (:predicates
    (open_browser_pending)
    (open_browser_done)
    (search_pending)
    (search_done)
    (select_videos_pending)
    (select_videos_done)
    (select_websites_pending)
    (select_websites_done)
    (find_zoo_pending)
    (find_zoo_done)
  )

  (:durative-action open_browser
    :parameters ()
    :duration (= ?duration 25)
    :condition (at start (open_browser_pending))
    :effect (and (at start (not (open_browser_pending))) (at end (open_browser_done)))
  )

  (:durative-action do_search
    :parameters ()
    :duration (= ?duration 35)
    :condition (and (at start (search_pending)) (at start (open_browser_done)))
    :effect (and (at start (not (search_pending))) (at end (search_done)))
  )

  (:durative-action select_videos
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (select_videos_pending)) (at start (search_done)))
    :effect (and (at start (not (select_videos_pending))) (at end (select_videos_done)))
  )

  (:durative-action select_websites
    :parameters ()
    :duration (= ?duration 120)
    :condition (and (at start (select_websites_pending)) (at start (search_done)))
    :effect (and (at start (not (select_websites_pending))) (at end (select_websites_done)))
  )

  (:durative-action find_local_zoo
    :parameters ()
    :duration (= ?duration 300)
    :condition (and (at start (find_zoo_pending)) (at start (select_videos_done)) (at start (select_websites_done)))
    :effect (and (at start (not (find_zoo_pending))) (at end (find_zoo_done)))
  )
)
