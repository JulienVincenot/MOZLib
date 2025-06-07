;;;; Testing NEtwork ****************


(listenudp 42000 128) ;; attend et imprime un (seul) paquet...
(sendudp "udp_from_lisp"  "127.0.0.1" 42000)

