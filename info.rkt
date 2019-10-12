#lang info

; Mechanical translation of values from original theme

(define background     #( 90  84 117))
(define caret          #(248 248 240))
(define foreground     #(248 248 242))
(define invisibles     #(168 117 123))
(define line-highlight #(113 103 153))
(define selection      #(128 119 168))

(define comment:foreground #(230 192   0))

(define string:foreground #(255 234   0))

(define number:foreground #(197 163 255))

(define built-in-constant:foreground #(197 163 255))

(define user-defined-constant:foreground #(197 163 255))

(define keyword:foreground #(255 184 209))

(define storage:foreground #(255 184 209))

(define storage-type:font-style 'italic)
(define storage-type:foreground #(194 255 223))

(define class-name:font-style 'underline)
(define class-name:foreground #(255 243  82))

(define inherited-class:font-style/1 'italic)
(define inherited-class:font-style/2 'underline)
(define inherited-class:foreground   #(255 243  82))

(define function-name:foreground #(255 243  82))

(define function-argument:font-style 'italic)
(define function-argument:foreground #(255 133 127))

(define tag-name:foreground #(255 184 209))

(define tag-attribute:foreground #(255 243  82))

(define library-function:foreground #(194 255 223))

(define library-constant:foreground #(194 255 223))

(define library-class/type:font-style 'italic)
(define library-class/type:foreground #(194 255 223))

(define invalid:background #(249  38 114))
(define invalid:foreground #(248 248 240))

(define invalid-deprecated:background #(174 129 255))
(define invalid-deprecated:foreground #(248 248 240))

; Racket-aware definitions

(define deps '("base"))
(define colors `(; Colors
                 #;(drracket:syncheck:document-identifier    #f)
                 (drracket:syncheck:matching-identifiers   ,background)
                 #;(drracket:syncheck:tail-arrow             #f)
                 #;(drracket:syncheck:template-arrow         #f)
                 #;(drracket:syncheck:untacked               #f)
                 #;(drracket:syncheck:unused-identifier      #f)
                 #;(drracket:syncheck:var-arrow              #f)
                 (framework:basic-canvas-background        ,background)
                 (framework:default-text-color             ,foreground)
                 #;(framework:misspelled-text-color          #f)
                 #;(framework:paren-match-color              #f)

                 ; Styles
                 #;(drracket:check-syntax:both-obligation-style-pref  #f)
                 #;(drracket:check-syntax:free-variable               #f)
                 #;(drracket:check-syntax:imported                    #f)
                 #;(drracket:check-syntax:lexically-bound             #f)
                 #;(drracket:check-syntax:my-obligation-style-pref    #f)
                 #;(drracket:check-syntax:set!d                       #f)
                 #;(drracket:check-syntax:their-obligation-style-pref #f)
                 #;(drracket:check-syntax:unk-obligation-style-pref   #f)
                 #;(drracket:check-syntax:unused-require              #f)
                 (drracket:read-eval-print-loop:error-color         ,invalid:foreground
                                                                    #s(background ,invalid:background))
                 (drracket:read-eval-print-loop:out-color           ,string:foreground)
                 (drracket:read-eval-print-loop:value-color         ,built-in-constant:foreground)
                 (framework:syntax-color:scheme:comment             ,comment:foreground)
                 (framework:syntax-color:scheme:constant            ,built-in-constant:foreground)
                 (framework:syntax-color:scheme:error               ,invalid:foreground
                                                                    #s(background ,invalid:background))
                 (framework:syntax-color:scheme:hash-colon-keyword  ,keyword:foreground)
                 (framework:syntax-color:scheme:keyword             ,keyword:foreground)
                 (framework:syntax-color:scheme:other               ,foreground)
                 (framework:syntax-color:scheme:parenthesis         ,foreground)
                 (framework:syntax-color:scheme:string              ,string:foreground)
                 (framework:syntax-color:scheme:symbol              ,user-defined-constant:foreground)
                 #;(framework:syntax-color:scheme:text                #f)
                 #;(plt:module-language:test-coverage-off             #f)
                 #;(plt:module-language:test-coverage-on              #f)))
(define framework:color-schemes `(#hash((name . "Fairy Floss")
                                        (white-on-black-base? . #t)
                                        (colors . ,colors))))
