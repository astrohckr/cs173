rev [] = []
rev alist = last alist : rev (init alist)
