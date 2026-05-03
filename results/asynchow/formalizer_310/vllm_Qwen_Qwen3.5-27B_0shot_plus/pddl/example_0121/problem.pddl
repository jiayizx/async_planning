(define (problem sloth_learning_task)
  (:domain sloth_learning)
  
  (:init
    (open_browser_pending)
    (search_sloths_pending)
    (select_videos_pending)
    (select_websites_pending)
    (find_zoo_pending)
  )

  (:goal (and
    (open_browser_done)
    (search_sloths_done)
    (select_videos_done)
    (select_websites_done)
    (find_zoo_done)
  ))
)
