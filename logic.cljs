;; 53 - ClojureScript - Frontend Web Lisp Runtime
(ns arena.logic)

(defonce state (atom {:players 0 :round 0}))

(defn join! [handle]
  (swap! state #(-> % (update :players inc) (assoc :last handle))))

(defn -main []
  (join! "cljs-arena")
  (.log js/console
        (str "ClojureScript: Frontend Web Lisp Runtime ready -> "
             (pr-str @state))))

(-main)
