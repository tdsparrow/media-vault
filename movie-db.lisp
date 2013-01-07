(defvar *movie-db* nil)

(defun make-movie (title length format)
  (list :title title :length length :format format))

(defun add-movie (movie)
  (push movie *movie-db*))

(defun dump-db ()
  (dolist (movie *movie-db*)
	(format t "~{~a:~10t~a~%~}~%" movie)))

(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-movie ()
  (make-movie
   (prompt-read "Title")
   (prompt-read "Length")
   (prompt-read "Format")))


